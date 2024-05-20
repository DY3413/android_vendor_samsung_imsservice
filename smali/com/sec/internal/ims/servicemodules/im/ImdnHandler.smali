.class public Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;
.super Ljava/lang/Object;
.source "ImdnHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImdnHandler"


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

.field private mContext:Landroid/content/Context;

.field private mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field private mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;


# direct methods
.method public static synthetic $r8$lambda$PAvi35PO_xWP5trf69gfrgE7frw(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->lambda$getMessageListToRead$0(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hqASee7OsQJVScRW8bSm1aO3CKw(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->lambda$getMessagesForReceivedImdn$1(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 45
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 46
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    .line 47
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    .line 48
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    return-void
.end method

.method private getMessageListToRead(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 276
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v2, v1, v3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_1
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private getMessagesForReceivedImdn(ZLcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 342
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne p2, p1, :cond_1

    .line 343
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDeliveredTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p3, p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 344
    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 345
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 346
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    :cond_0
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_2

    .line 352
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_0

    .line 358
    :cond_1
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method private handleReadMessageForNonRcs(ILcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)Z"
        }
    .end annotation

    .line 293
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 295
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {p0, v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    if-nez p0, :cond_0

    .line 299
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "readMessage: cap is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 300
    :cond_0
    sget p1, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p0, p1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isEstablishedState()Z

    move-result p0

    if-nez p0, :cond_2

    .line 301
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 302
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 303
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendDisplayedNotificationDone()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private isValidImdnNotification(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 332
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne p1, p0, :cond_0

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$getMessageListToRead$0(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I
    .locals 4

    .line 283
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private static synthetic lambda$getMessagesForReceivedImdn$1(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I
    .locals 0

    .line 353
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private notifyCanceledNotificationToListener(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 4

    .line 405
    instance-of v0, p3, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v0, :cond_0

    .line 406
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 407
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    invoke-interface {v0, p3, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V

    goto :goto_0

    .line 409
    :cond_0
    instance-of v0, p3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v0, :cond_2

    .line 410
    move-object v0, p3

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 412
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_NOTIFICATION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 415
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object p3

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p2

    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V

    :cond_2
    return-void
.end method

.method private onCancelMessagesFailed(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 397
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 398
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 399
    invoke-interface {v0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onCancelMessageResponse(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private releaseLegacyLatching(Lcom/sec/internal/ims/servicemodules/im/ImSession;ILcom/sec/ims/util/ImsUri;)V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V

    .line 393
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getLatchingProcessor()Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->removeUriFromLatchingList(Lcom/sec/ims/util/ImsUri;I)Z

    return-void
.end method

.method private sendDisplayedNotification(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRespondDisplay()Z

    move-result p0

    .line 313
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 314
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 322
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not update message with status FAILED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    :cond_2
    :goto_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDisplayedTimestamp(J)V

    .line 317
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isDisplayedNotificationRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 318
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 319
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :cond_3
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    const/16 p0, 0xbc4

    .line 327
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_4
    return-void
.end method

.method private updateDbForReadMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 261
    instance-of p0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not update message with status FAILED: messageId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 262
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDisplayedTimestamp(J)V

    .line 264
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 265
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateImdnStatusAndNotifyToListener(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;ZLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Z",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 373
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 374
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onImdnNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V

    .line 375
    invoke-direct {p0, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->updateRevocationStatus(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 378
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 380
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V

    goto :goto_0

    .line 382
    :cond_1
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 384
    move-object v3, v0

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateRevocationStatus(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 2

    .line 365
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 367
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMsgFromListForRevoke(Ljava/lang/String;)V

    .line 368
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromPendingList(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected cancelMessages(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelMessages: cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " imdnIds : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result v1

    .line 94
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "cancelMessages: Session not found in the cache."

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->onCancelMessagesFailed(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCanceledNotification: conversationId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", imdnIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelMessages(Ljava/util/List;)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->onCancelMessagesFailed(Ljava/lang/String;Ljava/util/List;)V

    .line 108
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getBigDataProcessor()Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

    move-result-object p0

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;->onMessageCancelSent(II)V

    return-void
.end method

.method protected onCanceledNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V
    .locals 6

    .line 175
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCanceledNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mConversationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mOwnImsi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mOwnImsi:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mConversationId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mImdnId:Ljava/lang/String;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v1, v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "onCanceledNotificationReceived: Couldn\'t find the im message."

    .line 185
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 189
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v2, v3, :cond_2

    .line 190
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onCanceledNotificationReceived: ignore. current status="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p0, "onCanceledNotificationReceived: Session not found."

    .line 196
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCanceledNotificationReceived: conversationId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", imdnId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onCanceledNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V

    .line 204
    invoke-direct {p0, p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->notifyCanceledNotificationToListener(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 205
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 206
    iget-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mUserAlias:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateParticipantAlias(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    :cond_4
    return-void
.end method

.method protected onComposingNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V
    .locals 11

    .line 211
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComposingNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "onComposingNotificationReceived: Session not found."

    .line 214
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 219
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mUri:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 220
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    .line 221
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isBlockedNumber(ILcom/sec/ims/util/ImsUri;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 225
    :cond_1
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V

    if-nez v3, :cond_2

    .line 228
    invoke-direct {p0, v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->releaseLegacyLatching(Lcom/sec/internal/ims/servicemodules/im/ImSession;ILcom/sec/ims/util/ImsUri;)V

    .line 232
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAliasEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 233
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mUserAlias:Ljava/lang/String;

    .line 234
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 235
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateParticipantAlias(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    goto :goto_0

    :cond_3
    const-string v4, ""

    :cond_4
    :goto_0
    move-object v0, v4

    .line 239
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->mChatEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 240
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    iget-boolean v9, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mIsComposing:Z

    iget v10, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mInterval:I

    move-object v7, v2

    move-object v8, v0

    invoke-interface/range {v4 .. v10}, Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;->onComposingNotificationReceived(Ljava/lang/String;ZLcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected onImdnNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V
    .locals 7

    .line 133
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImdnNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mImdnId:Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "onImdnNotificationReceived: Couldn\'t find the im message."

    .line 136
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 140
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getNotificationStatus(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v2

    .line 142
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->isValidImdnNotification(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onImdnNotificationReceived: ignore. current status="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p0, "onImdnNotificationReceived: Session not found."

    .line 149
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImdnNotificationReceived: chatId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", convId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", contId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", imdnId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", remoteUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 155
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 158
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    .line 159
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    const-string/jumbo v5, "use_aggregation_displayed_imdn"

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 162
    :goto_0
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6, v1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->getMessagesForReceivedImdn(ZLcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->updateImdnStatusAndNotifyToListener(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;ZLjava/util/List;)V

    if-nez v3, :cond_4

    .line 164
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->releaseLegacyLatching(Lcom/sec/internal/ims/servicemodules/im/ImSession;ILcom/sec/ims/util/ImsUri;)V

    .line 166
    :cond_4
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v1, v4, :cond_5

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v1, v4, :cond_6

    :cond_5
    if-nez v3, :cond_6

    .line 167
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateServiceAvailability(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    .line 169
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 170
    iget-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mUserAlias:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateParticipantAlias(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    :cond_7
    return-void
.end method

.method protected onSendImdnFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;)V
    .locals 5

    .line 245
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendImdnFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;->mImdnId:Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "onSendImdnFailed: Message not found."

    .line 248
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 251
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "onSendImdnFailed: Session not found."

    .line 253
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 256
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onSendImdnFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    return-void
.end method

.method protected readMessages(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readMessage: cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result v1

    .line 55
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->readMessagesforCloudSync(ILjava/util/List;)V

    if-eqz p3, :cond_1

    .line 58
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, p3, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p3

    .line 60
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->updateDbForReadMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    :cond_0
    return-void

    .line 65
    :cond_1
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p0, "readMessage: Session not found in the cache."

    .line 67
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDisplayedNotification: chatId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", convId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", contId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", imdnIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->getMessageListToRead(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "readMessage: not registered, mark status as displayed."

    .line 78
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateDesiredNotificationStatusAsDisplay(Ljava/util/List;)V

    return-void

    .line 83
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needToCapabilityCheckForImdn(Z)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, v1, p3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->handleReadMessageForNonRcs(ILcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 87
    :cond_4
    invoke-direct {p0, p3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->sendDisplayedNotification(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/List;)V

    return-void
.end method

.method protected sendComposingNotification(Ljava/lang/String;IZ)V
    .locals 3

    .line 112
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendComposingNotification: chatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " typing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "Session not found in the cache."

    .line 116
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 121
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "sendComposingNotification: not registered"

    .line 122
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isAutoAccept()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImSessionStart()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->WHEN_PRESSES_SEND_BUTTON:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    if-eq p0, v0, :cond_2

    const/4 p0, 0x0

    .line 127
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->acceptSession(Z)V

    .line 129
    :cond_2
    invoke-virtual {p1, p3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendComposing(ZI)V

    return-void
.end method
