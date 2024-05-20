.class public Lcom/sec/internal/ims/servicemodules/im/ImCache;
.super Ljava/lang/Object;
.source "ImCache.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CONCURRENT_SESSION:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "ImCache"

.field private static final MAX_CACHED_MESSAGE:I = 0x1e

.field private static final MAX_CACHED_SESSION:I = 0x1f4

.field private static sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# instance fields
.field private final mActiveSessions:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mCachingMessages:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mChatbotRoleUris:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private final mImSessions:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoaded:Z

.field private final mListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Ljava/util/Observer;

.field private final mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

.field private mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;


# direct methods
.method public static synthetic $r8$lambda$2Uxx8TFfc__ou_MvtVV8jllxmWY(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->lambda$deleteAllMessages$1(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4XTm1RbuibrTgIR01G3n8pnDHf8(Ljava/util/HashSet;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->lambda$deleteAllMessages$2(Ljava/util/HashSet;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wNSPwPST_-wI6F0MZRe7UkDUjoc(Lcom/sec/internal/ims/servicemodules/im/ImCache;Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->lambda$new$0(Ljava/util/Observable;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActiveSessions(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Landroid/util/LruCache;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPersister(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Lcom/sec/internal/ims/servicemodules/im/ImPersister;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateSession(Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->createSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadExtras(Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$munregisterObserver(Lcom/sec/internal/ims/servicemodules/im/ImCache;Ljava/util/Observable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    .line 92
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    .line 98
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    .line 109
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;

    const/16 v1, 0x1f4

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    .line 132
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    return-void
.end method

.method private cloudParticipantTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .locals 1

    const-string p0, "chat_id"

    .line 1028
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "uri"

    .line 1029
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    .line 1033
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    return-object v0
.end method

.method private cloudSessionTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .locals 14

    const-string p0, "chat_id"

    .line 996
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "own_sim_imsi"

    .line 997
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "direction"

    .line 998
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1000
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    const-string v0, "conversation_id"

    .line 1002
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "contribution_id"

    .line 1003
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "is_group_chat"

    .line 1005
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v3, "subject"

    .line 1006
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "chat_type"

    .line 1008
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    .line 1010
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    :goto_1
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    const-string v0, "chat_mode"

    .line 1012
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1013
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set own sim imsi: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sim_imsi"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    .line 1015
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1017
    :cond_4
    new-instance v13, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v5

    .line 1018
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v6

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v11

    const/4 v12, 0x0

    const-string v3, ""

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Lcom/sec/ims/util/ImsUri;)V

    return-object v13
.end method

.method private declared-synchronized createSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 6

    monitor-enter p0

    .line 414
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 415
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipantSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 416
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    goto :goto_0

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 421
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load participants: size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", values()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v2, v3, :cond_3

    .line 426
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 427
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setConversationId(Ljava/lang/String;)V

    .line 429
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 430
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setContributionId(Ljava/lang/String;)V

    goto :goto_2

    .line 432
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 433
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setContributionId(Ljava/lang/String;)V

    .line 436
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadPendingMessages(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 437
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 439
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatRevokeTimer()I

    move-result v3

    if-lez v3, :cond_5

    .line 440
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadMessageListForRevoke(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Ljava/util/List;

    move-result-object v3

    .line 441
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 442
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 446
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 448
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 449
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 450
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 451
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 453
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 454
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 455
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 456
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatData(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 457
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participants(Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 458
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->needToRevokeMessages(Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 459
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 460
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private deleteMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2410
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v0, :cond_0

    .line 2411
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 2413
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2415
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(I)V

    :cond_1
    return-void
.end method

.method private getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;

    monitor-enter v0

    .line 168
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 171
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2685
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getOrloadChatbotRoleUris()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2688
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2689
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryChatbotRoleUris(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2690
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2692
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4

    .line 2244
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeleteFtMessage: msgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " direction:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " transferState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2244
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->removeAutoResumeFileTimer()V

    .line 2247
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 2248
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 2251
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v2, :cond_1

    .line 2252
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->deleteFile()Z

    move-result v0

    .line 2253
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->deleteThumbnail()Z

    move-result v2

    .line 2254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isDeleted:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isThumbnailDeleted:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static synthetic lambda$deleteAllMessages$1(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .locals 0

    .line 2437
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$deleteAllMessages$2(Ljava/util/HashSet;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    .line 2437
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .line 99
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    .line 101
    :cond_0
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    if-eqz v0, :cond_1

    .line 102
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    .line 103
    :cond_1
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    if-eqz v0, :cond_2

    .line 104
    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    .line 106
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown observable :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", data : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private declared-synchronized loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 3

    monitor-enter p0

    .line 1309
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v0

    .line 1310
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1311
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 1312
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_1

    .line 1313
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    .line 1317
    :goto_1
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v0, :cond_2

    .line 1318
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1319
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1321
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setIsGroupChat(Z)V

    .line 1322
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContributionId(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setConversationId(Ljava/lang/String;)V

    .line 1326
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private loadMessageListForRevoke(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesIdsForRevoke(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 502
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "revoke messages count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 505
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 507
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 508
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 511
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 515
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 516
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 517
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v2

    .line 518
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 519
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 520
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private loadPendingMessages(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V
    .locals 6

    .line 464
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryPendingMessageIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 465
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pending messages count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 468
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 469
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 470
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 472
    instance-of v3, v5, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v3, :cond_1

    instance-of v3, v5, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 475
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_0

    .line 473
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_0

    .line 478
    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 481
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 482
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v3

    .line 483
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 484
    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v3, :cond_5

    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v3, :cond_4

    goto :goto_3

    .line 487
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_4

    .line 485
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v5

    invoke-virtual {v3, v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    .line 489
    :goto_4
    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v3, :cond_6

    .line 490
    move-object v3, v2

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 491
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setIsGroupChat(Z)V

    .line 492
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContributionId(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setConversationId(Ljava/lang/String;)V

    .line 495
    :cond_6
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 496
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    .line 2480
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 2481
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method private registerObserver(Ljava/util/Observable;)V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private registerParticipant(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 2553
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 2554
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    goto :goto_0

    .line 2556
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method private registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 2

    .line 2452
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    .line 2453
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 2454
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2455
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3

    .line 2524
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2525
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2526
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2527
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private unregisterMessage(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 2538
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2539
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2540
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2541
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2542
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unregisterObserver(Ljava/util/Observable;)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private unregisterParticipant(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 2566
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2567
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 2568
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unregisterSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 2

    .line 2466
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    .line 2467
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2468
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2469
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method private updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 243
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 244
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 257
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 258
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 270
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 271
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 284
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 285
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized addParticipant(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2205
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2206
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addToChatbotRoleUris(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2664
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 2665
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToChatbotRoleUris: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2668
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2493
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 2495
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Message is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeDB()V
    .locals 0

    .line 2699
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->closeDB()V

    return-void
.end method

.method public declared-synchronized cloudDeleteMessage(Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    .line 838
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloud delete message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 840
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 842
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v1, :cond_0

    .line 843
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 845
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 847
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 848
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cloudDeleteParticipant(Ljava/lang/String;)I
    .locals 0

    .line 899
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudDeleteParticipant(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cloudInsertMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 828
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudInsertMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public cloudInsertNotification(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 870
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudInsertNotification(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public cloudInsertParticipant(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 889
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudInsertParticipant(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public cloudUpdateMessage(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 0

    .line 859
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateMessage(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public cloudUpdateParticipant(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 0

    .line 910
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateParticipant(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public cloudUpdateSession(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateSession(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized cloudsearchAndInsertSession(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8

    monitor-enter p0

    .line 921
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloudsearchAndInsertSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    if-eqz p2, :cond_a

    .line 927
    :try_start_1
    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_3

    .line 931
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 932
    array-length v1, p2

    move v3, p1

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    const-string/jumbo v5, "uri"

    .line 933
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 935
    :cond_1
    aget-object v1, p2, p1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudSessionTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    .line 936
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v3

    .line 937
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    const-string v4, "central_msg_store"

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 939
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v3

    .line 940
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chatType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    aget-object v4, p2, p1

    const-string v5, "conversation_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 943
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v5, v3, :cond_2

    .line 944
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    goto :goto_1

    .line 946
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v7

    invoke-virtual {v5, v0, v3, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v4, :cond_3

    .line 949
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 950
    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setConversationId(Ljava/lang/String;)V

    .line 951
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->onSessionUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 953
    :cond_3
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getId()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 956
    :cond_4
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 957
    array-length v3, p2

    move v4, p1

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, p2, v4

    .line 958
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudParticipantTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 960
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertParticipant(Ljava/util/Collection;)V

    .line 962
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 963
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v0

    if-gtz v0, :cond_6

    move v2, p1

    :cond_7
    if-eqz v2, :cond_8

    .line 970
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 971
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getId()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    .line 973
    :cond_8
    monitor-exit p0

    return p1

    .line 977
    :cond_9
    monitor-exit p0

    return p1

    :catch_0
    move-exception p2

    goto :goto_4

    :cond_a
    :goto_3
    :try_start_3
    const-string p2, "cloudsearchAndInsertSession: no values inserted"

    .line 928
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 929
    monitor-exit p0

    return p1

    .line 984
    :goto_4
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 985
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cloudupdateNotification(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 0

    .line 879
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateNotification(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized deleteAllMessages(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 2425
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2426
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllMessageIdsByChatId(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 2427
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAllMessages ft message ids : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2429
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2431
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 2435
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2436
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2437
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashSet;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Ljava/util/List;)V

    .line 2441
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2442
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessage(I)V
    .locals 0

    monitor-enter p0

    .line 2394
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2395
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessages(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 2403
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2404
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2406
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessagesforCloudSyncUsingChatId(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 2349
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessagesUsingChatId(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2356
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2357
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    .line 2358
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 2359
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2361
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_0

    .line 2365
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2367
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto :goto_0

    .line 2372
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2373
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v0, p2, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingChatId(Ljava/util/List;ZLjava/lang/String;)V

    .line 2375
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    .line 2376
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v1, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingChatId(Ljava/util/List;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2378
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deleteMessagesforCloudSyncUsingImdnId(Ljava/util/Map;ZLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2311
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingImdnId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2317
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2318
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    invoke-virtual {p0, v5, v4, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2320
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    .line 2321
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 2322
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_0

    .line 2325
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto :goto_0

    .line 2331
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMessagesforCloudSyncUsingImdnId: msgListSlot1.size = "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " msgListSlot2.size = "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2332
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2331
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2335
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v0, p2, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingImdnId(Ljava/util/List;ZLjava/lang/String;)V

    .line 2337
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    .line 2338
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, v1, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingImdnId(Ljava/util/List;ZLjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public deleteMessagesforCloudSyncUsingMsgId(Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 2275
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingMsgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 2277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2282
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2283
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    .line 2284
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message imsi "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "getphoneid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v8, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 2286
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_0

    .line 2289
    :cond_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto :goto_0

    .line 2294
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 2295
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v0, p2, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingMsgId(Ljava/util/List;ZLjava/lang/String;)V

    .line 2298
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2299
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, v1, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingMsgId(Ljava/util/List;ZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public declared-synchronized deleteParticipant(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2214
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterParticipant(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2215
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 2

    monitor-enter p0

    .line 2232
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Ljava/util/List;)V

    .line 2233
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteParticipant(Ljava/util/Collection;)V

    .line 2234
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 2235
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2236
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getActiveSessions()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    .line 2594
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getAllImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 667
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllImSessionByParticipants chatType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 670
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 674
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllSessionByParticipant(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 675
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 680
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 683
    :cond_2
    monitor-exit p0

    return-object v1

    :cond_3
    :goto_1
    :try_start_1
    const-string p1, "getImSessionByParticipants: Couldn\'t load from db."

    .line 676
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    monitor-exit p0

    return-object v2

    .line 671
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAllImSessions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 1165
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 0

    .line 1207
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1208
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz p1, :cond_0

    .line 1209
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFtMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 0

    .line 1224
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1225
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz p1, :cond_0

    .line 1226
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getFtMessageforFtRequest(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 4

    monitor-enter p0

    .line 696
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFtMessageforFtRequest chatid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " fileTransferId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_4

    if-nez p5, :cond_0

    goto :goto_1

    .line 703
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    if-eqz v2, :cond_1

    .line 705
    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->findFtMessage(Ljava/lang/String;JLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_3

    const-string p2, "getFtMessageforFtRequest Couldn\'t find a FtMessage in ImSession."

    .line 709
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p2, p5, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryFtMessageByFileTransferId(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 712
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    const-string p1, "getFtMessageforFtRequest Couldn\'t find a FtMessage by fileTransferId in db."

    .line 714
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    monitor-exit p0

    return-object v1

    .line 719
    :cond_3
    monitor-exit p0

    return-object p2

    .line 699
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFtMsrpMessage(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1242
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1243
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v2, :cond_1

    .line 1244
    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    .line 1245
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->getRawHandle()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public getImMessage(I)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 0

    .line 1175
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1176
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz p1, :cond_0

    .line 1177
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 0

    .line 1192
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1193
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz p1, :cond_0

    .line 1194
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 546
    :cond_0
    monitor-enter p0

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 548
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized getImSessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 553
    monitor-exit p0

    return-object v0

    .line 556
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 557
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p3, :cond_1

    .line 558
    monitor-exit p0

    return-object v2

    .line 562
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    if-nez p1, :cond_3

    .line 564
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getImSessionByContributionId: Couldn\'t load from db."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    monitor-exit p0

    return-object v0

    .line 568
    :cond_3
    :try_start_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getImSessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 4

    monitor-enter p0

    .line 581
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImSessionByConversationId cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isGroupChat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 583
    monitor-exit p0

    return-object v0

    .line 586
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 587
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-ne v3, p3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 588
    monitor-exit p0

    return-object v2

    .line 592
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    if-nez p1, :cond_3

    .line 595
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getImSessionByConversationId: Couldn\'t load from db."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    monitor-exit p0

    return-object v0

    .line 599
    :cond_3
    :try_start_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .line 618
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    monitor-enter p0

    .line 632
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImSessionByParticipants chatType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " imsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 635
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 639
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 640
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    .line 641
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chat Type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " imsi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v4

    if-ne v4, p2, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 644
    monitor-exit p0

    return-object v2

    .line 648
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    if-nez p1, :cond_3

    .line 650
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getImSessionByParticipants: Couldn\'t load from db."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    monitor-exit p0

    return-object v0

    .line 654
    :cond_3
    :try_start_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 636
    :cond_4
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getImSessionByRawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 3

    monitor-enter p0

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 610
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasImSessionInfo(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 611
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 614
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1

    monitor-enter p0

    .line 1043
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1045
    monitor-exit p0

    return-object v0

    .line 1048
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1050
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 1053
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 2

    monitor-enter p0

    .line 1289
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1291
    monitor-exit p0

    return-object p1

    .line 1293
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1295
    monitor-exit p0

    return-object v0

    .line 1298
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1339
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    .line 1340
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1341
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1342
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1344
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getMessageIdsForDisplayAggregation: list="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public declared-synchronized getMessages(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1063
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 1074
    :try_start_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1076
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1070
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 1079
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1080
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1081
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1082
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1085
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1129
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1132
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1134
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1136
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1139
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1140
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1141
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1142
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1145
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesForPendingNotificationByChatId(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1260
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageIdsForPendingNotification(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1261
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pending notifications count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1266
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1267
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1269
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1272
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1273
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1274
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1276
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesUsingChatId(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1089
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1091
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1094
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1095
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1096
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1099
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesUsingChatIDExceptPending(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1102
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1107
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesUsingChatID(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1110
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1111
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1117
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getNotificationStatus(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1373
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryNotificationStatus(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParticipants(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation

    .line 1355
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1357
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 0

    .line 1155
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method public getPersister()Lcom/sec/internal/ims/servicemodules/im/ImPersister;
    .locals 0

    .line 2703
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    return-object p0
.end method

.method public hasFileTransferInprogress()Z
    .locals 2

    .line 2617
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2618
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2619
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v1, :cond_0

    .line 2620
    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized hasProcessingFileTransfer()Z
    .locals 3

    monitor-enter p0

    .line 2634
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2635
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    .line 2636
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    .line 2639
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initializeLruCache(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/16 p1, 0x64

    .line 184
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->resize(I)V

    return-void
.end method

.method public declared-synchronized isChatbotRoleUri(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2678
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 2679
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 2681
    monitor-exit p0

    return p1
.end method

.method public isEstablishedSessionExist()Z
    .locals 1

    .line 2603
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2604
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isEstablishedState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized isLoaded()Z
    .locals 1

    monitor-enter p0

    .line 397
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 3

    monitor-enter p0

    .line 293
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 294
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Alraedy loaded"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    .line 298
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 299
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    .line 300
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    const/4 p1, 0x1

    .line 301
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadImSessionByChatType(Z)V
    .locals 3

    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatType(Z)Ljava/util/List;

    move-result-object p1

    .line 309
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadImSessionByChatType loaded chat ids : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 310
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 312
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 315
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadImSessionForAutoRejoin(Z)V
    .locals 4

    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionForAutoRejoin(Z)Ljava/util/List;

    move-result-object v0

    .line 324
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImSessionForAutoRejoin isForAll : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", Autorejoin chat ids : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 326
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 330
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadImSessionWithFailedFTMessages()V
    .locals 4

    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllChatIDwithFailedFTMessages()Ljava/util/List;

    move-result-object v0

    .line 358
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImSessionWithFailedFTMessages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed message(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 361
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 364
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadImSessionWithPendingMessages()V
    .locals 4

    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllChatIDwithPendingMessages()Ljava/util/List;

    move-result-object v0

    .line 341
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImSessionWithPendingMessages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pending message(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 344
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 347
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadLastSentMessages(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryLastSentMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .line 1528
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    monitor-enter p0

    .line 1533
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeNewEmptySession: chatType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ownImsi= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1533
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1539
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1541
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v2, v3, :cond_1

    .line 1542
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v0

    .line 1543
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1545
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    .line 1548
    :goto_0
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1549
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1550
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1551
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1552
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1553
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1554
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1555
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v4

    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v5

    invoke-static {p2, p1, v4, v5}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1556
    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1557
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1558
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1559
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1560
    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1561
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1562
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1563
    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1564
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1565
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    .line 1567
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1568
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1570
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .locals 7

    monitor-enter p0

    .line 2099
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 2100
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 2101
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v2

    .line 2102
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 2104
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2105
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2106
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2107
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2108
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2109
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2110
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2111
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2112
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 2113
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 2114
    invoke-virtual {v5, v0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 2115
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 2116
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 2117
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2118
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2119
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2120
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2121
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 2122
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2124
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v4, 0x0

    .line 2125
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 2126
    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2127
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2128
    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2129
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2130
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2131
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2132
    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2133
    invoke-virtual {p1, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2134
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2135
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2136
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2137
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object p1

    .line 2139
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2140
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2141
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .locals 7

    monitor-enter p0

    .line 2154
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 2155
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 2156
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v2

    .line 2157
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 2159
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2160
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2161
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2162
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2163
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2164
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2165
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2166
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2167
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 2168
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 2169
    invoke-virtual {v5, v0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 2170
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 2171
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 2172
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2173
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2174
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v4, 0x1

    .line 2175
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2176
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2177
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 2178
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2180
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v4, 0x0

    .line 2181
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 2182
    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2183
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2184
    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2185
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2186
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2187
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2188
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2189
    invoke-virtual {p1, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2190
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2191
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2192
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object p1

    .line 2194
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2195
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2196
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 8

    monitor-enter p0

    .line 1864
    :try_start_0
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    .line 1866
    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsPublicAccountMsg:Z

    if-eqz v1, :cond_0

    .line 1867
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 1869
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1870
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    .line 1871
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 1873
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeNewIncomingFtMessage msgType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1876
    iget-boolean v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    if-eqz v5, :cond_2

    .line 1877
    iget-boolean v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsLMM:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1881
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1882
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1883
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1884
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1885
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1886
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1887
    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1888
    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1889
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1890
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1891
    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    .line 1892
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-wide v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileSize:J

    .line 1893
    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mThumbPath:Ljava/lang/String;

    .line 1894
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->thumbnailPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1895
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getThumbnailTool()Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->thumbnailTool(Lcom/sec/internal/ims/util/ThumbnailTool;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mTimeDuration:I

    .line 1896
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->timeDuration(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    .line 1897
    invoke-virtual {v6, v1, v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mUserAlias:Ljava/lang/String;

    .line 1898
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 1899
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v5

    .line 1900
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1901
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1902
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1903
    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    .line 1904
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1906
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 1907
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mInReplyToConversationId:Ljava/lang/String;

    .line 1908
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->inReplyToConversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    .line 1909
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1910
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDisposition:Ljava/util/Set;

    .line 1911
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    .line 1912
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileTransferId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    const/4 v0, 0x0

    .line 1913
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1914
    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_2
    invoke-virtual {p4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    .line 1915
    invoke-virtual {p4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1916
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1917
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v2, v1, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v0

    :cond_5
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsRoutingMsg:Z

    .line 1918
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1919
    invoke-virtual {p4, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1920
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1921
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1922
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1923
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1924
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    move-result-object p1

    .line 1926
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1927
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 9

    monitor-enter p0

    .line 1685
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1686
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 1687
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v2

    .line 1688
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsReferenceId(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 1689
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsReferenceType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v4

    .line 1690
    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsReferenceValue(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v5

    .line 1691
    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v6

    .line 1693
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1694
    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1695
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1696
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1697
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1698
    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1699
    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1700
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v8, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 1701
    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1702
    invoke-virtual {v7, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v8, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 1703
    invoke-virtual {v7, v0, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 1704
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 1705
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1706
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1707
    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1708
    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v7

    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1709
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1710
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 1711
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1713
    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :goto_0
    invoke-virtual {p5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 1714
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1715
    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1716
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mIsRoutingMsg:Z

    .line 1717
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1718
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1719
    invoke-virtual {p5, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1720
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1721
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDeviceId:Ljava/lang/String;

    .line 1722
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1723
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1724
    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1725
    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceImdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1726
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1727
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceValue(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1728
    invoke-virtual {p2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1729
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p2

    .line 1731
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1733
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p4

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p1, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReceiveRcsMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 8

    monitor-enter p0

    .line 1747
    :try_start_0
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    .line 1749
    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsPublicAccountMsg:Z

    if-eqz v1, :cond_0

    .line 1750
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 1753
    :cond_0
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "geo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1754
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 1757
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1759
    iget-boolean v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsLMM:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1761
    :goto_0
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    .line 1762
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v4

    .line 1763
    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v5

    .line 1765
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1766
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1767
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1768
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1769
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1770
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1771
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1772
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 1773
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1774
    invoke-virtual {v6, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 1775
    invoke-virtual {v6, v1, v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {p5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 1776
    invoke-virtual {p5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 1777
    invoke-virtual {p5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1778
    invoke-virtual {p5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1779
    invoke-virtual {p5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1780
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const/4 v0, 0x1

    .line 1781
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1782
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1783
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 1784
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1786
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_1
    invoke-virtual {p5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 1787
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1788
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1789
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v3, v0, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p5, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-boolean p5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsRoutingMsg:Z

    .line 1790
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1791
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImExtensionMNOHeaders:Ljava/util/Map;

    .line 1792
    invoke-static {p5}, Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper;->isVM2TextMsg(Ljava/util/Map;)Z

    move-result p5

    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isVM2TextMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1793
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mConversationId:Ljava/lang/String;

    .line 1794
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContributionId:Ljava/lang/String;

    .line 1795
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1796
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1797
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1798
    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1799
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1800
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p2

    .line 1802
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1804
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p4

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p1, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReceiveRcsMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1806
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    monitor-enter p0

    .line 1482
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeNewIncomingSession: chatType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1486
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1487
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1488
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1489
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 1490
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 1491
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1492
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1493
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v3

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v4

    invoke-static {p2, v2, v3, v4}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 1494
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1495
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1496
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1497
    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1498
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    const-string p3, ""

    .line 1499
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownGroupAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSubject:Ljava/lang/String;

    .line 1500
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->subject(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 1501
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    .line 1502
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    .line 1503
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sdpContentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1504
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1505
    iget-boolean p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    .line 1506
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sessionType(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1507
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1508
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    .line 1510
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1511
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1513
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1515
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewOutgoingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Network;ZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;Z)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/net/Network;",
            "ZZZ",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            "Z)",
            "Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    monitor-enter p0

    .line 2040
    :try_start_0
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p4}, Lcom/sec/internal/helper/FileUtils;->getSizeFromUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 2041
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez p8, :cond_0

    .line 2044
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p3, p4}, Lcom/sec/internal/helper/FileUtils;->getContentType(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v7, p8

    .line 2047
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2048
    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2049
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2050
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2051
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2052
    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2053
    invoke-virtual {v9, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2054
    invoke-virtual {v9, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2055
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2056
    invoke-virtual {v8, p4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->contentUri(Landroid/net/Uri;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2057
    invoke-virtual {v3, p3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2058
    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2059
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object v3, p5

    .line 2060
    invoke-virtual {v2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/4 v4, 0x0

    .line 2061
    invoke-virtual {v3, v6, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2062
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 2063
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2064
    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2065
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p6

    .line 2066
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2067
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2068
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2069
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p7

    .line 2070
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2071
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2072
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p14

    .line 2073
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setFileDisposition(Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p10

    .line 2074
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v3, p9

    .line 2075
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->extraFt(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v3, p12

    .line 2076
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v3, p13

    .line 2077
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2078
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v2, p15

    .line 2079
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isResizable(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2080
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    move-result-object v0

    .line 2082
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    move/from16 v2, p11

    .line 2083
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setFtSms(Z)V

    .line 2084
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2085
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    monitor-enter p0

    .line 1950
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    .line 1951
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInReplyToContributionId()Ljava/lang/String;

    move-result-object v5

    .line 1952
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-object/from16 v8, p2

    invoke-virtual {v8, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    goto :goto_0

    :cond_0
    move-object/from16 v8, p2

    move-object v5, v7

    .line 1956
    :goto_0
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1957
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1959
    :cond_1
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3}, Lcom/sec/internal/helper/FileUtils;->copyFileToCacheFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1961
    :goto_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1963
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v9, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v9

    if-nez v4, :cond_2

    .line 1966
    invoke-static {v6}, Lcom/sec/internal/helper/FileUtils;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 1969
    :cond_2
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v10

    if-eqz p9, :cond_3

    .line 1972
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 1975
    :cond_3
    sget-object v11, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "makeNewOutgoingFtMessage msgType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v11

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1978
    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1979
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1980
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1981
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1982
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1983
    invoke-virtual {v12, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1984
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getThumbnailTool()Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->thumbnailTool(Lcom/sec/internal/ims/util/ThumbnailTool;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1985
    invoke-virtual {v12, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1986
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1987
    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1988
    invoke-virtual {v11, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1989
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->contentUri(Landroid/net/Uri;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1990
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1991
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1992
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->thumbnailPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    const/4 v3, 0x0

    .line 1993
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->timeDuration(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v6, p5

    .line 1994
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1995
    invoke-virtual {v6, v9, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1996
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1997
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1998
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1999
    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2000
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2001
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2002
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2003
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->inReplyToConversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v4, p6

    .line 2004
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2005
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2006
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateFileTransferId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileTransferId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2007
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2008
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v3, p7

    .line 2009
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move/from16 v3, p10

    .line 2010
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isResizable(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move/from16 v3, p11

    .line 2011
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2012
    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v3, p12

    .line 2013
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->extinfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2014
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 2015
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2016
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    move-result-object v0

    .line 2018
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2019
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2020
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;"
        }
    .end annotation

    monitor-enter p0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    .line 1593
    :try_start_0
    invoke-virtual/range {v1 .. v16}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    monitor-enter p0

    if-eqz p8, :cond_0

    .line 1623
    :try_start_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    if-eqz p10, :cond_1

    .line 1625
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    goto :goto_0

    .line 1627
    :cond_1
    invoke-static {p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz p11, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 1635
    :goto_1
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v5

    .line 1637
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1638
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1639
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1640
    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1641
    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1642
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1643
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1644
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1645
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    :goto_2
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v7, p3

    .line 1646
    invoke-virtual {v6, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1647
    invoke-virtual {v7, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1648
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v6, p4

    .line 1649
    invoke-virtual {v3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v6, p5

    .line 1650
    invoke-virtual {v3, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1651
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1652
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1653
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1654
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v3, p6

    .line 1655
    invoke-virtual {v2, p6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move v3, p7

    .line 1657
    invoke-virtual {v2, p7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move/from16 v3, p9

    .line 1658
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1659
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1660
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p12

    .line 1661
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1662
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1663
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->flagMask(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p13

    .line 1664
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceImdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p14

    .line 1665
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p15

    .line 1666
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceValue(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1667
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0

    .line 1669
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1670
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1671
    monitor-exit p0

    return-object v0

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    monitor-enter p0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 1402
    :try_start_0
    invoke-virtual/range {v1 .. v13}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    monitor-enter p0

    .line 1425
    :try_start_0
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeNewOutgoingSession: chatType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " participants="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " imsi= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1425
    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v4

    .line 1430
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1431
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v5, v6, :cond_1

    .line 1432
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v5

    .line 1433
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1435
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    move-object/from16 v5, p10

    goto :goto_0

    :cond_2
    move-object/from16 v5, p10

    move-object/from16 v6, p11

    .line 1439
    :goto_0
    new-instance v7, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v7}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1440
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1441
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1442
    invoke-virtual {v8, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v7

    .line 1443
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v7

    .line 1444
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1445
    invoke-virtual {v8, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v7

    .line 1446
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v9

    invoke-static {p2, p1, v8, v9}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v7

    .line 1447
    invoke-virtual {v7, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1448
    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    move-object/from16 v3, p9

    .line 1449
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1450
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1451
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    const-string v2, ""

    .line 1452
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownGroupAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object v2, p4

    .line 1453
    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->subject(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p8

    .line 1454
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->iconPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object v2, p5

    .line 1455
    invoke-virtual {v0, p5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sdpContentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move/from16 v2, p6

    .line 1456
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->threadId(I)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p7

    .line 1457
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1458
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1459
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1460
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1461
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p12

    .line 1462
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sessionUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1463
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1465
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1466
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1468
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v2, v4, v0}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1470
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1852
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Ljava/util/Date;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Ljava/util/Date;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 3

    monitor-enter p0

    .line 1820
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1821
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1822
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1823
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1824
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1825
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1826
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1827
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1828
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1829
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1830
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1831
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1832
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1833
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    if-nez p4, :cond_0

    .line 1835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1836
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1837
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p1

    .line 1839
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1840
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyCloudMsgFtEvent(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    .locals 1

    monitor-enter p0

    .line 2385
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->notifyFtEvent(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2386
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queryChatMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 778
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryChatMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryFtMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 791
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryFtMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1

    monitor-enter p0

    .line 1383
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queryMessageNotification([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageNotification([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryParticipants([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 804
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipants([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySessions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 741
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public readMessagesforCloudSync(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2265
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReadRcsMessageList(ILjava/util/List;)V

    return-void
.end method

.method public removeActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    .line 2585
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized removeFromChatbotRoleUris(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2671
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 2672
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFromChatbotRoleUris: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2675
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public removeFromPendingList(I)V
    .locals 2

    .line 2506
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2508
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2509
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2510
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removed message from cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2512
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message is not in the cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public removeImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized sentMessageForCloudSync(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 2381
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onSentMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2382
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 1

    .line 2578
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateDesiredNotificationStatusAsDisplay(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 2648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2649
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2650
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    if-eqz v2, :cond_0

    .line 2652
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 2653
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDisplayedTimestamp(J)V

    .line 2654
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v3, v4, :cond_1

    .line 2655
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 2657
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2660
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateDesiredNotificationStatusAsDisplayed(Ljava/util/Collection;IJ)V

    return-void
.end method

.method public declared-synchronized updateParticipant(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2223
    :try_start_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2224
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateUriGenerator(I)V
    .locals 2

    monitor-enter p0

    .line 370
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUriGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p1

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 373
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 375
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
