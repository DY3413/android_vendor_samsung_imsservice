.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;
.super Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;
.source "ImageSharingServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IRegistrationStatusBroadcaster;
.implements Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private ishModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;

.field private mImageSharingListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIshListenerLock:Ljava/lang/Object;

.field private mIshSessionsMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/sharing/image/IImageSharing;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceListenerlock:Ljava/lang/Object;

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
    .registers 1

    .line 48
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;)V
    .registers 3

    .line 87
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;-><init>()V

    .line 52
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    .line 58
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mImageSharingListeners:Landroid/os/RemoteCallbackList;

    .line 64
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListenerlock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshListenerLock:Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->ishModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;

    .line 91
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;->registerImageShareEventListener(Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;)V

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mImageSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 334
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method addImageSharingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;)V
    .registers 3

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListenerlock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 248
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public deleteAllImageSharings()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 352
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    .line 353
    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->abortSharing()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_1c

    goto :goto_6

    .line 359
    :cond_16
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void

    :catch_1c
    move-exception p0

    .line 356
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteImageSharing(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    if-eqz v0, :cond_12

    .line 379
    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->abortSharing()V

    .line 380
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-void
.end method

.method public deleteImageSharings(Lcom/gsma/services/rcs/contact/ContactId;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 365
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 366
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 367
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    .line 368
    invoke-interface {v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/gsma/services/rcs/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 369
    invoke-interface {v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->abortSharing()V

    .line 370
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_2f
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;
    .registers 6

    .line 270
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->ishModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;->getMaxSize()J

    move-result-wide v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->ishModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;

    .line 271
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;->getWarnSize()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;-><init>(JJ)V

    return-object v0
.end method

.method public getImageSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    return-object p0
.end method

.method public getImageSharings()Ljava/util/List;
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
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 284
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    .line 285
    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_26

    goto :goto_11

    :cond_25
    return-object v0

    :catch_26
    move-exception p0

    .line 289
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getServiceVersion()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isServiceRegistered()Z
    .registers 4

    .line 229
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 233
    :cond_8
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 234
    aget-object p0, p0, v0

    const-string v0, "is"

    invoke-virtual {p0, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    .line 235
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

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

.method public notifyImageSharingProgress(Ljava/lang/String;J)V
    .registers 20

    move-object/from16 v1, p0

    .line 174
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 175
    :try_start_5
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;

    if-nez v0, :cond_1a

    .line 178
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyImageSharingProgress(): session is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    monitor-exit v2

    return-void

    .line 182
    :cond_1a
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v10

    .line 183
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->getSharingId()Ljava/lang/String;

    move-result-object v11

    .line 184
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->getFileSize()J

    move-result-wide v12

    .line 186
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mImageSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_50

    const/4 v0, 0x0

    move v15, v0

    :goto_2e
    if-ge v15, v14, :cond_49

    .line 189
    :try_start_30
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mImageSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;

    move-object v4, v10

    move-object v5, v11

    move-wide/from16 v6, p2

    move-wide v8, v12

    invoke-interface/range {v3 .. v9}, Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;->onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_41} :catch_42
    .catchall {:try_start_30 .. :try_end_41} :catchall_50

    goto :goto_46

    :catch_42
    move-exception v0

    .line 193
    :try_start_43
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_46
    add-int/lit8 v15, v15, 0x1

    goto :goto_2e

    .line 196
    :cond_49
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mImageSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 197
    monitor-exit v2

    return-void

    :catchall_50
    move-exception v0

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_50

    throw v0
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .registers 7

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListenerlock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2f

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_28

    if-eqz p1, :cond_1a

    .line 131
    :try_start_e
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_25

    .line 133
    :cond_1a
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3, p2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_25} :catch_25
    .catchall {:try_start_e .. :try_end_25} :catchall_2f

    :catch_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 139
    :cond_28
    :try_start_28
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 140
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public onIshTransferProgressEvent(Ljava/lang/String;J)V
    .registers 4

    .line 386
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->notifyImageSharingProgress(Ljava/lang/String;J)V

    return-void
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mImageSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 341
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

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListenerlock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 260
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public shareImage(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    .line 312
    :try_start_16
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->ishModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;->createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    if-eqz p1, :cond_4c

    .line 317
    new-instance p2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    .line 318
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shareImage: sharingId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->getSharingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->getSharingId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->addImageSharingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;)V

    return-object p2

    .line 314
    :cond_4c
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "session is null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_55} :catch_5a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_55} :catch_55

    :catch_55
    move-exception p0

    .line 324
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_5e

    :catch_5a
    move-exception p0

    .line 322
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_5e
    const/4 p0, 0x0

    return-object p0
.end method
