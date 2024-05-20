.class public Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;
.super Ljava/lang/Object;
.source "GeolocSharingEventBroadcaster.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IGeolocSharingEventBroadcaster;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GeolocSharingEventBroadcaster"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mGeolocSharingListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->mGeolocSharingListeners:Landroid/os/RemoteCallbackList;

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->mGeolocSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public broadcastDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string v1, " broadcastDeleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->mGeolocSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->mGeolocSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;

    invoke-interface {v2, p1, p2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 98
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 99
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t notify listener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->mGeolocSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public broadcastGeolocSharingInvitation(Ljava/lang/String;)V
    .locals 2

    .line 107
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string v1, " broadcastGeolocSharingInvitation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.sharing.geoloc.action.NEW_GEOLOC_SHARING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "sharingId"

    .line 111
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastGeolocSharingStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V
    .locals 4

    .line 53
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string v1, " broadcastGeolocSharingStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->mGeolocSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->mGeolocSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 60
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 61
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->mGeolocSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public broadcastGeolocSharingprogress(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    .locals 11

    move-object v1, p0

    .line 73
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string v2, " broadcastGeolocSharingprogress()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->mGeolocSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 77
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->mGeolocSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    move-wide/from16 v9, p5

    .line 78
    invoke-interface/range {v4 .. v10}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;->onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 81
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->mGeolocSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->mGeolocSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
