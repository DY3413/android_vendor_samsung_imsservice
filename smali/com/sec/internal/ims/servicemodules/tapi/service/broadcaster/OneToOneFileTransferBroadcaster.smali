.class public Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;
.super Ljava/lang/Object;
.source "OneToOneFileTransferBroadcaster.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IOneToOneFileTransferBroadcaster;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OneToOneFileTransferBroadcaster"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;",
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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    .line 43
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : broadcastDeleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    invoke-interface {v2, v0, p1}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 101
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 102
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

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

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public broadcastFileTransferInvitation(Ljava/lang/String;)V
    .locals 2

    .line 110
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : broadcastFileTransferInvitation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.filetransfer.action.NEW_FILE_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "transferId"

    .line 112
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastResumeFileTransfer(Ljava/lang/String;)V
    .locals 2

    .line 118
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : broadcastResumeFileTransfer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.filetransfer.action.RESUME_FILE_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "transferId"

    .line 120
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V
    .locals 6

    .line 58
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : broadcastMessageStatusChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 66
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 67
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

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

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public broadcastTransferprogress(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    .locals 11

    move-object v1, p0

    .line 76
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "start : broadcastTransferprogress()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 80
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-interface/range {v4 .. v10}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;->onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 85
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t notify listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public broadcastUndeliveredFileTransfer(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 2

    .line 125
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : broadcastResumeFileTransfer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.filetransfer.action.UNDELIVERED_FILE_TRANSFERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "contact"

    .line 127
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public removeOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
