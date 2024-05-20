.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;
.super Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;
.source "GeolocSharingServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IRegistrationStatusBroadcaster;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

.field private mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

.field private final mGshSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mServiceListeners:Landroid/os/RemoteCallbackList;
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

    .line 77
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;-><init>()V

    .line 82
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGshSessions:Ljava/util/Hashtable;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    .line 94
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    .line 105
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    .line 106
    new-instance p2, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    .line 107
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-interface {p1, p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    .line 108
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    invoke-interface {p1, p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    return-void
.end method

.method private addGeolocSharingSession(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;)V
    .locals 1

    .line 118
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGshSessions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->getSharingId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getContactId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Lcom/gsma/services/rcs/contact/ContactId;
    .locals 0

    .line 501
    new-instance p0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private getGeoMessage(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string p0, "_id"

    const-string v0, "chat_id"

    .line 465
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v2

    .line 470
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const/4 v4, 0x0

    .line 471
    invoke-virtual {v2, v1, p1, v4, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 472
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 476
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 478
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 477
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 485
    :cond_1
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 484
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 486
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-nez v5, :cond_2

    .line 488
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 489
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 492
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 495
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_0
    move-exception p0

    .line 471
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 495
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v4
.end method

.method private getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 451
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    .line 452
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 457
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getSharingId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;
    .locals 0

    .line 505
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private notifyStateChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V
    .locals 3

    .line 544
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getContactId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 549
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getSharingId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;

    move-result-object p0

    .line 548
    invoke-virtual {v1, v2, p0, p2, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->broadcastGeolocSharingStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    .line 550
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private removeGeolocSharingSession(Ljava/lang/String;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGshSessions:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static translateToReasonCode(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    .locals 3

    .line 509
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateToReasonCode(), CancelReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 540
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object p0

    .line 522
    :pswitch_0
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object p0

    .line 520
    :pswitch_1
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object p0

    .line 518
    :pswitch_2
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object p0

    .line 516
    :pswitch_3
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object p0

    .line 514
    :pswitch_4
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->addEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V

    .line 314
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 177
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deleteAllGeolocSharings()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    const-string v0, "content_type =\'application/vnd.gsma.rcspushlocation+xml\'"

    .line 349
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getGeoMessage(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 351
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "deleteAllGeolocSharings: Message not found."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 355
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 357
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 358
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 359
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 360
    new-instance v4, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v3}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 361
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 362
    :try_start_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    new-instance v6, Ljava/util/ArrayList;

    .line 363
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 362
    invoke-virtual {v5, v4, v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->broadcastDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V

    .line 364
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->deleteGeolocSharings(Ljava/util/List;)V

    .line 368
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 369
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->removeGeolocSharingSession(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public deleteGeolocSharingBySharingId(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->deleteGeolocSharings(Ljava/util/List;)V

    .line 432
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getGeolocSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;

    if-nez v1, :cond_0

    .line 434
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteGeolocSharingBySharingId, id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", GeolocSharingImpl not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 439
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->broadcastDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V

    .line 440
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->removeGeolocSharingSession(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 440
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public deleteGeolocSharingsByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 385
    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_1

    .line 389
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "deleteGeolocSharingsByContactId: No session for geoloc"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 393
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is_filetransfer = 1 and chat_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "content_type"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getGeoMessage(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    .line 400
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "deleteGeolocSharingsByContactId: Message not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 404
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 405
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 407
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 408
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 409
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 410
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    new-instance v5, Ljava/util/ArrayList;

    .line 411
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 410
    invoke-virtual {v4, p1, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->broadcastDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V

    .line 412
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 415
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->deleteGeolocSharings(Ljava/util/List;)V

    .line 416
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->removeGeolocSharingSession(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getGeolocSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 301
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGshSessions:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    return-object p0
.end method

.method public getGeolocSharings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 284
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Get geoloc sharing sessions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGshSessions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGshSessions:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    .line 289
    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getServiceVersion()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    const/4 p0, 0x2

    return p0
.end method

.method public handleGeolocSharingProgress(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 8

    .line 555
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSharingProgress id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferredBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    .line 558
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "%."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getContactId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 562
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getSharingId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;

    move-result-object v3

    .line 563
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferredBytes()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v6

    .line 561
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->broadcastGeolocSharingprogress(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

    .line 564
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public isServiceRegistered()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 156
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 157
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    const-string v4, "gls"

    .line 158
    invoke-virtual {v3, v4}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz p1, :cond_0

    .line 208
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_1

    .line 210
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3, p2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 213
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 217
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onCancelMessageResponse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    return-void
.end method

.method public onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V
    .locals 0

    return-void
.end method

.method public onFileTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    return-void
.end method

.method public onFileTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGshSessions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->startLocationShareInCall(Ljava/lang/String;)V

    .line 572
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->notifyStateChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    :cond_0
    return-void
.end method

.method public onFileTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 583
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;)V

    .line 584
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->addGeolocSharingSession(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;)V

    .line 585
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->notifyStateChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    .line 587
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getSharingId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->broadcastGeolocSharingInvitation(Ljava/lang/String;)V

    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 0

    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 0

    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    return-void
.end method

.method public onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    return-void
.end method

.method public onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 0

    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 614
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v0

    .line 615
    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    if-eqz v0, :cond_0

    .line 617
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->translateToReasonCode(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    move-result-object v1

    .line 620
    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ABORTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->notifyStateChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 609
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->TRANSFERRED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->notifyStateChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    return-void
.end method

.method public onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 8

    .line 592
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->handleGeolocSharingProgress(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 593
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getContactId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 596
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getSharingId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;

    move-result-object v3

    .line 597
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferredBytes()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v6

    .line 595
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->broadcastGeolocSharingprogress(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

    .line 598
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public onTransferStarted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 604
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->STARTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->notifyStateChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    return-void
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->removeEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V

    .line 327
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 191
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public shareGeoloc(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 234
    new-instance v4, Landroid/location/Location;

    const-string p1, "gps"

    invoke-direct {v4, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 236
    invoke-virtual {p2}, Lcom/gsma/services/rcs/Geoloc;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 237
    invoke-virtual {p2}, Lcom/gsma/services/rcs/Geoloc;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 238
    invoke-virtual {p2}, Lcom/gsma/services/rcs/Geoloc;->getAccuracy()F

    move-result v0

    invoke-virtual {v4, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    if-nez v0, :cond_0

    .line 244
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p2, "GLS module is not created"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 247
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 248
    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 249
    invoke-virtual {p2}, Lcom/gsma/services/rcs/Geoloc;->getLabel()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 247
    invoke-interface/range {v0 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->createInCallLocationShare(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/concurrent/Future;

    move-result-object p2

    const-string/jumbo v0, "sharing geolocation  failed, return null!"

    if-nez p2, :cond_1

    .line 251
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 256
    :cond_1
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-nez p2, :cond_2

    .line 258
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 263
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    invoke-direct {v0, p2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;)V

    .line 264
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->addGeolocSharingSession(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 270
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 268
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p1
.end method
