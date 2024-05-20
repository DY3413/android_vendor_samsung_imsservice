.class public Lcom/sec/internal/ims/servicemodules/im/ImProcessor;
.super Landroid/os/Handler;
.source "ImProcessor.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

.field private mContext:Landroid/content/Context;

.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field private mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

.field private final mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;


# direct methods
.method public static synthetic $r8$lambda$9xNoOodDbvROYjZ1_hKnk5ERp_I(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;ILcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->lambda$onProcessPendingMessages$7(ILcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H6tdzjPSQIojNTQG2-2GyJ3-gAo(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->lambda$getLastSentMessagesStatus$6(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tp8z6dEzRrMzY5V2I97aT-VkOdQ(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->lambda$sendMessage$0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z4inaCWVuEHbJLvHBNjhBxkb-pE(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->lambda$deleteAllMessages$5(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$chK54x1935hixB48W3IUvfJsTbg(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;Z)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->lambda$deleteMessages$3(Ljava/util/List;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eYIh-5FuppCN_1blwYhKWdJpZno(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/Map;ZLjava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->lambda$deleteMessagesByImdnId$4(Ljava/util/Map;ZLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fGzVuRHNuu6kwGmR2vdnhb5FWVY(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->lambda$reportMessages$2(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q6pB2EFmxatHZAQhZpwgqmYeBeA(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->lambda$resendMessage$1(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V
    .locals 1

    .line 75
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    invoke-static {}, Lcom/sec/internal/helper/CollectionUtils;->createArrayListMultimap()Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    .line 76
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mContext:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 78
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 79
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    return-void
.end method

.method private isDuplicateMessage(ILcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)Z
    .locals 3

    .line 720
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p1

    .line 721
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    .line 720
    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 723
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicated message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isDeliveredNotificationRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDeliveredNotification: chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", convId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 725
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$deleteAllMessages$5(Ljava/util/List;Z)V
    .locals 3

    .line 466
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAllMessages: list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessagesforCloudSyncUsingChatId(Ljava/util/List;Z)V

    .line 468
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 469
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteAllMessages(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$deleteMessages$3(Ljava/util/List;Z)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 424
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage: list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " localWipeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessagesforCloudSyncUsingMsgId(Ljava/util/List;Z)V

    .line 426
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 428
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(I)V

    goto :goto_0

    .line 432
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$deleteMessagesByImdnId$4(Ljava/util/Map;ZLjava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 449
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage: imdnIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " localWipeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessagesforCloudSyncUsingImdnId(Ljava/util/Map;ZLjava/lang/String;)V

    .line 451
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessages(Ljava/util/Map;Ljava/lang/String;)V

    .line 452
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$getLastSentMessagesStatus$6(Ljava/util/List;)V
    .locals 3

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadLastSentMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 503
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastSentMessagesStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " messages(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->notifyLastSentMessagesStatus(Ljava/util/List;)V

    goto :goto_0

    .line 507
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->notifyLastSentMessagesStatus(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onProcessPendingMessages$7(ILcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/List;)V
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 705
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingNotifications(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$reportMessages$2(Ljava/util/List;Ljava/lang/String;)V
    .locals 32

    move-object/from16 v0, p0

    .line 356
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 357
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportMessages: list="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string v4, "onekey_report_psi"

    invoke-interface {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->stringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "reportMessages: reportPSI is null"

    .line 360
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 363
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 364
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 368
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-object/from16 v15, p2

    invoke-virtual {v4, v3, v5, v15}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v14

    if-nez v14, :cond_1

    goto/16 :goto_4

    .line 372
    :cond_1
    new-instance v13, Ljava/util/Date;

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getSentTimestamp()J

    move-result-wide v3

    invoke-direct {v13, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 373
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v12

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 375
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 376
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 377
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 379
    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 378
    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    move-object v11, v4

    move-object v4, v3

    goto :goto_1

    :cond_2
    const-string v4, ""

    move-object v11, v3

    :goto_1
    if-eqz v12, :cond_7

    if-nez v11, :cond_3

    goto/16 :goto_4

    .line 386
    :cond_3
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v3, v1, v6, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v3

    if-nez v3, :cond_4

    .line 388
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    sget-object v18, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    const-string v10, "0"

    move-object v5, v1

    move-object v15, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v1

    move-object v1, v12

    move-object/from16 v12, v18

    invoke-virtual/range {v3 .. v12}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object/from16 v17, v1

    move-object v15, v11

    move-object v1, v12

    :goto_2
    move-object v12, v3

    .line 392
    instance-of v3, v14, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    const-string v4, "display_delivery"

    if-eqz v3, :cond_5

    .line 393
    move-object v3, v14

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 394
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v21

    .line 395
    invoke-static {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v22

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v30

    const-string v24, "0"

    move-object/from16 v18, v5

    move-object/from16 v20, v12

    .line 394
    invoke-virtual/range {v18 .. v30}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v3

    .line 396
    invoke-virtual {v13}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v15, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setSpamInfo(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v12, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    .line 398
    invoke-virtual {v12, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    move-object/from16 v20, v2

    move-object v1, v12

    goto :goto_3

    .line 400
    :cond_5
    move-object v3, v14

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 401
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    .line 402
    invoke-static {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v10, "1"

    move-object v3, v5

    move-object v4, v6

    move-object v5, v12

    move-object v6, v7

    move-object v7, v8

    move-object v8, v2

    move-object/from16 v31, v12

    move/from16 v12, v18

    move-object/from16 v18, v13

    move/from16 v13, v19

    move-object/from16 v19, v14

    move/from16 v14, v20

    move-object/from16 v20, v2

    move-object v2, v15

    move-object/from16 v15, v21

    .line 401
    invoke-virtual/range {v3 .. v15}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v3

    .line 403
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setSpamInfo(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v31

    .line 404
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->attachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 406
    :goto_3
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 409
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "reportMessages: not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    return-void
.end method

.method private synthetic lambda$resendMessage$1(I)V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImMessage(I)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p1

    if-nez p1, :cond_0

    .line 330
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "resendMessage: message not found in the cache."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_2

    .line 336
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 337
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    :cond_1
    return-void

    .line 342
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v1, v2, :cond_3

    .line 343
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->sendMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$sendMessage$0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p5

    move/from16 v0, p6

    move/from16 v14, p12

    move-object/from16 v13, p15

    const/16 v19, 0x0

    const/4 v11, 0x4

    .line 230
    :try_start_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMessage: chatId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", body="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", disposition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", contentType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", requestMessageId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isBroadcastMsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isprotectedAccountMsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isGLSMsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p8

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", maapTrafficType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", referenceMessageImdnId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", referenceMessageType="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p11

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    if-nez v4, :cond_1

    :try_start_1
    const-string v0, "sendMessage: Session not found in the cache."

    .line 242
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 244
    invoke-interface {v3, v2, v14, v11, v15}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v19

    .line 249
    :cond_1
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    :try_start_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v11

    .line 250
    invoke-static {v11}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    .line 252
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    if-nez v18, :cond_3

    move-object/from16 v18, v3

    :try_start_3
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mKnoxBlockState:I

    const/4 v12, 0x1

    if-ne v3, v12, :cond_4

    .line 253
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-static {v3, v12}, Lcom/sec/internal/helper/BlockedNumberUtil;->isKnoxBlockedNumber(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 254
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v12, 0x4

    .line 255
    :try_start_4
    invoke-interface {v3, v2, v14, v12, v15}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v19

    :catch_0
    move-exception v0

    move-object v5, v15

    move-object/from16 v3, v19

    const/4 v8, 0x4

    goto/16 :goto_8

    :cond_3
    move-object/from16 v18, v3

    :cond_4
    const/4 v12, 0x4

    .line 260
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v11}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :try_start_5
    const-string/jumbo v12, "slm"

    .line 261
    invoke-virtual {v3, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isServiceRegistered(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 262
    invoke-virtual {v3, v11}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_7

    :cond_5
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 263
    invoke-virtual {v3, v11}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v3

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-ne v3, v12, :cond_7

    .line 264
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_6

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v3

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_MANY_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-ne v3, v12, :cond_7

    :cond_6
    const/16 v20, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    move/from16 v20, v3

    .line 266
    :goto_2
    :try_start_6
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-object/from16 v0, v18

    move-object/from16 v21, v4

    move-object v4, v12

    move-object/from16 v5, v21

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, v20

    move v12, v11

    const/4 v2, 0x4

    move/from16 v11, p7

    move/from16 v22, v12

    move/from16 v12, p6

    move/from16 v13, p8

    move/from16 v14, p13

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p14

    :try_start_7
    invoke-virtual/range {v3 .. v18}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 271
    :try_start_8
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 272
    invoke-interface {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_3

    .line 275
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-virtual/range {v21 .. v21}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object/from16 v5, p5

    .line 278
    :try_start_9
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v20, :cond_9

    const-string v6, "1"

    goto :goto_4

    :cond_9
    const-string v6, " 0"

    .line 280
    :goto_4
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    const v6, 0x40000001    # 2.0000002f

    move v8, v2

    move/from16 v7, v22

    move-object/from16 v2, p1

    .line 281
    :try_start_a
    invoke-static {v6, v7, v2, v4}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 283
    invoke-virtual/range {v21 .. v21}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v4

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v4, v6, :cond_a

    const-string v4, "allow_only_opengroupchat"

    .line 284
    invoke-interface {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 285
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Only OpenGroupChat is allowed, fallback to legacy(MMS)"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v0, v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v4, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {v3, v0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    return-object v3

    .line 291
    :cond_a
    invoke-virtual/range {v21 .. v21}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v0, p15

    if-eqz v0, :cond_b

    invoke-interface/range {p15 .. p15}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 292
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, v7, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILjava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 293
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->setGroupCcListUri(Ljava/util/Collection;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :cond_b
    move-object/from16 v4, v21

    .line 295
    :try_start_b
    invoke-virtual {v1, v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->sendMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    return-object v3

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v4, v21

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v5, p5

    :goto_5
    move v8, v2

    move-object/from16 v4, v21

    move-object/from16 v2, p1

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v5, p5

    move v8, v2

    move-object/from16 v4, v21

    move-object/from16 v2, p1

    goto :goto_7

    :catch_6
    move-exception v0

    move v8, v12

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v5, v15

    const/4 v8, 0x4

    goto :goto_7

    :catch_8
    move-exception v0

    move v8, v11

    :goto_6
    move-object v5, v15

    :goto_7
    move-object/from16 v3, v19

    goto :goto_8

    :catch_9
    move-exception v0

    move v8, v11

    move-object v5, v15

    move-object/from16 v3, v19

    move-object v4, v3

    .line 299
    :goto_8
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendMessage Exception e = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_d

    if-eqz v4, :cond_c

    .line 301
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_c

    .line 302
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    move/from16 v3, p12

    .line 303
    invoke-interface {v1, v2, v3, v8, v5}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_9

    :cond_c
    return-object v19

    :cond_d
    const-string v0, "sendMessage Failed."

    .line 307
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_e

    .line 308
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_e

    .line 309
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {v3, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    :cond_e
    return-object v3
.end method

.method private updateMessageSenderAlias(ILcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V
    .locals 3

    .line 736
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAliasEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 742
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result v1

    if-nez v1, :cond_3

    .line 743
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v1

    if-nez v1, :cond_1

    .line 745
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Participant is null"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 751
    iput-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 754
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 755
    :cond_4
    iget-object p0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateParticipantAlias(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected deleteAllMessages(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 465
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;Z)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 434
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method protected deleteMessagesByImdnId(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 448
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda7;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/Map;ZLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 454
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method protected getLastSentMessagesStatus(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 501
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected getMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;",
            ">;"
        }
    .end annotation

    .line 716
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method protected init(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    .line 84
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    return-void
.end method

.method protected onIncomingMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V
    .locals 13

    .line 518
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingMessageReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "session not found"

    .line 521
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 525
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 526
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onIncomingMessageReceived: chatId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", convId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", contId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", imdnId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 526
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v11, 0x0

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mKnoxBlockState:I

    if-ne v3, v4, :cond_1

    .line 531
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-static {v3, v5}, Lcom/sec/internal/helper/BlockedNumberUtil;->isKnoxBlockedNumber(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v4, v11

    :goto_0
    iput-boolean v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsBlockedIncomingSession:Z

    .line 533
    invoke-direct {p0, v2, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->isDuplicateMessage(ILcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 537
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isMuted()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "onIncomingMessageReceived, user reject GC text."

    .line 538
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 541
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDeviceId:Ljava/lang/String;

    .line 543
    invoke-direct {p0, v2, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->updateMessageSenderAlias(ILcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V

    .line 545
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-nez v3, :cond_5

    .line 546
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotRole()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 547
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->removeUriParametersAndHeaders(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_1

    .line 549
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v11, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V

    .line 551
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getLatchingProcessor()Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->removeUriFromLatchingList(Lcom/sec/ims/util/ImsUri;I)Z

    :cond_5
    :goto_1
    const/4 v3, 0x0

    .line 558
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->isMultipart(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 559
    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getSuggestion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v3, "onIncomingMessageReceived: message includes suggestion"

    .line 561
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getBody()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 563
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getContentType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 564
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getSuggestion()Ljava/lang/String;

    move-result-object v3

    :cond_6
    move-object v12, v3

    .line 568
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    if-eqz v3, :cond_7

    const-string v4, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 569
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 570
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v5

    invoke-virtual {v0, v5, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v7

    move-object v5, v1

    move-object v6, p1

    move-object v8, v12

    .line 569
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewIncomingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object v0

    goto :goto_2

    .line 572
    :cond_7
    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mIsRoutingMsg:Z

    if-eqz v3, :cond_8

    .line 573
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRequestUri:Lcom/sec/ims/util/ImsUri;

    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mPAssertedId:Lcom/sec/ims/util/ImsUri;

    iget-object v7, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    .line 574
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v9

    move v10, v2

    .line 573
    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getMsgRoutingType(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 575
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    if-ne v3, v4, :cond_8

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-nez v3, :cond_8

    .line 576
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 580
    :cond_8
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v11, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v7

    move-object v5, v1

    move-object v6, p1

    move-object v8, v12

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewIncomingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v3

    .line 582
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCcParticipants:Ljava/util/List;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 583
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCcParticipants:Ljava/util/List;

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILjava/util/Collection;)Ljava/util/Set;

    move-result-object v4

    .line 584
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->setGroupCcListUri(Ljava/util/Collection;)V

    .line 585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onIncomingMessageReceived, groupCcList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object v0, v3

    .line 589
    :goto_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->dumpIncomingMessageReceived(IZLjava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/Object;)V

    .line 592
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v3, v4, v5, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateServiceAvailability(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    .line 594
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getBigDataProcessor()Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

    move-result-object p0

    invoke-interface {p0, v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;->onMessageReceived(ILcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method

.method protected onIncomingSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 603
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIncomingSlmMessageReceived: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v15

    .line 606
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mParticipants:Ljava/util/List;

    iget-object v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 607
    invoke-virtual {v2, v15, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getNormalizedParticipants(ILjava/util/List;Lcom/sec/ims/util/ImsUri;)Ljava/util/Set;

    move-result-object v2

    .line 609
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v14, 0x0

    const/4 v13, 0x1

    if-le v3, v13, :cond_0

    move v3, v13

    goto :goto_0

    :cond_0
    move v3, v14

    .line 611
    :goto_0
    iget-boolean v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsLMM:Z

    if-nez v4, :cond_2

    .line 612
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v5, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v4, v15, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isBlockedNumber(ILcom/sec/ims/util/ImsUri;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 613
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;

    const/4 v2, 0x0

    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v5, 0x0

    iget-object v6, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOwnImsi:Ljava/lang/String;

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->rejectSlm(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;)V

    return-void

    .line 616
    :cond_1
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;

    const/16 v17, 0x0

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v6, v15, v14}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v18

    iget-object v6, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRawHandle:Ljava/lang/Object;

    const/16 v20, 0x0

    iget-object v8, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOwnImsi:Ljava/lang/String;

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v8

    invoke-direct/range {v16 .. v21}, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Message;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->acceptSlm(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 620
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 621
    :goto_1
    iget-object v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v15, v4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    .line 622
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v6, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOwnImsi:Ljava/lang/String;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v5, v2, v3, v6, v8}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v5

    if-nez v5, :cond_4

    .line 625
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v6, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v5

    :cond_4
    move-object v12, v5

    .line 627
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onIncomingSlmMessageReceived: chatId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", convId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", contId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", imdnId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 627
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_5

    .line 632
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v14, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V

    .line 634
    :cond_5
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContributionId:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    .line 635
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mConversationId:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setConversationId(Ljava/lang/String;)V

    .line 636
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContributionId:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setInReplyToContributionId(Ljava/lang/String;)V

    .line 637
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setOwnPhoneNum(Ljava/lang/String;)V

    .line 638
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setOwnImsi(Ljava/lang/String;)V

    .line 639
    iget-boolean v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsTokenUsed:Z

    invoke-virtual {v12, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setIsTokenUsed(Z)V

    .line 640
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    const/4 v3, 0x0

    .line 644
    iget-object v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 645
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->isMultipart(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "onIncomingSlmMessage: isMultipart"

    .line 646
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;

    iget-object v5, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    iget-object v6, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getSuggestion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v3, "onIncomingSlmMessage: message includes suggestion"

    .line 649
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getBody()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 651
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getContentType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 652
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->getSuggestion()Ljava/lang/String;

    move-result-object v3

    .line 653
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onIncomingSlmMessage: suggestion ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v6, v3

    if-eqz v2, :cond_7

    .line 657
    iget-boolean v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsPublicAccountMsg:Z

    if-nez v2, :cond_7

    const-string v0, "duplicate message, ignore"

    .line 658
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 660
    :cond_7
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v2, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 662
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 663
    invoke-virtual {v3, v15}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v4

    invoke-virtual {v3, v4, v15}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v5

    move-object v3, v12

    move-object/from16 v4, p1

    .line 662
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewIncomingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object v1

    move-object v10, v12

    move v9, v13

    move/from16 v16, v14

    goto :goto_3

    .line 665
    :cond_8
    iget-boolean v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsRoutingMsg:Z

    if-eqz v1, :cond_9

    .line 666
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v9, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRequestUri:Lcom/sec/ims/util/ImsUri;

    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mPAssertedId:Lcom/sec/ims/util/ImsUri;

    iget-object v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    .line 667
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    move-object v5, v12

    move-object v12, v1

    move v4, v13

    move v13, v2

    move/from16 v16, v14

    move v14, v15

    .line 666
    invoke-virtual/range {v8 .. v14}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getMsgRoutingType(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v1

    iput-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 668
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    if-ne v1, v2, :cond_a

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_a

    .line 669
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    iput-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    goto :goto_2

    :cond_9
    move-object v5, v12

    move v4, v13

    move/from16 v16, v14

    .line 673
    :cond_a
    :goto_2
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    move-object v3, v5

    move v9, v4

    move-object/from16 v4, p1

    move-object v10, v5

    move-object v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewIncomingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v1

    .line 675
    :goto_3
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_b

    iget-boolean v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsChatbotRole:Z

    if-eqz v2, :cond_b

    .line 676
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setChatbotMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;)V

    .line 677
    invoke-virtual {v10, v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIsChatbotRole(Z)V

    .line 680
    :cond_b
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mKnoxBlockState:I

    if-ne v2, v9, :cond_c

    .line 681
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-static {v2, v3}, Lcom/sec/internal/helper/BlockedNumberUtil;->isKnoxBlockedNumber(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v14, v9

    goto :goto_4

    :cond_c
    move/from16 v14, v16

    :goto_4
    iput-boolean v14, v10, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsBlockedIncomingSession:Z

    .line 683
    invoke-virtual {v10, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveSlmMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 685
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getBigDataProcessor()Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

    move-result-object v0

    invoke-interface {v0, v15, v1, v10}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;->onMessageReceived(ILcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 125
    invoke-interface {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendResponse: no participants for this chat"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

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

    .line 109
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 1

    .line 153
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 154
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;->onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    return-void
.end method

.method protected onProcessPendingMessages(I)V
    .locals 11

    .line 689
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "EVENT_PROCESS_PENDING_MESSAGES"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "num_of_display_notification_atonce"

    .line 691
    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v0

    .line 692
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 693
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 697
    :cond_1
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingMessages(I)V

    const/4 v3, 0x0

    .line 699
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessagesForPendingNotificationByChatId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 700
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pending notification list size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " limit : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_2

    .line 702
    invoke-static {v4, v0}, Lcom/sec/internal/helper/CollectionUtils;->partition(Ljava/util/List;I)Lcom/sec/internal/helper/CollectionUtils$Partition;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 703
    new-instance v6, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p1, v2, v5}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;ILcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/List;)V

    const-wide/16 v7, 0x3e8

    add-int/lit8 v5, v3, 0x1

    int-to-long v9, v3

    mul-long/2addr v9, v7

    invoke-virtual {p0, v6, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v3, v5

    goto :goto_1

    .line 710
    :cond_2
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingNotifications(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onSendMessageHandleReportFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;)V
    .locals 6

    .line 480
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendMessageHandleReportFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 483
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;->mImdnId:Ljava/lang/String;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 485
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mNeedToRemoveFromPendingList:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onSendMessageHandleReportFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    :cond_0
    const-string p0, "onSendMessageHandleReportFailed: Message not found."

    .line 488
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "onSendMessageHandleReportFailed: Session not found."

    .line 491
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mMessageEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected reportMessages(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 355
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected resendMessage(I)V
    .locals 1

    .line 327
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZZ",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v13, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v16, p10

    move/from16 v14, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v15, p15

    .line 226
    new-instance v0, Ljava/util/concurrent/FutureTask;

    move-object/from16 v17, v1

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;

    move-object/from16 v18, v0

    move-object v0, v1

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object/from16 v1, p0

    .line 317
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method protected sendMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 4

    .line 178
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage: message id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRequestMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, " 0"

    .line 185
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x40000001    # 2.0000002f

    .line 186
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3, v1}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 188
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    .line 189
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "pending_for_regi"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    goto :goto_0

    .line 195
    :cond_1
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    .line 198
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method
