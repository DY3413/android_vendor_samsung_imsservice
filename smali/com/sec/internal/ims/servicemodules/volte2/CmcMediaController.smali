.class public Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;
.super Ljava/lang/Object;
.source "CmcMediaController.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;


# static fields
.field private static final EVENT_CMC_MEDIA_EVENT:I = 0xb

.field private static final EVENT_CMC_RECORDER_START:I = 0x2

.field private static final EVENT_CMC_RECORDER_STOP:I = 0x3

.field private static final EVENT_RETRY_CREATE_RELAY_CHANNEL:I = 0xc

.field private static final LOG_TAG:Ljava/lang/String; = "CmcMediaController"


# instance fields
.field private mCmcMediaEventHandler:Landroid/os/Handler;

.field private mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

.field private final mCmcRecordingCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mExtStream:I

.field protected mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

.field private mIntStream:I

.field private mPendingRelayChannelCreation:Z

.field private mRelayChannel:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;

.field private mRelayDirection:I

.field private mRelayStreamMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;",
            ">;"
        }
    .end annotation
.end field

.field private mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCmcMediaIntf(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventLog(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Lcom/sec/internal/helper/SimpleEventLog;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingRelayChannelCreation(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mPendingRelayChannelCreation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRelayStreamMap(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSession(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monImsRelayEvent(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->onImsRelayEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetCreateRelayChannelParams(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->resetCreateRelayChannelParams()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcRecordingCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaEventHandler:Landroid/os/Handler;

    .line 53
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 55
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    const/4 v1, -0x1

    .line 56
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mExtStream:I

    .line 57
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mIntStream:I

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayDirection:I

    .line 59
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mPendingRelayChannelCreation:Z

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayChannel:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;

    .line 68
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 69
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 72
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getCmcHandler()Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    .line 74
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaEventHandler:Landroid/os/Handler;

    .line 118
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->init()V

    return-void
.end method

.method private getActiveCallByCmcType(II)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 4

    .line 447
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList()Ljava/util/List;

    move-result-object p0

    .line 448
    monitor-enter p0

    .line 449
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v2, v3, :cond_0

    .line 451
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 452
    monitor-exit p0

    return-object v1

    .line 455
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList()Ljava/util/List;

    move-result-object p0

    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 287
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 291
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 292
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleRelayChannel()V
    .locals 9

    .line 202
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRelayChannel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    .line 205
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 206
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 207
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 208
    sget-object v6, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Streamid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getStreamId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " SessionId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_0

    const-string v5, "Session is null"

    .line 211
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getStreamId()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_1

    .line 217
    :cond_0
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v6

    if-nez v6, :cond_2

    .line 219
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v7

    if-le v7, v0, :cond_2

    .line 220
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v7

    if-ne v7, v0, :cond_2

    if-le v2, v0, :cond_1

    .line 222
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 224
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getStreamId()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 229
    :cond_3
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v5

    if-le v5, v0, :cond_5

    .line 230
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v5

    if-ne v5, v0, :cond_5

    if-le v3, v0, :cond_4

    .line 232
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 234
    :cond_4
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getStreamId()I

    move-result v3

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 238
    :cond_6
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extStream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", intStream"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v0, :cond_7

    if-eq v3, v0, :cond_7

    .line 240
    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->startRelayChannel(II)V

    :cond_7
    return-void
.end method

.method private onCmcRecordingEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 3

    .line 368
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCmcRecordingEvent: event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getCmcRecordingEvent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getCmcRecordingEvent()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x2be

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x2bd

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x385

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x384

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x321

    goto :goto_0

    :cond_0
    const/16 v0, 0x320

    .line 396
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getCmcRecordingArg()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result p1

    invoke-interface {p0, v1, v0, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->notifyOnCmcRecordingEvent(IIII)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onImsRelayEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 8

    .line 296
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isRelayChannelEvent()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 297
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RelayEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayChannelEvent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayChannelEvent()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 p1, 0x0

    move-object v0, v2

    .line 301
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    if-nez v2, :cond_0

    .line 303
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getCmcType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 305
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getCmcType()I

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    .line 310
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result p1

    .line 311
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;

    invoke-direct {v1, v2, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayChannel:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;

    goto/16 :goto_3

    .line 313
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayChannelEvent()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 314
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mPendingRelayChannelCreation:Z

    const/4 v3, -0x1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mExtStream:I

    if-eq v1, v3, :cond_4

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mIntStream:I

    if-eq v4, v3, :cond_4

    .line 315
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 316
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mIntStream:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    .line 318
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mExtStream:I

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mIntStream:I

    invoke-interface {v5, v6, v7}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreCreateRelayChannel(II)I

    move-result v5

    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry Start Relay Channel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x70000005

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayDirection:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayDirection:I

    invoke-interface {v0, v5, v6}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreStartRelayChannel(II)I

    .line 322
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setRelayChannelId(I)V

    .line 323
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setRelayChannelId(I)V

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry StartRelayChannel "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with direction "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayDirection:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 327
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->resetCreateRelayChannelParams()V

    .line 329
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mPendingRelayChannelCreation:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayChannel:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;

    if-eqz v0, :cond_7

    .line 332
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->getIntStream()Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayChannel:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->getExtStream()Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    move-result-object v1

    if-eqz v0, :cond_5

    .line 335
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    if-eqz v1, :cond_6

    .line 338
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 340
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    .line 343
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayChannelEvent()I

    move-result p1

    invoke-interface {v1, p1, v3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->notifyOnCmcRelayEvent(III)V

    .line 345
    :cond_7
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayChannel:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;

    :cond_8
    :goto_3
    return-void

    .line 350
    :cond_9
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_a

    .line 353
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsRelayEvent: session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 357
    :cond_a
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 358
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 360
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isRelayStreamEvent()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 361
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->onRelayStreamEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_4

    .line 362
    :cond_b
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isCmcRecordingEvent()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 363
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->onCmcRecordingEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    :cond_c
    :goto_4
    return-void
.end method

.method private declared-synchronized onRelayStreamEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5

    monitor-enter p0

    .line 138
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelayStreamEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    packed-switch v1, :pswitch_data_0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not handled RelayStreamEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 179
    :goto_0
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 181
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 182
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    .line 183
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hold relay channel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreHoldRelayChannel(I)I

    goto :goto_1

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v1

    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    .line 186
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume relay channel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreResumeRelayChannel(I)I

    goto :goto_1

    .line 188
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    .line 189
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start record relay channel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getStreamId()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v0

    invoke-interface {v1, v3, v4, v0}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreStartRecordingChannel(III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 194
    :cond_3
    monitor-exit p0

    return-void

    .line 173
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayRtpStats()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    move-result-object p1

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    const-string p1, "Ignore RTP/RTCP_TIMEOUT for CMC at PD"

    .line 170
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 153
    :cond_6
    :try_start_4
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->resetCreateRelayChannelParams()V

    .line 154
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getStreamId()I

    move-result p1

    .line 155
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 156
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v1, :cond_7

    .line 158
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getBoundStreamId()I

    move-result p1

    const/4 v2, -0x1

    if-le p1, v2, :cond_7

    .line 159
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getBoundStreamId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    if-eqz p1, :cond_7

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset bound stream "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getStreamId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setRelayChannelId(I)V

    .line 163
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setBoundStreamId(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 167
    :cond_7
    monitor-exit p0

    return-void

    .line 142
    :cond_8
    :try_start_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 144
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    .line 146
    :cond_9
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    invoke-direct {v0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;I)V

    .line 147
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getStreamId()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_a

    .line 149
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->handleRelayChannel()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 151
    :cond_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resetCreateRelayChannelParams()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaEventHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x0

    .line 403
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mPendingRelayChannelCreation:Z

    const/4 v1, -0x1

    .line 404
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mExtStream:I

    .line 405
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mIntStream:I

    .line 406
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayDirection:I

    return-void
.end method

.method private startRelayChannel(II)V
    .locals 9

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 246
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 248
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 249
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    .line 250
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v4

    if-eqz v2, :cond_5

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 256
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v5

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 257
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 258
    :cond_1
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setBoundStreamId(I)V

    .line 259
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setBoundStreamId(I)V

    .line 260
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-interface {v5, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreCreateRelayChannel(II)I

    move-result v5

    .line 261
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v7, 0x1

    if-eq v2, v6, :cond_3

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    if-ne v2, v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v7

    .line 262
    :goto_1
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start Relay Channel "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " with direction "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v5, v3, :cond_4

    const p1, 0x70000005

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-interface {p1, v5, v2}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreStartRelayChannel(II)I

    .line 266
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setRelayChannelId(I)V

    .line 267
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setRelayChannelId(I)V

    .line 268
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->resetCreateRelayChannelParams()V

    .line 269
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Start RelayChannel "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    goto :goto_3

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaEventHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 272
    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mPendingRelayChannelCreation:Z

    .line 273
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mExtStream:I

    .line 274
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mIntStream:I

    .line 275
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayDirection:I

    .line 276
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Pending StartRelayChannel with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    goto :goto_3

    .line 252
    :cond_5
    :goto_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "extSession or intSession is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public connectToSve(I)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sendConnectToSve(I)V

    return-void
.end method

.method public disconnectToSve()V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sendDisonnectToSve()V

    return-void
.end method

.method public init()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaEventHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->registerForCmcMediaEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    monitor-enter p0

    const/4 v3, 0x1

    .line 412
    :try_start_0
    invoke-direct {v1, v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->getActiveCallByCmcType(II)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-nez v3, :cond_0

    .line 415
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "sendCmcRecordingEvent: PD active session is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    :cond_0
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    .line 433
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCmcRecordingEvent: ignore event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 429
    :cond_1
    :try_start_2
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-interface {v2, v4, v3}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->stopCmcRecord(II)Z

    move-result v2

    goto :goto_0

    .line 421
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCmcRecordingEvent: SemCmcRecordingInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v6

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getAudioSource()I

    move-result v8

    .line 423
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getOutputFormat()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getMaxFileSize()J

    move-result-wide v10

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getMaxDuration()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getOutputPath()Ljava/lang/String;

    move-result-object v13

    .line 424
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getAudioEncodingBitRate()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getAudioChannels()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getAudioSamplingRate()I

    move-result v16

    .line 425
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getAudioEncoder()I

    move-result v17

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getDurationInterval()I

    move-result v18

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getFileSizeInterval()J

    move-result-wide v19

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getAuthor()Ljava/lang/String;

    move-result-object v21

    .line 422
    invoke-interface/range {v5 .. v21}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->startCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_3

    .line 438
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    const/4 v3, 0x4

    .line 439
    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setCmcRecordingEvent(I)V

    .line 440
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 441
    invoke-virtual {v2, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 442
    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->onCmcRecordingEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
