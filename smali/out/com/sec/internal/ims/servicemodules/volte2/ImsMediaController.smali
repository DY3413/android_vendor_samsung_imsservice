.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
.super Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;
.source "ImsMediaController.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;


# static fields
.field public static final CAMERA_ID_DEFAULT:I = 0x2

.field public static final CAMERA_ID_FRONT:I = 0x1

.field public static final CAMERA_ID_REAR:I = 0x0

.field private static final EVENT_IMS_MEDIA_EVENT:I = 0x1

.field public static final EVENT_VCID_FAILURE:Ljava/lang/String; = "VCIDGeneralFailure"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCallSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/volte2/IVideoServiceEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDefaultCameraId:I

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mIsUsingCamera:Z

.field private mMediaEventHandler:Landroid/os/Handler;

.field private mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

.field private mPendingCameraId:I

.field private mPendingCameraRequestor:I

.field private mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# direct methods
.method static bridge synthetic -$$Nest$monImsMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onImsMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 52
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/helper/SimpleEventLog;)V
    .registers 6

    .line 77
    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;-><init>()V

    .line 56
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    .line 59
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaEventHandler:Landroid/os/Handler;

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    .line 64
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 65
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mIsUsingCamera:Z

    .line 78
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 80
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    .line 81
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 82
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getMediaSvcIntf()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    .line 83
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mContext:Landroid/content/Context;

    .line 85
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaEventHandler:Landroid/os/Handler;

    .line 101
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->init()V

    return-void
.end method

