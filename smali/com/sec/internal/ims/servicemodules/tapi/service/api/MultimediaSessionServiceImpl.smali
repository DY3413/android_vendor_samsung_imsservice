.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;
.super Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;
.source "MultimediaSessionServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IRegistrationStatusBroadcaster;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mMultimediaMessagingCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultimediaMessagingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

.field private final mMultimediaStreamingCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultimediaStreamingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;

.field private final mSessionEstablishCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

.field private mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field private serviceListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingCache:Ljava/util/Map;

    .line 75
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaStreamingCache:Ljava/util/Map;

    .line 81
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaStreamingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionEstablishCache:Ljava/util/Map;

    .line 92
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    .line 99
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    .line 100
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mContext:Landroid/content/Context;

    .line 101
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->registerMessagingSessionListener(Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;)V

    .line 102
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    return-void
.end method

.method private addMultimediaMessaging(Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionEstablishCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->getSessionId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static translateError(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .locals 1

    .line 533
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->FAILED_MEDIA:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne p1, v0, :cond_0

    .line 534
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->FAILED_MEDIA:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 537
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    .line 565
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 563
    :pswitch_0
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_SERVER_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 561
    :pswitch_1
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NOT_IMPLEMENTED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 559
    :pswitch_2
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REMOTE_USER_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 557
    :pswitch_3
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REQUEST_PENDING:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 555
    :pswitch_4
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_TEMP_NOT_ACCEPTABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 553
    :pswitch_5
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 551
    :pswitch_6
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_USER_CALL_BLOCK:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 549
    :pswitch_7
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_SERVICE_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 547
    :pswitch_8
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REQ_TERMINATED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 545
    :pswitch_9
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_BAD_REQUEST:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 543
    :pswitch_a
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_TEMP_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 541
    :pswitch_b
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_DECLINE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 539
    :pswitch_c
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_BUSY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static translateState(Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    .locals 1

    .line 571
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 593
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->FAILED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 591
    :pswitch_0
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->ABORTED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 589
    :pswitch_1
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->ABORTED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 587
    :pswitch_2
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->ABORTED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 585
    :pswitch_3
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->STARTED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 579
    :pswitch_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p1, p0, :cond_0

    .line 580
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->RINGING:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 582
    :cond_0
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->ACCEPTING:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 573
    :pswitch_5
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p1, p0, :cond_1

    .line 574
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->INITIATING:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 576
    :cond_1
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->INVITED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

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


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 115
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

    .line 128
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->addMultimediaMessagingEventListener(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V

    .line 129
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaStreamingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;

    .line 143
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->addMultimediaStreamingEventListener(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V

    .line 144
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->getInstance(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;)Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;

    move-result-object p0

    return-object p0
.end method

.method public getMessagingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    if-eqz v0, :cond_0

    return-object v0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->getMessagingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    if-nez p1, :cond_1

    .line 202
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Session not exists."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 206
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-direct {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 207
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->addMultimediaMessaging(Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;)V

    return-object v0
.end method

.method public getMessagingSessions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 223
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    .line 226
    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 234
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStreamingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 247
    new-instance p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string p1, "Unsupported operation"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStreamingSessions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 261
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaStreamingCache:Ljava/util/Map;

    .line 263
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 262
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    .line 264
    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 272
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[Ljava/lang/String;[Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 295
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiateMessagingSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ContactId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 302
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 303
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v2, v0, v3}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 304
    invoke-virtual {p2}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->initiateMessagingSession(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    .line 312
    new-instance p2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-direct {p2, p3, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 313
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->addMultimediaMessaging(Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;)V

    return-object p2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public initiateStreamingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 334
    new-instance p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string p1, "Unsupported operation"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isServiceRegistered()Z
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->isServiceRegistered()Z

    move-result p0

    return p0
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz p1, :cond_0

    .line 362
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_1

    .line 364
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3, p2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 369
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    .line 367
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 373
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onIncomingSessionInvited(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V
    .locals 3

    .line 465
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingSessionInvited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.extension.action.NEW_MESSAGING_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 468
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 469
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 470
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 471
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 472
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sessionId"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;[BLjava/lang/String;)V
    .locals 2

    .line 514
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 518
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

    .line 520
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->broadcastMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method public onMessagesFlushed(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 3

    .line 525
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessagesFlushed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    .line 527
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    .line 526
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->broadcastMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V

    return-void
.end method

.method public onStateChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V
    .locals 7

    .line 479
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 481
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionClosedEvent()Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    move-result-object v1

    .line 482
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isTimerExpired()Z

    move-result v2

    .line 483
    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    if-eqz v0, :cond_5

    .line 486
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne p2, v4, :cond_0

    .line 487
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionEstablishCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    .line 491
    iget-object v1, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->translateError(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v3

    .line 494
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne p2, v1, :cond_2

    if-eqz v2, :cond_2

    .line 495
    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->ABORTED_BY_INACTIVITY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    :cond_2
    if-eq p2, v1, :cond_3

    .line 500
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->FAILED_MEDIA:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne p2, v1, :cond_4

    .line 502
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->removeMultimediaMessaging(Ljava/lang/String;)V

    .line 505
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    .line 506
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->translateState(Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    move-result-object p1

    .line 505
    invoke-virtual {p0, v1, v0, p1, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->broadcastStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V

    :cond_5
    return-void
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 386
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

    .line 400
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->removeMultimediaMessagingEventListener(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V

    .line 401
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaStreamingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->removeMultimediaStreamingEventListener(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V

    .line 416
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method removeMultimediaMessaging(Ljava/lang/String;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionEstablishCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendInstantMultimediaMessage(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[BLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 429
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendInstantMultimediaMessage,serviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "contactId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    .line 436
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-virtual {p2}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->sendInstantMultimediaMessage(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 439
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInactivityTimeout(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 421
    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->setInactivityTimeout(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 423
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
