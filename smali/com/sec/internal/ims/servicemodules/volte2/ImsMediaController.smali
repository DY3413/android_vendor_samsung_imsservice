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
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onImsMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;-><init>()V

    .line 54
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    .line 57
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaEventHandler:Landroid/os/Handler;

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    .line 62
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 63
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mIsUsingCamera:Z

    .line 75
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 77
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 79
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getMediaSvcIntf()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    .line 81
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaEventHandler:Landroid/os/Handler;

    .line 97
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->init()V

    return-void
.end method

.method private getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 639
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getActiveExcept(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 4

    .line 593
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    if-eq v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 598
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    .line 599
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_3

    .line 605
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    if-eq v2, p1, :cond_3

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_4

    goto :goto_1

    .line 609
    :cond_4
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    .line 610
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCameraUsingCall(I)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 615
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-nez v0, :cond_7

    goto :goto_2

    .line 620
    :cond_7
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 621
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 625
    :cond_8
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    if-eq v1, p1, :cond_6

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_9

    goto :goto_2

    .line 629
    :cond_9
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    return-object v0

    :cond_a
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2

    .line 583
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 584
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getUsingCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFrameSize()Ljava/lang/String;
    .locals 0

    .line 574
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "VGA"

    :goto_0
    return-object p0
.end method

.method private getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 1028
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v0

    .line 1029
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1030
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1031
    monitor-exit v0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    .line 1035
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1036
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getSessionByIMSMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 4

    .line 1134
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1139
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1140
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    .line 1141
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_2

    const/4 v1, 0x6

    if-ne v2, v1, :cond_2

    .line 1142
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

    goto :goto_1

    .line 1146
    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private hasActiveCall()Z
    .locals 3

    .line 650
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_0

    .line 653
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private declared-synchronized logCamera(ZIIZ)V
    .locals 4

    monitor-enter p0

    .line 220
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mIsUsingCamera:Z

    if-eq v0, p1, :cond_2

    const-string v0, "null"

    if-ltz p2, :cond_0

    .line 223
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string/jumbo v3, "start"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "stop"

    :goto_0
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

    .line 231
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mIsUsingCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5

    monitor-enter p0

    .line 666
    :try_start_0
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

    .line 669
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    const/4 v3, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 671
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v4, :cond_1

    const/4 v1, 0x3

    .line 673
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v4, :cond_2

    const/4 v1, 0x2

    .line 675
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v4, :cond_3

    const/4 v1, 0x5

    .line 677
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v4, :cond_4

    const/4 v1, 0x6

    .line 679
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_DISABLED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v4, :cond_5

    const/4 v1, 0x7

    :cond_5
    if-ne v1, v3, :cond_6

    const-string p1, "camera state not supported"

    .line 683
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    monitor-exit p0

    return-void

    .line 687
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_7

    .line 689
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v3, v4, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onCameraState(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 693
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 696
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 697
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onCameraFirstFrameReady(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5

    monitor-enter p0

    .line 902
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCameraFirstFrameReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 905
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v3, v4, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onCameraState(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 909
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 912
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 913
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onCameraStopSuccess()V
    .locals 6

    .line 928
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    if-lez v0, :cond_1

    .line 929
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

    .line 931
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_0

    .line 933
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 934
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    invoke-interface {v1, v2, v3, v5}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startCamera(III)V

    .line 935
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    :cond_0
    const/4 v0, -0x1

    .line 937
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 938
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    :cond_1
    return-void
.end method

.method private onCaptureEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;Z)V
    .locals 1

    .line 662
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
    .locals 6

    monitor-enter p0

    .line 943
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChangePeerDimension"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 946
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getHeight()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onChangePeerDimension(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 950
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 953
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 954
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onClearUsingCamera()V
    .locals 3

    .line 916
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v0

    .line 919
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 921
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    goto :goto_0

    .line 924
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

.method private declared-synchronized onEmojiEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 6

    monitor-enter p0

    .line 767
    :try_start_0
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

    .line 770
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 772
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_1

    const/4 v1, 0x1

    .line 774
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_2

    const/4 v1, 0x2

    .line 776
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_3

    const/4 v1, 0x3

    .line 778
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_INFO_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_4

    .line 779
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result p1

    invoke-interface {v0, v4, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->restartEmoji(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    monitor-exit p0

    return-void

    :cond_4
    if-ne v1, v3, :cond_5

    :try_start_1
    const-string/jumbo p1, "unknown emoji event"

    .line 783
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    monitor-exit p0

    return-void

    .line 787
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_6

    .line 789
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 791
    :try_start_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onEmojiState(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 793
    :try_start_4
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 796
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 797
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onGeneralEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 4

    monitor-enter p0

    .line 800
    :try_start_0
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

    .line 803
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 804
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "VCIDGeneralFailure"

    .line 816
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSessionByIMSMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 818
    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onHandleAudioEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 3

    .line 1040
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handling Audio Event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getAudioEvent()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1053
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getAudioRtpStats()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V

    goto :goto_0

    .line 1057
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    if-eqz p0, :cond_3

    .line 1058
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRtpLossRate()Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendRtpLossRate(ILcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    goto :goto_0

    .line 1047
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getChannelId()I

    move-result v1

    .line 1048
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getAudioEvent()I

    move-result p1

    const/4 v2, 0x0

    .line 1047
    invoke-interface {p0, v0, v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendMediaEvent(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onHandleDtmfEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 2

    .line 1121
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handling DTMF Event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getDtmfEvent()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    if-eqz v0, :cond_1

    .line 1125
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getDtmfKey()I

    move-result p1

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;-><init>(IIII)V

    .line 1126
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->onCmcDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onHandleTextEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 3

    .line 1065
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handling Text Event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getTextEvent()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1074
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getChannelId()I

    move-result v2

    .line 1075
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getTextEvent()I

    move-result p1

    .line 1074
    invoke-interface {p0, v0, v2, p1, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendMediaEvent(IIII)V

    goto :goto_0

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    if-eqz v0, :cond_2

    .line 1069
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRttText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRttTextLen()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;-><init>(ILjava/lang/String;I)V

    .line 1070
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onTextReceived(Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onHandleVideoEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Z
    .locals 6

    .line 1081
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handling Video Event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getVideoEvent()I

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    const/16 v0, 0x75

    if-eq v1, v0, :cond_4

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 1102
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v1

    .line 1103
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSessionByIMSMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1104
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getDelayRinging()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "MT CRT 1st RTP got, set delay ringing false & notify Ringing"

    .line 1105
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setDelayRinging(Z)V

    .line 1107
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    if-eqz v0, :cond_1

    .line 1108
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v2

    invoke-interface {v0, v5, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->notifyOnIncomingCall(II)V

    .line 1110
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v2

    .line 1111
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getVideoEvent()I

    move-result p1

    .line 1110
    invoke-interface {p0, v0, v2, p1, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendMediaEvent(IIII)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1114
    :goto_0
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1084
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    if-eq v0, v4, :cond_4

    goto :goto_1

    .line 1092
    :cond_4
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v1

    .line 1093
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getVideoEvent()I

    move-result v2

    .line 1092
    invoke-interface {p0, v0, v1, v2, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendMediaEvent(IIII)V

    .line 1094
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getVideoEvent()I

    move-result p0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_5

    .line 1095
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getVideoEvent()I

    move-result p0

    const/16 p1, 0x15

    if-eq p0, p1, :cond_5

    return v3

    :cond_5
    :goto_1
    return v4

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onImsMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 3

    .line 1277
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isAudioEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onHandleAudioEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void

    .line 1281
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isTextEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1282
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onHandleTextEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void

    .line 1285
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isGeneralEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1287
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onGeneralEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void

    .line 1289
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isVideoEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1290
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onHandleVideoEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 1293
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isDtmfEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1294
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onHandleDtmfEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void

    .line 1299
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v0

    .line 1300
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSessionByIMSMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 1301
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_6

    .line 1304
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

    .line 1306
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 1307
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v0, v1, :cond_5

    .line 1308
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->stopCamera(I)V

    :cond_5
    return-void

    .line 1314
    :cond_6
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 1315
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 1317
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onNotifyIMSMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1301
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private onNotifyIMSMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 4

    .line 1156
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

    .line 1158
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1260
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onEmojiEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto/16 :goto_0

    .line 1252
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onRecordEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto/16 :goto_0

    .line 1243
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoQuality(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto/16 :goto_0

    .line 1235
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onChangePeerDimension(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto/16 :goto_0

    .line 1231
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto/16 :goto_0

    .line 1224
    :pswitch_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onSwitchCamera()V

    .line 1225
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_0

    .line 1218
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onClearUsingCamera()V

    .line 1219
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setStartCameraState(Z)V

    .line 1220
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_0

    .line 1202
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onClearUsingCamera()V

    .line 1203
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraStopSuccess()V

    .line 1204
    invoke-direct {p0, v2, v1, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 1205
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    .line 1206
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    if-eqz v1, :cond_0

    .line 1207
    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;I)V

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->post(Ljava/lang/Runnable;)Z

    .line 1214
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_0

    .line 1194
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onClearUsingCamera()V

    .line 1195
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 1196
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setStartCameraState(Z)V

    .line 1197
    invoke-direct {p0, v3, v1, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 1198
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_0

    .line 1190
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCameraFirstFrameReady(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_0

    .line 1186
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoHold(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_0

    .line 1182
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoOrientationChanged(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_0

    .line 1178
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoAvailable(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_0

    .line 1174
    :pswitch_d
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoResumed(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_0

    .line 1170
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onVideoHold(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_0

    .line 1166
    :pswitch_f
    invoke-direct {p0, p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCaptureEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;Z)V

    goto :goto_0

    .line 1160
    :pswitch_10
    invoke-virtual {p2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setIsNearEnd(Z)V

    const/4 v0, 0x0

    .line 1161
    invoke-virtual {p2, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setFileName(Ljava/lang/String;)V

    .line 1162
    invoke-direct {p0, p2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onCaptureEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;Z)V

    goto :goto_0

    .line 1266
    :pswitch_11
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onGeneralEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 1273
    :goto_0
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyImsMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
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
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized onRecordEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 6

    monitor-enter p0

    .line 732
    :try_start_0
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

    .line 735
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 737
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_1

    const/4 v1, 0x1

    .line 739
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE_NO_SPACE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_2

    const/4 v1, 0x2

    .line 741
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_3

    const/4 v1, 0x3

    .line 743
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_4

    const/4 v1, 0x4

    .line 745
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_NO_SPACE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_5

    const/4 v1, 0x5

    :cond_5
    if-ne v1, v4, :cond_6

    const-string/jumbo p1, "unknwon record event"

    .line 750
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    monitor-exit p0

    return-void

    .line 754
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_1
    if-ge v3, v0, :cond_7

    .line 756
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v2, v4, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onRecordState(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 760
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 763
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 764
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoAvailable(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5

    monitor-enter p0

    .line 860
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onVideoAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 863
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v3, v4, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoState(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 867
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 870
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 871
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoHold(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5

    monitor-enter p0

    .line 823
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onVideoHold or no far frame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isHeldCall()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 825
    monitor-exit p0

    return-void

    .line 828
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 829
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_1

    .line 830
    monitor-exit p0

    return-void

    .line 833
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 835
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 837
    :try_start_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v3, v4, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoState(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 839
    :try_start_4
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 842
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 843
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoOrientationChanged(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 4

    monitor-enter p0

    .line 888
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onVideoOrientationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 891
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoOrientChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 895
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 898
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 899
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoQuality(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 7

    monitor-enter p0

    .line 700
    :try_start_0
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

    .line 703
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_VERYPOOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 705
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_POOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_1

    move v1, v4

    .line 707
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_FAIR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_2

    const/4 v1, 0x1

    .line 709
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_GOOD_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    const/4 v6, 0x2

    if-ne v2, v5, :cond_3

    move v1, v6

    .line 711
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_MAX_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    if-ne v2, v5, :cond_4

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_1
    if-ne v6, v3, :cond_5

    const-string/jumbo p1, "video quality not supported"

    .line 715
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    monitor-exit p0

    return-void

    .line 719
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_2
    if-ge v4, v0, :cond_6

    .line 721
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v2

    invoke-interface {v1, v2, v6}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoQualityChanged(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 725
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 728
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 729
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVideoResumed(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5

    monitor-enter p0

    .line 846
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onVideoResumed or far frame ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 849
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoState(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 853
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 856
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 857
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bindToNetwork(Landroid/net/Network;)V
    .locals 3

    .line 568
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToNetwork() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->bindToNetwork(Landroid/net/Network;)V

    return-void
.end method

.method public declared-synchronized changeCameraCapabilities(III)V
    .locals 3

    monitor-enter p0

    .line 957
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "changeCameraCapabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 960
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 964
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 967
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 968
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deinitSurface(Z)V
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->deinitSurface(Z)V

    return-void
.end method

.method public getCameraInfo(I)V
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->getCameraInfo(I)V

    return-void
.end method

.method public getDefaultCameraId()I
    .locals 0

    .line 455
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    return p0
.end method

.method public getMaxZoom()V
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->getMaxZoom()V

    return-void
.end method

.method public getZoom()V
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->getZoom()V

    return-void
.end method

.method public holdVideo(I)V
    .locals 4

    .line 188
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdVideo: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x3000002e

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v1, v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->holdVideo(II)V

    const/4 v0, 0x1

    .line 196
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->setVideoPause(IZ)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->registerForMediaEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized onCallDowngraded(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5

    monitor-enter p0

    .line 875
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 877
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onVideoState(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 881
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 885
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onChangeCallDataUsage(IJ)V
    .locals 3

    monitor-enter p0

    .line 1014
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeCallDataUsage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1017
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onChangeCallDataUsage(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1021
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1024
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1025
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V
    .locals 3

    monitor-enter p0

    .line 971
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "receiveSessionModifyRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 974
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    :try_start_1
    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 978
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 981
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 982
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 3

    monitor-enter p0

    .line 986
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "receiveSessionModifyResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 989
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    :try_start_1
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 993
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 996
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 997
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerForMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 110
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForMediaEvent: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 115
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "registerForMediaEvent: session null!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public declared-synchronized registerForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V
    .locals 2

    monitor-enter p0

    .line 132
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerForVideoServiceEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestCallDataUsage()V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->requestCallDataUsage()V

    return-void
.end method

.method public resetCameraId()V
    .locals 2

    .line 400
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resetCameraId:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 401
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    .line 402
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->resetCameraId()V

    return-void
.end method

.method public resumeVideo(I)V
    .locals 4

    .line 200
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeVideo: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x3000002f

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 207
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->resumeVideo(II)V

    return-void
.end method

.method public declared-synchronized sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    .line 538
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->hasActiveCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendGeneralBundleEvent - event: "

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

    .line 540
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendGeneralEvent(IIILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 526
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendGeneralEvent - event: "

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

    .line 529
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendGeneralEvent(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendLiveVideo(I)V
    .locals 2

    .line 549
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "sendStillImage() disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendStillImage(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 1

    .line 555
    sget-object p3, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendStillImage() enable filePath: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " frameSize: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 p3, 0x1

    invoke-interface {p0, p1, p3, p2, p4}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 2

    .line 145
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    .line 146
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setCamera(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid for ImsVideoCall : setCamera- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 3

    .line 562
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraEffect() value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setCameraEffect(I)V

    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setOrientation(I)V

    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 1

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setDisplaySurface(Ljava/lang/Object;I)V

    return-void
.end method

.method public setDisplaySurfaceForPhoneId(ILandroid/view/Surface;)V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setDisplaySurface(Ljava/lang/Object;I)V

    return-void
.end method

.method public setPreviewResolution(II)V
    .locals 3

    .line 211
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

    .line 212
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setPreviewResolution(II)V

    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 1

    .line 154
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setPreviewSurface(Ljava/lang/Object;I)V

    return-void
.end method

.method public setPreviewSurfaceForPhoneId(ILandroid/view/Surface;)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setPreviewSurface(Ljava/lang/Object;I)V

    return-void
.end method

.method public declared-synchronized setVideoPause(IZ)V
    .locals 3

    monitor-enter p0

    .line 1000
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoPause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1003
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    :try_start_1
    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->setVideoPause(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1007
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1010
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1011
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setZoom(F)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->setZoom(F)V

    return-void
.end method

.method public startCamera(II)V
    .locals 7

    .line 244
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

    .line 245
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-gez p1, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 250
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    .line 251
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

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_5

    .line 261
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCamera: camera already active for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    if-ne p1, v4, :cond_1

    .line 264
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    :cond_1
    return-void

    .line 269
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v5, v6, :cond_3

    .line 270
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopCamera()V

    goto :goto_0

    .line 272
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startCamera: camera in use. pending sesssion "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 274
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    if-eqz v1, :cond_4

    .line 276
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    :cond_4
    return-void

    .line 283
    :cond_5
    :goto_0
    iput v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 284
    iput v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    if-ltz p2, :cond_6

    .line 287
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    :cond_6
    const/4 v0, 0x1

    if-eqz v1, :cond_7

    .line 291
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 295
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 297
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    goto :goto_1

    :cond_8
    move v1, v3

    :goto_1
    const v2, 0x3000002c

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 301
    invoke-direct {p0, v0, p1, p2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 302
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    invoke-interface {p2, v1, p1, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startCamera(III)V

    return-void
.end method

.method public startCamera(Landroid/view/Surface;)V
    .locals 3

    .line 237
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCamera:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 239
    invoke-direct {p0, v0, v1, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startCamera(Landroid/view/Surface;)V

    return-void
.end method

.method public startCameraForActiveExcept(I)V
    .locals 3

    .line 306
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCameraForActiveExcept: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveExcept(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "active VT session found"

    .line 310
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startLastUsedCamera()V

    :cond_0
    return-void
.end method

.method public declared-synchronized startEmoji(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 505
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-interface {v1, v2, v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startEmoji(IILjava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_0
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 510
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 511
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onEmojiEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startRecord(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 464
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 466
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 467
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 468
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onRecordEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    monitor-exit p0

    return-void

    .line 473
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VideoCall"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 474
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/VideoCall"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v1, ".mp4"

    .line 476
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 477
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 481
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 485
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-interface {v1, v2, v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startRecord(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startRender(Z)V
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startRender(Z)V

    return-void
.end method

.method public startVideoRenderer(Landroid/view/Surface;)V
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startVideoRenderer(Landroid/view/Surface;)V

    return-void
.end method

.method public stopActiveCamera()V
    .locals 2

    .line 329
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopActiveCamera:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "active VT session found"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopCamera()V

    :cond_0
    return-void
.end method

.method public stopCamera()V
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 319
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 320
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    goto :goto_0

    .line 322
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopCamera:"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 323
    invoke-direct {p0, v1, v0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    const v0, 0x3000002d

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 325
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopCamera(I)V

    return-void
.end method

.method public stopCamera(I)V
    .locals 6

    .line 339
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopCamera: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getUsingCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Do not call stopCamera multiple times"

    .line 343
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 347
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    const/4 v2, -0x1

    if-ne v1, p1, :cond_1

    .line 348
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 349
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 350
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    if-eq v1, p1, :cond_1

    const-string/jumbo p0, "stopCamera: cancel pending camera."

    .line 351
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 358
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 359
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 360
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    goto :goto_0

    .line 364
    :cond_3
    invoke-direct {p0, v1, p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 365
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopCamera(I)V

    .line 367
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    if-lez p1, :cond_5

    .line 368
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

    .line 370
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 371
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v3, :cond_4

    .line 372
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0, v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->logCamera(ZIIZ)V

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    invoke-interface {v0, v1, v3, v5}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startCamera(III)V

    .line 374
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUsingCamera(Z)V

    .line 376
    :cond_4
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraRequestor:I

    .line 377
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mPendingCameraId:I

    :cond_5
    return-void
.end method

.method public declared-synchronized stopEmoji(I)V
    .locals 3

    monitor-enter p0

    .line 517
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopEmoji : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopEmoji(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopRecord()V
    .locals 3

    monitor-enter p0

    .line 490
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getActiveCall()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopRecord(II)V

    goto :goto_0

    .line 494
    :cond_0
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 495
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 496
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->onRecordEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopVideoRenderer()V
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopVideoRenderer()V

    return-void
.end method

.method public swipeVideoSurface()V
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->swipeVideoSurface()V

    return-void
.end method

.method public switchCamera()V
    .locals 3

    .line 383
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

    .line 385
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->getCameraUsingSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_1

    .line 387
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 388
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    goto :goto_0

    .line 390
    :cond_0
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mDefaultCameraId:I

    .line 392
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->switchCamera()V

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "switchCamera: skip because incoming vtcall state"

    .line 394
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public unregisterForMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 121
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

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallSessions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 126
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterForMediaEvent: session null!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public declared-synchronized unregisterForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V
    .locals 2

    monitor-enter p0

    .line 138
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForVideoServiceEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