.method private getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .registers 4

    .line 640
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_6

    .line 641
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_6

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private getActiveExcept(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .registers 6

    .line 594
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_6

    .line 595
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    if-eq v2, p1, :cond_6

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_23

    goto :goto_6

    .line 599
    :cond_23
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    .line 600
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 605
    :cond_32
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_38

    .line 606
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    if-eq v2, p1, :cond_38

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_55

    goto :goto_38

    .line 610
    :cond_55
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    .line 611
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCameraUsingCall(I)Z

    move-result v2

    if-eqz v2, :cond_38

    return-object v1

    .line 616
    :cond_64
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6a
    :goto_6a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-nez v0, :cond_79

    goto :goto_6a

    .line 621
    :cond_79
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 622
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v1

    if-nez v1, :cond_88

    goto :goto_a3

    .line 626
    :cond_88
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    if-eq v1, p1, :cond_6a

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_97

    goto :goto_6a

    .line 630
    :cond_97
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6a

    return-object v0

    :cond_a3
    :goto_a3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .registers 3

    .line 584
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 585
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getUsingCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFrameSize()Ljava/lang/String;
    .registers 1

    .line 575
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 578
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    :cond_13
    const-string p0, "VGA"

    :goto_15
    return-object p0
.end method

.method private getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .registers 5

    .line 1029
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v0

    .line 1030
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_9

    .line 1031
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    if-ne v2, p1, :cond_9

    .line 1032
    monitor-exit v0

    return-object v1

    .line 1036
    :cond_1f
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_22
    move-exception p0

    .line 1037
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method private getSessionByIMSMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .registers 6

    .line 1135
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-nez v0, :cond_15

    goto :goto_6

    .line 1140
    :cond_15
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1141
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    .line 1142
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_47

    const/4 v1, 0x6

    if-ne v2, v1, :cond_47

    .line 1143
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Find conference call session : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 1147
    :cond_47
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v2

    if-ne v1, v2, :cond_6

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    return-object v0
.end method

.method private hasActiveCall()Z
    .registers 4

    .line 651
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_6

    .line 653
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_6

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_6

    .line 654
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_6

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0
.end method

.method private declared-synchronized logCamera(ZIIZ)V
    .registers 9

    monitor-enter p0

    .line 224
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mIsUsingCamera:Z

    if-eq v0, p1, :cond_59

    const-string v0, "null"

    if-ltz p2, :cond_1d

    .line 227
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 228
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 229
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_1d
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2a

    const-string/jumbo v3, "start"

    goto :goto_2d

    :cond_2a
    const-string/jumbo v3, "stop"

    :goto_2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Camera: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "), camera="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " noti="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 235
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mIsUsingCamera:Z
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_5b

    .line 237
    :cond_59
    monitor-exit p0

    return-void

    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 7

    monitor-enter p0

    .line 667
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    const/4 v3, -0x1

    if-ne v1, v2, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    move v1, v3

    .line 672
    :goto_27
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v4, :cond_30

    const/4 v1, 0x3

    .line 674
    :cond_30
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v4, :cond_39

    const/4 v1, 0x2

    .line 676
    :cond_39
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v4, :cond_42

    const/4 v1, 0x5

    .line 678
    :cond_42
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v4, :cond_4b

    const/4 v1, 0x6

    .line 680
    :cond_4b
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_DISABLED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v4, :cond_54

    const/4 v1, 0x7

    :cond_54
    if-ne v1, v3, :cond_5d

    const-string p1, "camera state not supported"

    .line 684
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_84

    .line 685
    monitor-exit p0

    return-void

    .line 688
    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_64
    if-ge v2, v0, :cond_7d

    .line 690
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_6e
    .catchall {:try_start_5d .. :try_end_6e} :catchall_84

    .line 692
    :try_start_6e
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v3, v4, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onCameraState(II)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_75} :catch_76
    .catchall {:try_start_6e .. :try_end_75} :catchall_84

    goto :goto_7a

    :catch_76
    move-exception v3

    .line 694
    :try_start_77
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 697
    :cond_7d
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_82
    .catchall {:try_start_77 .. :try_end_82} :catchall_84

    .line 698
    monitor-exit p0

    return-void

    :catchall_84
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onCameraFirstFrameReady(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 7

    monitor-enter p0

    .line 903
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCameraFirstFrameReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_29

    .line 906
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_30

    .line 908
    :try_start_1a
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v3, v4, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onCameraState(II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_22
    .catchall {:try_start_1a .. :try_end_21} :catchall_30

    goto :goto_26

    :catch_22
    move-exception v3

    .line 910
    :try_start_23
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 913
    :cond_29
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_30

    .line 914
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onCameraStopSuccess()V
    .registers 7

    .line 929
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    if-lez v0, :cond_4a

    .line 930
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CAMERA_STOP_SUCCESS: start camera for pending session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 933
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_45

    .line 934
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 935
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    invoke-interface {v1, v2, v3, v5}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startCamera(III)V

    .line 936
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    :cond_45
    const/4 v0, -0x1

    .line 938
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 939
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    :cond_4a
    return-void
.end method

.method private onCaptureEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;Z)V
    .registers 4

    .line 663
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureEvent: success="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized onChangePeerDimension(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 8

    monitor-enter p0

    .line 944
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangePeerDimension"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_30

    .line 947
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_37

    .line 949
    :try_start_19
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getHeight()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onChangePeerDimension(III)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_29
    .catchall {:try_start_19 .. :try_end_28} :catchall_37

    goto :goto_2d

    :catch_29
    move-exception v2

    .line 951
    :try_start_2a
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 954
    :cond_30
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_37

    .line 955
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onClearUsingCamera()V
    .registers 4

    .line 917
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v0

    .line 920
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_9

    const/4 v2, 0x0

    .line 922
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    goto :goto_9

    .line 925
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method private declared-synchronized onEmojiEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 8

    monitor-enter p0

    .line 768
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEmojiEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_27

    move v1, v4

    goto :goto_28

    :cond_27
    move v1, v3

    .line 773
    :goto_28
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_31

    const/4 v1, 0x1

    .line 775
    :cond_31
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_3a

    const/4 v1, 0x2

    .line 777
    :cond_3a
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_43

    const/4 v1, 0x3

    .line 779
    :cond_43
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_INFO_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_56

    .line 780
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result p1

    invoke-interface {v0, v4, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->restartEmoji(II)V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_86

    .line 781
    monitor-exit p0

    return-void

    :cond_56
    if-ne v1, v3, :cond_60

    :try_start_58
    const-string/jumbo p1, "unknown emoji event"

    .line 784
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_86

    .line 785
    monitor-exit p0

    return-void

    .line 788
    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_66
    if-ge v4, v0, :cond_7f

    .line 790
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_70
    .catchall {:try_start_60 .. :try_end_70} :catchall_86

    .line 792
    :try_start_70
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onEmojiState(II)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_77} :catch_78
    .catchall {:try_start_70 .. :try_end_77} :catchall_86

    goto :goto_7c

    :catch_78
    move-exception v2

    .line 794
    :try_start_79
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 797
    :cond_7f
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_86

    .line 798
    monitor-exit p0

    return-void

    :catchall_86
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onGeneralEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 6

    monitor-enter p0

    .line 801
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGeneralEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 804
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 805
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_32

    goto :goto_34

    :cond_32
    const-string v0, "VCIDGeneralFailure"

    .line 817
    :goto_34
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSessionByIMSMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 819
    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 821
    :cond_3d
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onHandleAudioEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 5

    .line 1041
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handling Audio Event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getAudioEvent()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_42

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_42

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_32

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_42

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_42

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_42

    const/16 v1, 0x20

    if-eq v0, v1, :cond_28

    goto :goto_54

    .line 1054
    :cond_28
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getAudioRtpStats()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V

    goto :goto_54

    .line 1058
    :cond_32
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    if-eqz p0, :cond_54

    .line 1059
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRtpLossRate()Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendRtpLossRate(ILcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    goto :goto_54

    .line 1048
    :cond_42
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getChannelId()I

    move-result v1

    .line 1049
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getAudioEvent()I

    move-result p1

    const/4 v2, 0x0

    .line 1048
    invoke-interface {p0, v0, v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendMediaEvent(IIII)V

    :cond_54
    :goto_54
    return-void
.end method

.method private onHandleDtmfEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 4

    .line 1122
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handling DTMF Event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getDtmfEvent()I

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_25

    .line 1125
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    if-eqz v0, :cond_25

    .line 1126
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getDtmfKey()I

    move-result p1

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;-><init>(IIII)V

    .line 1127
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->onCmcDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V

    :cond_25
    :goto_25
    return-void
.end method

.method private onHandleTextEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 5

    .line 1066
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handling Text Event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getTextEvent()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    goto :goto_3e

    .line 1075
    :cond_12
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getChannelId()I

    move-result v2

    .line 1076
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getTextEvent()I

    move-result p1

    .line 1075
    invoke-interface {p0, v0, v2, p1, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendMediaEvent(IIII)V

    goto :goto_3e

    .line 1069
    :cond_24
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    if-eqz v0, :cond_3e

    .line 1070
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRttText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRttTextLen()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;-><init>(ILjava/lang/String;I)V

    .line 1071
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onTextReceived(Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method private onHandleVideoEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Z
    .registers 8

    .line 1082
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handling Video Event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getVideoEvent()I

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_64

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1e

    const/16 v0, 0x75

    if-eq v1, v0, :cond_71

    packed-switch v1, :pswitch_data_94

    goto/16 :goto_93

    .line 1103
    :cond_1e
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v1

    .line 1104
    :try_start_21
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSessionByIMSMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 1105
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getDelayRinging()Z

    move-result v5

    if-eqz v5, :cond_5e

    const-string v5, "MT CRT 1st RTP got, set delay ringing false & notify Ringing"

    .line 1106
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setDelayRinging(Z)V

    .line 1108
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    if-eqz v0, :cond_4c

    .line 1109
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v2

    invoke-interface {v0, v5, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->notifyOnIncomingCall(II)V

    .line 1111
    :cond_4c
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v2

    .line 1112
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getVideoEvent()I

    move-result p1

    .line 1111
    invoke-interface {p0, v0, v2, p1, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendMediaEvent(IIII)V

    goto :goto_5f

    :cond_5e
    move v3, v4

    .line 1115
    :goto_5f
    monitor-exit v1

    return v3

    :catchall_61
    move-exception p0

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_21 .. :try_end_63} :catchall_61

    throw p0

    .line 1085
    :cond_64
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    if-eq v0, v4, :cond_71

    goto :goto_93

    .line 1093
    :cond_71
    :pswitch_71
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v1

    .line 1094
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getVideoEvent()I

    move-result v2

    .line 1093
    invoke-interface {p0, v0, v1, v2, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendMediaEvent(IIII)V

    .line 1095
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getVideoEvent()I

    move-result p0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_93

    .line 1096
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getVideoEvent()I

    move-result p0

    const/16 p1, 0x15

    if-eq p0, p1, :cond_93

    return v3

    :cond_93
    :goto_93
    return v4

    :pswitch_data_94
    .packed-switch 0x14
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
    .end packed-switch
.end method

.method private onImsMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 5

    .line 1278
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isAudioEvent()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1279
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onHandleAudioEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void

    .line 1282
    :cond_a
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isTextEvent()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1283
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onHandleTextEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void

    .line 1286
    :cond_14
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isGeneralEvent()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1288
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onGeneralEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void

    .line 1290
    :cond_1e
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isVideoEvent()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1291
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onHandleVideoEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Z

    move-result v0

    if-nez v0, :cond_35

    return-void

    .line 1294
    :cond_2b
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isDtmfEvent()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1295
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onHandleDtmfEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void

    .line 1300
    :cond_35
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v0

    .line 1301
    :try_start_38
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSessionByIMSMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 1302
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_8d

    if-nez v1, :cond_7b

    .line 1305
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsMediaEvent: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7a

    .line 1308
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v0, v1, :cond_7a

    .line 1309
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->stopCamera(I)V

    :cond_7a
    return-void

    .line 1315
    :cond_7b
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 1316
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 1318
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onNotifyIMSMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void

    :catchall_8d
    move-exception p0

    .line 1302
    :try_start_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0
.end method

.method private onNotifyIMSMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 7

    .line 1157
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsMediaEvent: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_c0

    goto/16 :goto_bb

    .line 1261
    :pswitch_3a
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onEmojiEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto/16 :goto_bb

    .line 1253
    :pswitch_3f
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onRecordEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto/16 :goto_bb

    .line 1244
    :pswitch_44
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoQuality(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto/16 :goto_bb

    .line 1236
    :pswitch_49
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onChangePeerDimension(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto/16 :goto_bb

    .line 1232
    :pswitch_4e
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto/16 :goto_bb

    .line 1225
    :pswitch_53
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onSwitchCamera()V

    .line 1226
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_bb

    .line 1219
    :pswitch_5a
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onClearUsingCamera()V

    .line 1220
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setStartCameraState(Z)V

    .line 1221
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_bb

    .line 1203
    :pswitch_64
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onClearUsingCamera()V

    .line 1204
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraStopSuccess()V

    .line 1205
    invoke-direct {p0, v2, v1, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 1206
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    .line 1207
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    if-eqz v1, :cond_7d

    .line 1208
    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;I)V

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->post(Ljava/lang/Runnable;)Z

    .line 1215
    :cond_7d
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_bb

    .line 1195
    :pswitch_81
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onClearUsingCamera()V

    .line 1196
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 1197
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setStartCameraState(Z)V

    .line 1198
    invoke-direct {p0, v3, v1, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 1199
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_bb

    .line 1191
    :pswitch_91
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraFirstFrameReady(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_bb

    .line 1187
    :pswitch_95
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoHold(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_bb

    .line 1183
    :pswitch_99
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoOrientationChanged(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_bb

    .line 1179
    :pswitch_9d
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoAvailable(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_bb

    .line 1175
    :pswitch_a1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoResumed(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_bb

    .line 1171
    :pswitch_a5
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoHold(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_bb

    .line 1167
    :pswitch_a9
    invoke-direct {p0, p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCaptureEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;Z)V

    goto :goto_bb

    .line 1161
    :pswitch_ad
    invoke-virtual {p2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setIsNearEnd(Z)V

    const/4 v0, 0x0

    .line 1162
    invoke-virtual {p2, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setFileName(Ljava/lang/String;)V

    .line 1163
    invoke-direct {p0, p2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCaptureEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;Z)V

    goto :goto_bb

    .line 1267
    :pswitch_b8
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onGeneralEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1274
    :goto_bb
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyImsMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_b8
        :pswitch_b8
        :pswitch_ad
        :pswitch_a9
        :pswitch_a5
        :pswitch_a1
        :pswitch_9d
        :pswitch_99
        :pswitch_95
        :pswitch_91
        :pswitch_81
        :pswitch_64
        :pswitch_5a
        :pswitch_53
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method

.method private declared-synchronized onRecordEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 8

    monitor-enter p0

    .line 733
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v2, :cond_27

    move v1, v3

    goto :goto_28

    :cond_27
    move v1, v4

    .line 738
    :goto_28
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_31

    const/4 v1, 0x1

    .line 740
    :cond_31
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE_NO_SPACE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_3a

    const/4 v1, 0x2

    .line 742
    :cond_3a
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_43

    const/4 v1, 0x3

    .line 744
    :cond_43
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_4c

    const/4 v1, 0x4

    .line 746
    :cond_4c
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_NO_SPACE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_55

    const/4 v1, 0x5

    :cond_55
    if-ne v1, v4, :cond_5f

    const-string/jumbo p1, "unknwon record event"

    .line 751
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_85

    .line 752
    monitor-exit p0

    return-void

    .line 755
    :cond_5f
    :try_start_5f
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_65
    if-ge v3, v0, :cond_7e

    .line 757
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_85

    .line 759
    :try_start_6f
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v2, v4, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onRecordState(II)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_76} :catch_77
    .catchall {:try_start_6f .. :try_end_76} :catchall_85

    goto :goto_7b

    :catch_77
    move-exception v2

    .line 761
    :try_start_78
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 764
    :cond_7e
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_83
    .catchall {:try_start_78 .. :try_end_83} :catchall_85

    .line 765
    monitor-exit p0

    return-void

    :catchall_85
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoAvailable(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 7

    monitor-enter p0

    .line 861
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onVideoAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_29

    .line 864
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_30

    .line 866
    :try_start_1a
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v3, v4, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoState(II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_22
    .catchall {:try_start_1a .. :try_end_21} :catchall_30

    goto :goto_26

    :catch_22
    move-exception v3

    .line 868
    :try_start_23
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 871
    :cond_29
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_30

    .line 872
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoHold(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 7

    monitor-enter p0

    .line 824
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onVideoHold or no far frame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isHeldCall()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_4c

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 826
    monitor-exit p0

    return-void

    .line 829
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 830
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_4c

    if-ne v0, v2, :cond_25

    .line 831
    monitor-exit p0

    return-void

    .line 834
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v0, :cond_45

    .line 836
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_4c

    .line 838
    :try_start_36
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v3, v4, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoState(II)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_4c

    goto :goto_42

    :catch_3e
    move-exception v3

    .line 840
    :try_start_3f
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 843
    :cond_45
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_4c

    .line 844
    monitor-exit p0

    return-void

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoOrientationChanged(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 6

    monitor-enter p0

    .line 889
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onVideoOrientationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_28

    .line 892
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_2f

    .line 894
    :try_start_19
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoOrientChanged(I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2f

    goto :goto_25

    :catch_21
    move-exception v2

    .line 896
    :try_start_22
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 899
    :cond_28
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2f

    .line 900
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoQuality(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 9

    monitor-enter p0

    .line 701
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoQuality "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_VERYPOOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_27

    move v1, v4

    goto :goto_28

    :cond_27
    move v1, v3

    .line 706
    :goto_28
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_POOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_31

    move v1, v4

    .line 708
    :cond_31
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_FAIR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_3a

    const/4 v1, 0x1

    .line 710
    :cond_3a
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_GOOD_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    const/4 v6, 0x2

    if-ne v2, v5, :cond_44

    move v1, v6

    .line 712
    :cond_44
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_MAX_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_4d

    goto :goto_4e

    :cond_4d
    move v6, v1

    :goto_4e
    if-ne v6, v3, :cond_58

    const-string/jumbo p1, "video quality not supported"

    .line 716
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_7e

    .line 717
    monitor-exit p0

    return-void

    .line 720
    :cond_58
    :try_start_58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_5e
    if-ge v4, v0, :cond_77

    .line 722
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_68
    .catchall {:try_start_58 .. :try_end_68} :catchall_7e

    .line 724
    :try_start_68
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v2

    invoke-interface {v1, v2, v6}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoQualityChanged(II)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6f} :catch_70
    .catchall {:try_start_68 .. :try_end_6f} :catchall_7e

    goto :goto_74

    :catch_70
    move-exception v1

    .line 726
    :try_start_71
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 729
    :cond_77
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_7e

    .line 730
    monitor-exit p0

    return-void

    :catchall_7e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoResumed(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 7

    monitor-enter p0

    .line 847
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onVideoResumed or far frame ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_29

    .line 850
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_30

    .line 852
    :try_start_19
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoState(II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_21} :catch_22
    .catchall {:try_start_19 .. :try_end_21} :catchall_30

    goto :goto_26

    :catch_22
    move-exception v2

    .line 854
    :try_start_23
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 857
    :cond_29
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_30

    .line 858
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bindToNetwork(Landroid/net/Network;)V
    .registers 5

    .line 569
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToNetwork() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->bindToNetwork(Landroid/net/Network;)V

    return-void
.end method

.method public declared-synchronized changeCameraCapabilities(III)V
    .registers 7

    monitor-enter p0

    .line 958
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "changeCameraCapabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_24

    .line 961
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_2b

    .line 963
    :try_start_19
    invoke-interface {v2, p1, p2, p3}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catchall {:try_start_19 .. :try_end_1c} :catchall_2b

    goto :goto_21

    :catch_1d
    move-exception v2

    .line 965
    :try_start_1e
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 968
    :cond_24
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2b

    .line 969
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deinitSurface(Z)V
    .registers 2

    .line 442
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->deinitSurface(Z)V

    return-void
.end method

.method public getCameraInfo(I)V
    .registers 2

    .line 411
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->getCameraInfo(I)V

    return-void
.end method

.method public getDefaultCameraId()I
    .registers 1

    .line 459
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    return p0
.end method

.method public getMaxZoom()V
    .registers 1

    .line 450
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->getMaxZoom()V

    return-void
.end method

.method public getZoom()V
    .registers 1

    .line 455
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->getZoom()V

    return-void
.end method

.method public holdVideo(I)V
    .registers 5

    .line 192
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdVideo: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 195
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 196
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 198
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3000002e

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v1, v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->holdVideo(II)V

    const/4 v0, 0x1

    .line 200
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->setVideoPause(IZ)V

    return-void
.end method

.method public init()V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->registerForMediaEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized onCallDowngraded(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .registers 7

    monitor-enter p0

    .line 876
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_22

    .line 878
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_29

    .line 880
    :try_start_12
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoState(II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1a} :catch_1b
    .catchall {:try_start_12 .. :try_end_1a} :catchall_29

    goto :goto_1f

    :catch_1b
    move-exception v2

    .line 882
    :try_start_1c
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 885
    :cond_22
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_29

    .line 886
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onChangeCallDataUsage(IJ)V
    .registers 7

    monitor-enter p0

    .line 1015
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeCallDataUsage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_33

    .line 1018
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_3a

    .line 1020
    :try_start_28
    invoke-interface {v2, p1, p2, p3}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onChangeCallDataUsage(IJ)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_2c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3a

    goto :goto_30

    :catch_2c
    move-exception v2

    .line 1022
    :try_start_2d
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1025
    :cond_33
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_3a

    .line 1026
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V
    .registers 6

    monitor-enter p0

    .line 972
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "receiveSessionModifyRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_25

    .line 975
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2c

    .line 977
    :try_start_1a
    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2c

    goto :goto_22

    :catch_1e
    move-exception v2

    .line 979
    :try_start_1f
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 982
    :cond_25
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_2c

    .line 983
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V
    .registers 8

    monitor-enter p0

    .line 987
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "receiveSessionModifyResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_25

    .line 990
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2c

    .line 992
    :try_start_1a
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2c

    goto :goto_22

    :catch_1e
    move-exception v2

    .line 994
    :try_start_1f
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 997
    :cond_25
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_2c

    .line 998
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerForMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .registers 5

    if-eqz p1, :cond_2a

    .line 114
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForMediaEvent: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v0

    .line 116
    :try_start_20
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v0

    goto :goto_32

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw p0

    .line 119
    :cond_2a
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerForMediaEvent: session null!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method public declared-synchronized registerForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V
    .registers 4

    monitor-enter p0

    .line 136
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForVideoServiceEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 138
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestCallDataUsage()V
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->requestCallDataUsage()V

    return-void
.end method

.method public resetCameraId()V
    .registers 3

    .line 404
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetCameraId:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 405
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    .line 406
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->resetCameraId()V

    return-void
.end method

.method public resumeVideo(I)V
    .registers 5

    .line 204
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeVideo: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 207
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 208
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 210
    :goto_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3000002f

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->resumeVideo(II)V

    return-void
.end method

.method public declared-synchronized sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    monitor-enter p0

    .line 539
    :try_start_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->hasActiveCall()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 540
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendGeneralBundleEvent - event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 543
    :cond_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendGeneralEvent(IIILjava/lang/String;)V
    .registers 8

    monitor-enter p0

    .line 527
    :try_start_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 529
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendGeneralEvent - event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", arg1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", arg2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", arg3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendGeneralEvent(IIILjava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 532
    :cond_3b
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendLiveVideo(I)V
    .registers 4

    .line 550
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendStillImage() disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendStillImage(ILjava/lang/String;ILjava/lang/String;I)V
    .registers 7

    .line 556
    sget-object p3, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendStillImage() enable filePath: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " frameSize: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 p3, 0x1

    invoke-interface {p0, p1, p3, p2, p4}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .registers 4

    .line 149
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    .line 150
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setCamera(I)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_22

    .line 152
    :catch_c
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid for ImsVideoCall : setCamera- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-void
.end method

.method public setCameraEffect(I)V
    .registers 5

    .line 563
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCameraEffect() value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setCameraEffect(I)V

    return-void
.end method

.method public setDeviceOrientation(I)V
    .registers 2

    .line 178
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setOrientation(I)V

    return-void
.end method

.method public setDisplaySurface(ILandroid/view/Surface;)V
    .registers 6

    .line 163
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 165
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setDisplaySurface(Landroid/view/Surface;)V

    .line 167
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3d

    .line 168
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getConfSessionId()I

    move-result v1

    if-lez v1, :cond_3d

    .line 169
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getConfSessionId()I

    move-result p1

    .line 170
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplaySurface sessionId changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3d
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setDisplaySurface(ILjava/lang/Object;I)V

    return-void
.end method

.method public setPreviewResolution(II)V
    .registers 6

    .line 215
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

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

    .line 216
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setPreviewResolution(II)V

    return-void
.end method

.method public setPreviewSurface(ILandroid/view/Surface;)V
    .registers 4

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setPreviewSurface(ILjava/lang/Object;I)V

    return-void
.end method

.method public declared-synchronized setVideoPause(IZ)V
    .registers 6

    monitor-enter p0

    .line 1001
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoPause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_34

    .line 1004
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_3b

    .line 1006
    :try_start_29
    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->setVideoPause(IZ)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2d
    .catchall {:try_start_29 .. :try_end_2c} :catchall_3b

    goto :goto_31

    :catch_2d
    move-exception v2

    .line 1008
    :try_start_2e
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1011
    :cond_34
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_3b

    .line 1012
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setZoom(F)V
    .registers 2

    .line 183
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setZoom(F)V

    return-void
.end method

.method public startCamera(II)V
    .registers 10

    .line 248
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCamera: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " camera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-gez p1, :cond_4a

    .line 252
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 254
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startCamera: using active sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_4a
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_9f

    .line 265
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    if-ne v5, p1, :cond_74

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCamera: camera already active for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    if-ne p1, v4, :cond_73

    .line 268
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    :cond_73
    return-void

    .line 273
    :cond_74
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v5, v6, :cond_80

    .line 274
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopCamera()V

    goto :goto_9f

    .line 276
    :cond_80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startCamera: camera in use. pending sesssion "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 278
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    if-eqz v1, :cond_9e

    .line 280
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    :cond_9e
    return-void

    .line 287
    :cond_9f
    :goto_9f
    iput v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 288
    iput v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_aa

    if-ltz p2, :cond_aa

    .line 291
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    :cond_aa
    const/4 v0, 0x1

    if-eqz v1, :cond_b0

    .line 295
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 299
    :cond_b0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_bb

    .line 301
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    goto :goto_bc

    :cond_bb
    move v1, v3

    .line 304
    :goto_bc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v4, 0x3000002c

    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 305
    invoke-direct {p0, v0, p1, p2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 306
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    invoke-interface {p2, v1, p1, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startCamera(III)V

    return-void
.end method

.method public startCamera(Landroid/view/Surface;)V
    .registers 5

    .line 241
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCamera:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 243
    invoke-direct {p0, v2, v0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startCamera(Landroid/view/Surface;)V

    return-void
.end method

.method public startCameraForActiveExcept(I)V
    .registers 5

    .line 310
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCameraForActiveExcept: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveExcept(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_25

    const-string p1, "active VT session found"

    .line 314
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startLastUsedCamera()V

    :cond_25
    return-void
.end method

.method public declared-synchronized startEmoji(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 506
    :try_start_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 508
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-interface {v1, v2, v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startEmoji(IILjava/lang/String;)V

    goto :goto_22

    .line 510
    :cond_15
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 511
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 512
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onEmojiEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 514
    :goto_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startRecord(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 468
    :try_start_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_16

    .line 470
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 471
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 472
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onRecordEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_5f

    .line 473
    monitor-exit p0

    return-void

    .line 477
    :cond_16
    :try_start_16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 478
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid filepath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_5f

    .line 479
    monitor-exit p0

    return-void

    .line 482
    :cond_34
    :try_start_34
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    :cond_46
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    :goto_4a
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 486
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-interface {v1, v2, v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startRecord(IILjava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_34 .. :try_end_5d} :catchall_5f

    .line 487
    monitor-exit p0

    return-void

    :catchall_5f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startRender(Z)V
    .registers 2

    .line 419
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startRender(Z)V

    return-void
.end method

.method public startVideoRenderer(Landroid/view/Surface;)V
    .registers 2

    .line 424
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startVideoRenderer(Landroid/view/Surface;)V

    return-void
.end method

.method public stopActiveCamera()V
    .registers 3

    .line 333
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopActiveCamera:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_16

    const-string v1, "active VT session found"

    .line 337
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopCamera()V

    :cond_16
    return-void
.end method

.method public stopCamera()V
    .registers 5

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 323
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 324
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    goto :goto_8

    .line 326
    :cond_1c
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopCamera:"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 327
    invoke-direct {p0, v1, v0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3000002d

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 329
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopCamera(I)V

    return-void
.end method

.method public stopCamera(I)V
    .registers 8

    .line 343
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopCamera: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 346
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getUsingCamera()Z

    move-result v1

    if-nez v1, :cond_29

    const-string p0, "Do not call stopCamera multiple times"

    .line 347
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 351
    :cond_29
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    const/4 v2, -0x1

    if-ne v1, p1, :cond_43

    .line 352
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 353
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 354
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    if-eq v1, p1, :cond_43

    const-string/jumbo p0, "stopCamera: cancel pending camera."

    .line 355
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 361
    :cond_43
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v1

    :cond_4b
    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 362
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 363
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    if-ne v5, p1, :cond_4b

    .line 364
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    goto :goto_4b

    .line 368
    :cond_65
    invoke-direct {p0, v1, p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 369
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopCamera(I)V

    .line 371
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    if-lez p1, :cond_b6

    .line 372
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopCamera: start camera for pending session "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_b2

    .line 375
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v3, :cond_b2

    .line 376
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0, v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    invoke-interface {v0, v1, v3, v5}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startCamera(III)V

    .line 378
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 380
    :cond_b2
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 381
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    :cond_b6
    return-void
.end method

.method public declared-synchronized stopEmoji(I)V
    .registers 5

    monitor-enter p0

    .line 518
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopEmoji : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopEmoji(II)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 520
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopRecord()V
    .registers 4

    monitor-enter p0

    .line 491
    :try_start_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 493
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopRecord(II)V

    goto :goto_22

    .line 495
    :cond_15
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 496
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 497
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onRecordEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 499
    :goto_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopVideoRenderer()V
    .registers 1

    .line 429
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopVideoRenderer()V

    return-void
.end method

.method public swipeVideoSurface()V
    .registers 1

    .line 437
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->swipeVideoSurface()V

    return-void
.end method

.method public switchCamera()V
    .registers 4

    .line 387
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchCamera: current camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 390
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_38

    .line 391
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    const/4 v0, 0x0

    .line 392
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    goto :goto_32

    .line 394
    :cond_30
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    .line 396
    :goto_32
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->switchCamera()V

    goto :goto_3e

    :cond_38
    const-string/jumbo p0, "switchCamera: skip because incoming vtcall state"

    .line 398
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method public unregisterForMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .registers 5

    if-eqz p1, :cond_2a

    .line 125
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterForMediaEvent: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v0

    .line 127
    :try_start_20
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v0

    goto :goto_32

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw p0

    .line 130
    :cond_2a
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterForMediaEvent: session null!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method public declared-synchronized unregisterForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V
    .registers 4

    monitor-enter p0

    .line 142
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForVideoServiceEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 144
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method
