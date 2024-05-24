.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;
.super Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;
.source "VideoSharingServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IRegistrationStatusBroadcaster;


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static videoSharingSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/sharing/video/IVideoSharing;",
            ">;"
        }
    .end annotation
.end field

.field private static vshModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;


# instance fields
.field private eventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

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
    .registers 1

    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->vshModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;

    .line 75
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;)V
    .registers 3

    .line 132
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;-><init>()V

    .line 47
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    .line 59
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->eventListeners:Landroid/os/RemoteCallbackList;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->lock:Ljava/lang/Object;

    .line 133
    sput-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->vshModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;

    return-void
.end method

.method protected static addVideoSharingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;)V
    .registers 5

    .line 150
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add a vsh session (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : sessionid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;
    .registers 1

    .line 141
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->vshModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;

    return-object v0
.end method

.method protected static removeVideoSharingSession(Ljava/lang/String;)V
    .registers 4

    .line 161
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove a vsh session (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : sessionid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->eventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 424
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public addServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 195
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public deleteVideoSharing(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete video sharing session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-eqz v1, :cond_47

    .line 319
    :try_start_25
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getRemoteContact()Ljava/lang/String;

    move-result-object v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_31} :catch_32

    goto :goto_37

    :catch_32
    move-exception v1

    .line 321
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    .line 323
    :goto_37
    new-instance v2, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->handleVideoSessionDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V

    :cond_47
    return-void
.end method

.method public deleteVideoSharings()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 409
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result p0

    if-eqz p0, :cond_f

    .line 410
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    :cond_f
    return-void
.end method

.method public deleteVideoSharingsByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_a

    .line 491
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Cannot delete video sharing session, contact is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 495
    :cond_a
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete video sharing session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result p0

    if-eqz p0, :cond_37

    .line 497
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 290
    new-instance p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->vshModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;->getMaxDurationTime()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;-><init>(J)V

    return-object p0
.end method

.method public getVideoSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 302
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get video sharing session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    return-object p0
.end method

.method public getVideoSharingByID(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;
    .registers 4

    .line 336
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get video sharing session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; videoSharingSessions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    .line 338
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;

    return-object p0
.end method

.method public getVideoSharings()Ljava/util/List;
    .registers 3
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

    .line 392
    new-instance p0, Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 393
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 394
    :goto_11
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 395
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    .line 396
    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    return-object p0
.end method

.method public handleVideoSessionDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 690
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleVideoSessionDeleted: contactid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,sharingIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_21
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->eventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_48

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v1, :cond_41

    .line 696
    :try_start_2a
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->eventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;

    invoke-interface {v3, p1, p2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_35} :catch_36
    .catchall {:try_start_2a .. :try_end_35} :catchall_48

    goto :goto_3e

    :catch_36
    move-exception v3

    .line 698
    :try_start_37
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Can\'t notify listener"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 701
    :cond_41
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->eventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 702
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_37 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public isServiceRegistered()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 174
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 178
    :cond_8
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 179
    aget-object p0, p0, v0

    const-string/jumbo v0, "vs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    .line 181
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServiceRegistered() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .registers 9

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_38

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_31

    if-eqz p1, :cond_1a

    .line 225
    :try_start_e
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_2e

    .line 227
    :cond_1a
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3, p2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_25} :catch_26
    .catchall {:try_start_e .. :try_end_25} :catchall_38

    goto :goto_2e

    :catch_26
    move-exception v3

    .line 230
    :try_start_27
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Can\'t notify listener"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 233
    :cond_31
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 234
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->eventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 437
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 208
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public shareVideo(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_b

    .line 452
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Cannot initiate a live video session, contact is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 456
    :cond_b
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiate a live video session with contact "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_65

    .line 462
    :try_start_27
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->vshModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    const-string v1, "com.sec.rcs.videosharing.LIVE_VIDEO_CONTENTPATH"

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;->createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 463
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    if-eqz p1, :cond_52

    .line 470
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)V

    .line 471
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p1

    iget-wide p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->addVideoSharingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;)V

    return-object v0

    .line 465
    :cond_52
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string/jumbo p2, "session is null"

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_5b} :catch_60
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_27 .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception p1

    .line 476
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_64

    :catch_60
    move-exception p1

    .line 474
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_64
    return-object p0

    .line 458
    :cond_65
    new-instance p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string p1, "Missing video player"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
