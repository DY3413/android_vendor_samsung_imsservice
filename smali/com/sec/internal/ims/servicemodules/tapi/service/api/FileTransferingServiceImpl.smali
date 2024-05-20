.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;
.super Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;
.source "FileTransferingServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IRegistrationStatusBroadcaster;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mIFtSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/filetransfer/IFileTransfer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContext:Landroid/content/Context;

.field private mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

.field private mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field private mLock:Ljava/lang/Object;

.field private mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

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

    .line 89
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;-><init>()V

    .line 93
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 110
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    .line 131
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 133
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 134
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    .line 135
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-interface {p1, p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    return-void
.end method

.method public static addFileTransferingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;)V
    .locals 1

    .line 356
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private addRecord(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1163
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    .line 1165
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1166
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1167
    invoke-interface {p3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1169
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static ftCancelReasonTranslator(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .locals 1

    .line 1061
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 1093
    sget-object p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object p0

    .line 1075
    :pswitch_0
    sget-object p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object p0

    .line 1073
    :pswitch_1
    sget-object p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object p0

    .line 1071
    :pswitch_2
    sget-object p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object p0

    .line 1069
    :pswitch_3
    sget-object p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object p0

    .line 1067
    :pswitch_4
    sget-object p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object p0

    .line 1065
    :pswitch_5
    sget-object p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object p0

    .line 1063
    :pswitch_6
    sget-object p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ftRejectReasonTranslator(Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .locals 1

    .line 1097
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$FtRejectReason:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1105
    sget-object p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object p0

    .line 1101
    :cond_0
    sget-object p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object p0

    .line 1099
    :cond_1
    sget-object p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object p0
.end method

.method public static removeFileTransferingSession(Ljava/lang/String;)V
    .locals 1

    .line 367
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 182
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->addGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    .line 333
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->addOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    .line 307
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public canTransferFileToGroupChat(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 474
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    .line 475
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-nez p0, :cond_0

    .line 478
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachFileToGroupChat: chat not exist - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public clearFileTransferDeliveryExpiration(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public deleteFileTransfer(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 637
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteFileTransfer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 639
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 641
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getFileTransferByID(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 648
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 649
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 651
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->isGroupTransfer()Z

    move-result p1

    .line 652
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->getChatId()Ljava/lang/String;

    move-result-object v3

    .line 653
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 659
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 664
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 666
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->removeFileTransferingSessions(Ljava/util/List;)V

    .line 667
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->notifyChangeForDelete()V

    return-void

    :catch_0
    move-exception p0

    .line 655
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public deleteGroupFileTransfers()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 547
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteGroupFileTransfers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "is_filetransfer = 1"

    const/4 v1, 0x1

    .line 549
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getFileTransfers(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 551
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 552
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 554
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 555
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 556
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 557
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    .line 558
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v4, v5, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 559
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 562
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->removeFileTransferingSessions(Ljava/util/List;)V

    .line 563
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->notifyChangeForDelete()V

    :cond_1
    return-void
.end method

.method public deleteGroupFileTransfersByChatId(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 611
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteGroupFileTransfersByChatId()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_filetransfer = 1 and chat_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 614
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getFileTransfers(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 617
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 619
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 620
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 621
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 622
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    .line 623
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 624
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 626
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 627
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->removeFileTransferingSessions(Ljava/util/List;)V

    .line 628
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->notifyChangeForDelete()V

    :cond_1
    return-void
.end method

.method public deleteOneToOneFileTransfers()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 520
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteOneToOneFileTransfers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "is_filetransfer = 1"

    const/4 v1, 0x0

    .line 522
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getFileTransfers(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 524
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 525
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 527
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 528
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 529
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 530
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 531
    :try_start_0
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 532
    invoke-static {v4}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 533
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 531
    invoke-virtual {v6, v4, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 534
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 537
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->removeFileTransferingSessions(Ljava/util/List;)V

    .line 538
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->notifyChangeForDelete()V

    :cond_1
    return-void
.end method

.method public deleteOneToOneFileTransfersByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 573
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteOneToOneFileTransfersByContactId()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 575
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 576
    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v3, ""

    invoke-virtual {p1, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "deleteOneToOneFileTransfersByContactId, no session for ft"

    .line 580
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 583
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_filetransfer = 1 and chat_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 586
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getFileTransfers(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 588
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 591
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 592
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 593
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 594
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 595
    :try_start_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 596
    invoke-static {v3}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 597
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 595
    invoke-virtual {v5, v3, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 598
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 600
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p1, v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 601
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->removeFileTransferingSessions(Ljava/util/List;)V

    .line 602
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->notifyChangeForDelete()V

    :cond_2
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    .line 199
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)V

    return-object v0
.end method

.method public getFileTransfer(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 226
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    return-object p0
.end method

.method public getFileTransferByID(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;
    .locals 0

    .line 235
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    return-object p0
.end method

.method public getFileTransfers()Ljava/util/List;
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

    .line 209
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getFileTransfers get all transfered file."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance p0, Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    .line 214
    invoke-interface {v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getFileTransfers(ZLjava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, "chat_id"

    .line 1131
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 1134
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v3

    .line 1135
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    const/4 v5, 0x0

    .line 1136
    invoke-virtual {v3, v2, p2, v5, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1137
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1141
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1143
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1142
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1144
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 1148
    :cond_1
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v5

    if-eq v5, p1, :cond_2

    goto :goto_0

    .line 1152
    :cond_2
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1151
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1153
    invoke-direct {p0, v2, v5, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->addRecord(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1155
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object v4

    .line 1138
    :cond_4
    :goto_1
    :try_start_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getFileTransfers: Message not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_5

    .line 1155
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v5

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_6

    .line 1136
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p0
.end method

.method public getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1114
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    .line 1115
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 1119
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object p0

    .line 1121
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 p1, 0x0

    .line 1122
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    return-object p1
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

.method public getUndeliveredFileTransfers(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 727
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "start : getUndeliveredFileTransfers()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tel:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    .line 729
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 730
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    .line 733
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object p1

    .line 737
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    const-string v1, "_id"

    .line 738
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chat_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' and "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "notification_status"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 743
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "direction"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 744
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "is_filetransfer"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = 1"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    .line 745
    invoke-virtual {v0, v2, p0, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 747
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 745
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_1
    if-eqz p0, :cond_2

    .line 751
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method

.method public handleContentTransfered(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 871
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 873
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 874
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 876
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleContentTransfered, cannot get ImSession from chatId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 879
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 880
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    .line 881
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->TRANSFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 880
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastTransferStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    goto :goto_0

    .line 884
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 885
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->TRANSFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 884
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    :goto_0
    return-void
.end method

.method public handleMessageDeliveryStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V
    .locals 7

    .line 943
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 944
    new-instance v4, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 945
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 946
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v1, p2, :cond_0

    .line 947
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->DELIVERED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_0

    .line 948
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v1, p2, :cond_1

    .line 949
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->DISPLAYED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 951
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 952
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v1

    .line 953
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    if-nez v1, :cond_2

    .line 955
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessageDeliveryStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cannot get ImSession from chatId : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 955
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    monitor-exit p2

    return-void

    .line 959
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 960
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    .line 961
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    .line 962
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    sget-object v6, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    .line 960
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastGroupDeliveryInfoStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    .line 964
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotDisplayedCounter()I

    move-result v1

    if-nez v1, :cond_4

    .line 965
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    .line 966
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 965
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastTransferStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    goto :goto_1

    .line 969
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 970
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 969
    invoke-virtual {p0, v4, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 973
    :cond_4
    :goto_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 5

    .line 894
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 896
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 897
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 899
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTransferReceived, cannot get ImSession from chatId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 902
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    .line 904
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INVITED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 903
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastTransferStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 906
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    .line 907
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    .line 906
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastFileTransferInvitation(Ljava/lang/String;)V

    goto :goto_0

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 910
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INVITED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 909
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 912
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 913
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    .line 912
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastFileTransferInvitation(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleTransferState(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 6

    .line 777
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v0

    .line 778
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRejectReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    move-result-object v1

    .line 779
    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 780
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    .line 781
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    if-eqz v1, :cond_0

    .line 783
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->ftRejectReasonTranslator(Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v0

    goto :goto_0

    .line 785
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->ftCancelReasonTranslator(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v0

    .line 787
    :goto_0
    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 815
    :pswitch_0
    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->QUEUED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_1

    .line 811
    :pswitch_1
    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ABORTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_1

    .line 802
    :pswitch_2
    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->TRANSFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_1

    .line 799
    :pswitch_3
    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->STARTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_1

    .line 805
    :pswitch_4
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v2, v3, :cond_2

    .line 806
    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ACCEPTING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_1

    .line 791
    :pswitch_5
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v3, :cond_1

    .line 792
    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INVITED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_1

    .line 794
    :cond_1
    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INITIATING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 820
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 821
    new-instance v3, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 822
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v2

    .line 823
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    if-nez v2, :cond_3

    .line 825
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTransferState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cannot get ImSession from chatId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 828
    :cond_3
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 829
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v4

    .line 830
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 829
    invoke-virtual {v2, v4, v5, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastTransferStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    goto :goto_2

    .line 832
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 833
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 832
    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 836
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastUndeliveredFileTransfer(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 838
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->removeFileTransferingSession(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public handleTransferingProgress(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 7

    .line 845
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferredBytes()J

    move-result-wide v3

    .line 846
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v5

    .line 847
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 850
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 851
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 853
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTransferingProgress, cannot get ImSession from chatId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 856
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 857
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastTransferprogress(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 862
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 861
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastTransferprogress(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

    :goto_0
    return-void
.end method

.method public isAllowedToTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1219
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 1220
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v2, v2

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/lang/String;JI)Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1222
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method public isAllowedTotransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    .line 459
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 460
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 465
    :goto_0
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    throw v0
.end method

.method public isFileTransferAutoAccepted()Z
    .locals 0

    .line 1204
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    .line 1205
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtAutAccept()Z

    move-result p0

    return p0
.end method

.method public isFtAutoAcceptedModeChangeable()Z
    .locals 1

    .line 1189
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "AutoAcceptFtChangeable"

    .line 1192
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1191
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isServiceRegistered()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 156
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 161
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 162
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    const-string v4, "ft"

    .line 163
    invoke-virtual {v3, v4}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ft_http"

    .line 164
    invoke-virtual {v3, v4}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public markFileTransferAsRead(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 492
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 496
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 497
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->readMessages(Ljava/lang/String;Ljava/util/List;)V

    .line 500
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 501
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 504
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->DISPLAYED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    return-void
.end method

.method public markUndeliveredFileTransfersAsProcessed(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 761
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "start : markUndeliveredFileTransfersAsProcessed()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    .line 763
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 764
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImMessage(I)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 768
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 769
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromPendingList(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyChangeForDelete()V
    .locals 2

    .line 512
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransferLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .locals 4

    .line 392
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz p1, :cond_0

    .line 397
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_1

    .line 399
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

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

    .line 402
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 406
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
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
    .locals 3

    .line 981
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 982
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendFile(Ljava/lang/String;)V

    .line 984
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 985
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 987
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFileTransferCreated, cannot get ImSession from chatId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 990
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    .line 992
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->STARTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 991
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastTransferStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    goto :goto_0

    .line 995
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 996
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 997
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 998
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->STARTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 997
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFileTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 1012
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    .line 1014
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->addFileTransferingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;)V

    .line 1016
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->handleTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 0

    .line 1042
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->handleMessageDeliveryStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 0

    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    .line 1036
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->handleTransferState(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    .line 1031
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->handleContentTransfered(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    .line 1021
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->handleTransferingProgress(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public onTransferStarted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    return-void
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 190
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeFileTransferingSessions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 378
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 379
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->removeGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    .line 346
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->removeOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    .line 320
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAutoAccept(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 681
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->isFtAutoAcceptedModeChangeable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 684
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->setAutoAcceptFt(I)V

    return-void

    .line 682
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string p1, "Auto accept mode is not changeable"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAutoAcceptInRoaming(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 698
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->isFtAutoAcceptedModeChangeable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 701
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->isFileTransferAutoAccepted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 704
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->setAutoAcceptFt(I)V

    return-void

    .line 702
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string p1, "Auto accept mode in normal conditions must be enabled"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 699
    :cond_1
    new-instance p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string p1, "Auto accept mode is not changeable"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setImageResizeOption(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 714
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 715
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ImageResizeOption"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public transferAudioMessage(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1231
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/FileUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1232
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "transferAudioMessage, contentUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 1234
    invoke-static {v2, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-string v9, "application/audio-message"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v3

    move v3, v5

    move-object/from16 v5, p2

    .line 1233
    invoke-interface/range {v2 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->attachFileToSingleChat(ILjava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v2, 0x0

    .line 1239
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1243
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1241
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_0

    .line 1246
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "attachFileToSingleChat failed, return null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1249
    :cond_0
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;-><init>(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    .line 1251
    invoke-static {v0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->addFileTransferingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;)V

    return-object v2
.end method

.method public transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v6, p2

    invoke-static {v2, v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/FileUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 273
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transferFile, contentUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    .line 275
    :try_start_0
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v4, 0x0

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 276
    invoke-static {v1, v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "application/vnd.gsma.rcs-ft-http+xml"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 278
    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->RENDER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    move-object/from16 v15, p3

    if-ne v15, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->RENDER:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    :goto_0
    move-object/from16 v16, v1

    move-object/from16 v6, p2

    const/4 v1, 0x0

    move-object v15, v1

    .line 275
    invoke-interface/range {v3 .. v16}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->attachFileToSingleChat(ILjava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 278
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-nez v1, :cond_1

    const-string v0, "attachFileToSingleChat failed, return null!"

    .line 281
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17

    .line 285
    :cond_1
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-direct {v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    .line 286
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->addFileTransferingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-object v17
.end method

.method public transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 425
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->canTransferFileToGroupChat(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 428
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v6, p2

    invoke-static {v1, v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/FileUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 429
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transferFileToGroupChat, file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :try_start_0
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 432
    invoke-static {v4, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 434
    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->RENDER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    move-object/from16 v15, p3

    if-ne v15, v4, :cond_1

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->RENDER:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    :goto_0
    move-object v15, v4

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    .line 431
    invoke-interface/range {v3 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->attachFileToGroupChat(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 434
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-nez v3, :cond_2

    const-string v0, "attachFileToGroupChat failed, return null!"

    .line 437
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 440
    :cond_2
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-direct {v1, v3, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    .line 441
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->addFileTransferingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-object v2
.end method
