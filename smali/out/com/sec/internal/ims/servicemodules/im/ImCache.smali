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
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->lambda$deleteAllMessages$1(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4XTm1RbuibrTgIR01G3n8pnDHf8(Ljava/util/HashSet;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->lambda$deleteAllMessages$2(Ljava/util/HashSet;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_SIE1FqFdO0XXyDLKx6-UO69pnQ(Lcom/sec/internal/ims/servicemodules/im/ImCache;Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->lambda$new$0(Ljava/util/Observable;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActiveSessions(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Landroid/util/LruCache;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPersister(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Lcom/sec/internal/ims/servicemodules/im/ImPersister;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateSession(Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->createSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadExtras(Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$munregisterObserver(Lcom/sec/internal/ims/servicemodules/im/ImCache;Ljava/util/Observable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    .line 93
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    .line 99
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    .line 110
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;

    const/16 v1, 0x1f4

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    .line 133
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    return-void
.end method

.method private cloudParticipantTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .registers 5

    const-string p0, "chat_id"

    .line 1049
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "uri"

    .line 1050
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    const-string/jumbo v1, "status"

    .line 1051
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 1052
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    .line 1051
    :goto_24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1056
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V

    return-object v1
.end method

.method private cloudSessionTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .registers 21

    move-object/from16 v0, p1

    const-string v1, "chat_id"

    .line 1008
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "own_sim_imsi"

    .line 1009
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "session_uri"

    .line 1010
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "direction"

    .line 1011
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_27

    .line 1013
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_27
    const-string v5, "conversation_id"

    .line 1015
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "contribution_id"

    .line 1016
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "is_group_chat"

    .line 1018
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_47

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_47

    const/4 v5, 0x1

    goto :goto_48

    :cond_47
    const/4 v5, 0x0

    :goto_48
    const-string/jumbo v6, "subject"

    .line 1019
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, "chat_type"

    .line 1021
    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_68

    if-eqz v5, :cond_5e

    .line 1023
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    goto :goto_60

    :cond_5e
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    :goto_60
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_68
    const-string v5, "chat_mode"

    .line 1025
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1026
    sget-object v11, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "set own sim imsi: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "sim_imsi"

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_98

    .line 1028
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1031
    :cond_98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_a5

    .line 1032
    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    move-object v14, v1

    goto :goto_a6

    :cond_a5
    move-object v14, v12

    :goto_a6
    const-string v1, "created_by"

    .line 1034
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "invited_by"

    .line 1035
    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1037
    new-instance v17, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v8

    .line 1038
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v15

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v16

    .line 1039
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_dc

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    goto :goto_dd

    :cond_dc
    move-object v1, v12

    :goto_dd
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ea

    invoke-static {v11}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_ec

    :cond_ea
    move-object/from16 v18, v12

    :goto_ec
    move-object/from16 v2, v17

    move-object v5, v7

    move-object v7, v8

    move-object v8, v15

    move-object v11, v0

    move-object v12, v13

    move-object/from16 v13, v16

    move-object v15, v1

    move-object/from16 v16, v18

    invoke-direct/range {v2 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)V

    return-object v17
.end method

.method private declared-synchronized createSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .registers 8

    monitor-enter p0

    .line 415
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 416
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipantSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 417
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    goto :goto_14

    .line 421
    :cond_2b
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 422
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

    .line 426
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v2, v3, :cond_93

    .line 427
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7a

    .line 428
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setConversationId(Ljava/lang/String;)V

    .line 430
    :cond_7a
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a0

    .line 431
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v2

    goto :goto_8f

    :cond_8b
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    :goto_8f
    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setContributionId(Ljava/lang/String;)V

    goto :goto_a0

    .line 433
    :cond_93
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a0

    .line 434
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setContributionId(Ljava/lang/String;)V

    .line 437
    :cond_a0
    :goto_a0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadPendingMessages(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 438
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 440
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatRevokeTimer()I

    move-result v3

    if-lez v3, :cond_d8

    .line 441
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadMessageListForRevoke(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Ljava/util/List;

    move-result-object v3

    .line 442
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_bc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 443
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bc

    .line 447
    :cond_d8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 449
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 450
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 451
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 452
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 454
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 455
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 456
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 457
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatData(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 458
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participants(Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 459
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->needToRevokeMessages(Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 460
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1
    :try_end_132
    .catchall {:try_start_1 .. :try_end_132} :catchall_134

    .line 450
    monitor-exit p0

    return-object p1

    :catchall_134
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private deleteMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .registers 3

    if-eqz p1, :cond_16

    .line 2448
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v0, :cond_c

    .line 2449
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 2451
    :cond_c
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2453
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(I)V

    :cond_16
    return-void
.end method

.method private getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .registers 2

    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;

    monitor-enter v0

    .line 169
    :try_start_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    if-nez v1, :cond_e

    .line 170
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 172
    :cond_e
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
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

    .line 2723
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getOrloadChatbotRoleUris()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_25

    .line 2726
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2727
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryChatbotRoleUris(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2728
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 2730
    :cond_25
    monitor-exit p0

    return-object v0

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .registers 6

    .line 2273
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

    .line 2274
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2273
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->removeAutoResumeFileTimer()V

    .line 2276
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4f

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4f

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4f

    .line 2277
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 2280
    :cond_4f
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v2, :cond_85

    .line 2281
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->deleteFile()Z

    move-result v0

    .line 2282
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->deleteThumbnail()Z

    move-result v2

    .line 2283
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

    :cond_85
    return-void
.end method

.method private static synthetic lambda$deleteAllMessages$1(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .registers 2

    .line 2475
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$deleteAllMessages$2(Ljava/util/HashSet;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .registers 2

    .line 2475
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 5

    .line 100
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-eqz v0, :cond_c

    .line 101
    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_42

    .line 102
    :cond_c
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    if-eqz v0, :cond_18

    .line 103
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_42

    .line 104
    :cond_18
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    if-eqz v0, :cond_24

    .line 105
    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_42

    .line 107
    :cond_24
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

    :goto_42
    return-void
.end method

.method private declared-synchronized loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .registers 5

    monitor-enter p0

    .line 1332
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v0

    .line 1333
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1334
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 1335
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v0, :cond_28

    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v0, :cond_1d

    goto :goto_28

    .line 1338
    :cond_1d
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_39

    .line 1336
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    .line 1340
    :goto_39
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v0, :cond_61

    .line 1341
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1342
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 1344
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setIsGroupChat(Z)V

    .line 1345
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContributionId(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setConversationId(Ljava/lang/String;)V

    .line 1349
    :cond_61
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_66

    .line 1350
    monitor-exit p0

    return-object p1

    :catchall_66
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private loadMessageListForRevoke(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Ljava/util/List;
    .registers 6
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

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesIdsForRevoke(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 503
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "revoke messages count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 506
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 508
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 509
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 510
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 512
    :cond_55
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 516
    :cond_5d
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_67
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 517
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 518
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v2

    .line 519
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 520
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 521
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    :cond_88
    return-object v0
.end method

.method private loadPendingMessages(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V
    .registers 8

    .line 465
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryPendingMessageIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 466
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

    .line 468
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 469
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 470
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 471
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v5

    if-eqz v5, :cond_75

    .line 473
    instance-of v3, v5, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v3, :cond_63

    instance-of v3, v5, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v3, :cond_59

    goto :goto_63

    .line 476
    :cond_59
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_37

    .line 474
    :cond_63
    :goto_63
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_37

    .line 479
    :cond_75
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 482
    :cond_7d
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 483
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v3

    .line 484
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 485
    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v3, :cond_af

    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v3, :cond_a5

    goto :goto_af

    .line 488
    :cond_a5
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_c0

    .line 486
    :cond_af
    :goto_af
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v5

    invoke-virtual {v3, v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    .line 490
    :goto_c0
    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v3, :cond_dc

    .line 491
    move-object v3, v2

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 492
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setIsGroupChat(Z)V

    .line 493
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContributionId(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setConversationId(Ljava/lang/String;)V

    .line 496
    :cond_dc
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 497
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_87

    :cond_e5
    return-void
.end method

.method private registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .registers 2

    .line 2518
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 2519
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method private registerObserver(Ljava/util/Observable;)V
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private registerParticipant(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 2591
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 2592
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    goto :goto_4

    .line 2594
    :cond_14
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method private registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .registers 4

    .line 2490
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    .line 2491
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 2492
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2493
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .registers 5

    .line 2562
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2563
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2564
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2565
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 2576
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2577
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2578
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2579
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2580
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

    goto :goto_9

    :cond_38
    return-void
.end method

.method private unregisterObserver(Ljava/util/Observable;)V
    .registers 2

    .line 223
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private unregisterParticipant(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 2604
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2605
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 2606
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method private unregisterSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .registers 4

    .line 2504
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    .line 2505
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2506
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2507
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .registers 3

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method private updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .registers 4

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 245
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .registers 4
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

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 258
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 259
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 271
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 272
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .registers 4
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

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 285
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 286
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_b

    :cond_1b
    return-void
.end method


# virtual methods
.method public addImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V
    .registers 2

    .line 195
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized addParticipant(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2234
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 2235
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addToChatbotRoleUris(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    if-eqz p1, :cond_3c

    if-eqz p2, :cond_3c

    .line 2702
    :try_start_5
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_3c

    .line 2703
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

    .line 2704
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    goto :goto_3c

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2706
    :cond_3c
    :goto_3c
    monitor-exit p0

    return-void
.end method

.method public addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 2531
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_f

    .line 2533
    :cond_8
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Message is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method

.method public cancelMessagesforCloudSync(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2303
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCancelRcsMessageList(ILjava/util/List;)V

    return-void
.end method

.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 405
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 406
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeDB()V
    .registers 1

    .line 2737
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->closeDB()V

    return-void
.end method

.method public declared-synchronized cloudDeleteMessage(Ljava/lang/String;)I
    .registers 5

    monitor-enter p0

    .line 839
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloud delete message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 841
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 843
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v1, :cond_2b

    .line 844
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 846
    :cond_2b
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 848
    :cond_2e
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(I)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_36

    .line 849
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cloudDeleteParticipant(Ljava/lang/String;)I
    .registers 2

    .line 902
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudDeleteParticipant(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cloudInsertMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 829
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudInsertMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public cloudInsertNotification(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 871
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudInsertNotification(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public cloudInsertParticipant(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 892
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudInsertParticipant(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public cloudUpdateMessage(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 3

    .line 860
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateMessage(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public cloudUpdateParticipant(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 3

    .line 913
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateParticipant(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public cloudUpdateSession(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 3

    .line 753
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateSession(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized cloudsearchAndInsertSession(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 16

    monitor-enter p0

    .line 924
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloudsearchAndInsertSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_16d

    const/4 p1, 0x0

    if-eqz p2, :cond_161

    .line 930
    :try_start_1a
    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_20

    goto/16 :goto_161

    .line 934
    :cond_20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 935
    array-length v1, p2

    move v3, p1

    :goto_27
    if-ge v3, v1, :cond_3c

    aget-object v4, p2, v3

    const-string/jumbo v5, "uri"

    .line 936
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 938
    :cond_3c
    aget-object v1, p2, p1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudSessionTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    .line 939
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v3

    .line 940
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    if-eqz v4, :cond_62

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    const-string v5, "central_msg_store"

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6e

    :cond_62
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 941
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_15d

    .line 943
    :cond_6e
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v3

    .line 944
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

    .line 945
    aget-object v4, p2, p1

    const-string v5, "conversation_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 946
    aget-object v5, p2, p1

    const-string/jumbo v6, "status"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_ad

    .line 947
    aget-object v5, p2, p1

    const-string/jumbo v6, "status"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_ae

    :cond_ad
    move v5, p1

    .line 946
    :goto_ae
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 948
    aget-object v6, p2, p1

    const-string v7, "inserted_time_stamp"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-nez v6, :cond_d3

    .line 949
    aget-object v6, p2, p1

    const-string v9, "inserted_time_stamp"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_d4

    :cond_d3
    move-wide v9, v7

    .line 951
    :goto_d4
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v6, v3, :cond_e3

    .line 952
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    goto :goto_f1

    .line 954
    :cond_e3
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v12

    invoke-virtual {v6, v0, v3, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    :goto_f1
    if-eqz v0, :cond_10d

    if-eqz v4, :cond_107

    .line 957
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_107

    .line 958
    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setConversationId(Ljava/lang/String;)V

    .line 959
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->onSessionUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 961
    :cond_107
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getId()I

    move-result p1
    :try_end_10b
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_10b} :catch_15f
    .catchall {:try_start_1a .. :try_end_10b} :catchall_16d

    monitor-exit p0

    return p1

    .line 964
    :cond_10d
    :try_start_10d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 965
    array-length v3, p2

    move v4, p1

    :goto_114
    if-ge v4, v3, :cond_122

    aget-object v6, p2, v4

    .line 966
    invoke-direct {p0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudParticipantTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_114

    .line 968
    :cond_122
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertParticipant(Ljava/util/Collection;)V

    .line 970
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_12b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 971
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v0

    if-gtz v0, :cond_12b

    move v2, p1

    :cond_13e
    if-eqz v2, :cond_15b

    if-eqz v5, :cond_15b

    cmp-long p2, v9, v7

    if-lez p2, :cond_149

    .line 979
    invoke-virtual {v1, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setInsertedTimeStamp(J)V

    .line 981
    :cond_149
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setState(I)V

    .line 982
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 983
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getId()I

    move-result p1
    :try_end_159
    .catch Ljava/lang/NullPointerException; {:try_start_10d .. :try_end_159} :catch_15f
    .catchall {:try_start_10d .. :try_end_159} :catchall_16d

    monitor-exit p0

    return p1

    .line 985
    :cond_15b
    monitor-exit p0

    return p1

    .line 989
    :cond_15d
    monitor-exit p0

    return p1

    :catch_15f
    move-exception p2

    goto :goto_168

    :cond_161
    :goto_161
    :try_start_161
    const-string p2, "cloudsearchAndInsertSession: no values inserted"

    .line 931
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_166
    .catch Ljava/lang/NullPointerException; {:try_start_161 .. :try_end_166} :catch_15f
    .catchall {:try_start_161 .. :try_end_166} :catchall_16d

    .line 932
    monitor-exit p0

    return p1

    .line 996
    :goto_168
    :try_start_168
    invoke-virtual {p2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_16b
    .catchall {:try_start_168 .. :try_end_16b} :catchall_16d

    .line 997
    monitor-exit p0

    return p1

    :catchall_16d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cloudupdateNotification(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 882
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateNotification(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized deleteAllMessages(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 2463
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 2464
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllMessageIdsByChatId(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 2465
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAllMessages ft message ids : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2467
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 2469
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_28

    .line 2473
    :cond_42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2474
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2475
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

    .line 2476
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Ljava/util/List;)V

    .line 2479
    :cond_77
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_1 .. :try_end_7c} :catchall_7e

    .line 2480
    monitor-exit p0

    return-void

    :catchall_7e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessage(I)V
    .registers 2

    monitor-enter p0

    .line 2432
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 2433
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessages(Ljava/util/Map;Ljava/lang/String;)V
    .registers 5
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

    .line 2441
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2442
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
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_33

    goto :goto_9

    .line 2444
    :cond_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessagesforCloudSyncUsingChatId(Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 2387
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessagesUsingChatId(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2394
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_2b
    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2395
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    .line 2396
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5a

    .line 2397
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 2399
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_2b

    .line 2403
    :cond_5a
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 2405
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto :goto_2b

    .line 2410
    :cond_71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_7c

    .line 2411
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v0, p2, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingChatId(Ljava/util/List;ZLjava/lang/String;)V

    .line 2413
    :cond_7c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_87

    .line 2414
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v1, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingChatId(Ljava/util/List;ZLjava/lang/String;)V
    :try_end_87
    .catchall {:try_start_1 .. :try_end_87} :catchall_89

    .line 2416
    :cond_87
    monitor-exit p0

    return-void

    :catchall_89
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deleteMessagesforCloudSyncUsingImdnId(Ljava/util/Map;ZLjava/lang/String;)V
    .registers 11
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

    .line 2349
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingImdnId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2351
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2355
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2356
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

    if-eqz v4, :cond_2a

    .line 2358
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    .line 2359
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_69

    .line 2360
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_2a

    .line 2363
    :cond_69
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto :goto_2a

    .line 2369
    :cond_76
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

    .line 2370
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2369
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_a7

    .line 2373
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v0, p2, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingImdnId(Ljava/util/List;ZLjava/lang/String;)V

    .line 2375
    :cond_a7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_b2

    .line 2376
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, v1, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingImdnId(Ljava/util/List;ZLjava/lang/String;)V

    :cond_b2
    return-void
.end method

.method public deleteMessagesforCloudSyncUsingMsgId(Ljava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 2313
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingMsgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 2315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2321
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    .line 2322
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

    .line 2323
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_77

    .line 2324
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_2a

    .line 2327
    :cond_77
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto :goto_2a

    .line 2332
    :cond_84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_8f

    .line 2333
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v0, p2, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingMsgId(Ljava/util/List;ZLjava/lang/String;)V

    .line 2336
    :cond_8f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_9a

    .line 2337
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, v1, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingMsgId(Ljava/util/List;ZLjava/lang/String;)V

    :cond_9a
    return-void
.end method

.method public declared-synchronized deleteParticipant(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2243
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterParticipant(Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 2244
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .registers 4

    monitor-enter p0

    .line 2261
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Ljava/util/List;)V

    .line 2262
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteParticipant(Ljava/util/Collection;)V

    .line 2263
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 2264
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 2265
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getActiveSessions()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    .line 2632
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getAllImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Ljava/util/Set;
    .registers 7
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

    .line 668
    :try_start_1
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

    .line 669
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_66

    .line 671
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_66

    .line 675
    :cond_32
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllSessionByParticipant(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 676
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_41

    goto :goto_5f

    .line 681
    :cond_41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 682
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_68

    goto :goto_45

    .line 684
    :cond_5d
    monitor-exit p0

    return-object v1

    :cond_5f
    :goto_5f
    :try_start_5f
    const-string p1, "getImSessionByParticipants: Couldn\'t load from db."

    .line 677
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_68

    .line 678
    monitor-exit p0

    return-object v2

    .line 672
    :cond_66
    :goto_66
    monitor-exit p0

    return-object v2

    :catchall_68
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAllImSessions()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 729
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;
    .registers 2
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

    .line 1188
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getConferenceTimestamp(Ljava/lang/String;)J
    .registers 4

    monitor-enter p0

    .line 2745
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2746
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    .line 2747
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getInsertedTimeStamp()J

    move-result-wide v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    monitor-exit p0

    return-wide v0

    .line 2749
    :cond_13
    monitor-exit p0

    const-wide/16 p0, -0x1

    return-wide p0

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .registers 2

    .line 1230
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1231
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz p1, :cond_b

    .line 1232
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFtMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .registers 4

    .line 1247
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1248
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz p1, :cond_b

    .line 1249
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getFtMessageforFtRequest(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .registers 10

    monitor-enter p0

    .line 697
    :try_start_1
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

    if-eqz p1, :cond_6d

    if-eqz p2, :cond_6d

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_6d

    if-nez p5, :cond_3d

    goto :goto_6d

    .line 704
    :cond_3d
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    if-eqz v2, :cond_4c

    .line 706
    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->findFtMessage(Ljava/lang/String;JLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p2

    goto :goto_4d

    :cond_4c
    move-object p2, v1

    :goto_4d
    if-nez p2, :cond_6b

    const-string p2, "getFtMessageforFtRequest Couldn\'t find a FtMessage in ImSession."

    .line 710
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p2, p5, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryFtMessageByFileTransferId(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 713
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_6f

    monitor-exit p0

    return-object p1

    :cond_64
    :try_start_64
    const-string p1, "getFtMessageforFtRequest Couldn\'t find a FtMessage by fileTransferId in db."

    .line 715
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_6f

    .line 716
    monitor-exit p0

    return-object v1

    .line 720
    :cond_6b
    monitor-exit p0

    return-object p2

    .line 700
    :cond_6d
    :goto_6d
    monitor-exit p0

    return-object v1

    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFtMsrpMessage(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1265
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1266
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v2, :cond_e

    .line 1267
    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    .line 1268
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->getRawHandle()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    return-object v1

    :cond_2b
    return-object v0
.end method

.method public getImMessage(I)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .registers 2

    .line 1198
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1199
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz p1, :cond_b

    .line 1200
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .registers 4

    .line 1215
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1216
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz p1, :cond_b

    .line 1217
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 547
    :cond_4
    monitor-enter p0

    .line 548
    :try_start_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    .line 549
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized getImSessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p2, :cond_6

    .line 554
    monitor-exit p0

    return-object v0

    .line 557
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 558
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_5b

    if-ne v3, p3, :cond_14

    .line 559
    monitor-exit p0

    return-object v2

    .line 563
    :cond_3c
    :try_start_3c
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    if-nez p1, :cond_4d

    .line 565
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getImSessionByContributionId: Couldn\'t load from db."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_5b

    .line 566
    monitor-exit p0

    return-object v0

    .line 569
    :cond_4d
    :try_start_4d
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_5b

    monitor-exit p0

    return-object p1

    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getImSessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .registers 8

    monitor-enter p0

    .line 582
    :try_start_1
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
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_79

    const/4 v0, 0x0

    if-nez p2, :cond_24

    .line 584
    monitor-exit p0

    return-object v0

    .line 587
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 588
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-ne v3, p3, :cond_32

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_56
    .catchall {:try_start_24 .. :try_end_56} :catchall_79

    if-eqz v3, :cond_32

    .line 589
    monitor-exit p0

    return-object v2

    .line 593
    :cond_5a
    :try_start_5a
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    if-nez p1, :cond_6b

    .line 596
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getImSessionByConversationId: Couldn\'t load from db."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_5a .. :try_end_69} :catchall_79

    .line 597
    monitor-exit p0

    return-object v0

    .line 600
    :cond_6b
    :try_start_6b
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_77
    .catchall {:try_start_6b .. :try_end_77} :catchall_79

    monitor-exit p0

    return-object p1

    :catchall_79
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .registers 5
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

    .line 619
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .registers 12
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

    .line 633
    :try_start_1
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

    .line 634
    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 633
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_b7

    .line 636
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    goto/16 :goto_b7

    .line 640
    :cond_3a
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 641
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    .line 642
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

    .line 643
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v4

    if-ne v4, p2, :cond_48

    if-eqz v3, :cond_48

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 644
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_94
    .catchall {:try_start_1 .. :try_end_94} :catchall_b9

    if-eqz v3, :cond_48

    .line 645
    monitor-exit p0

    return-object v2

    .line 649
    :cond_98
    :try_start_98
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    if-nez p1, :cond_a9

    .line 651
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getImSessionByParticipants: Couldn\'t load from db."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_98 .. :try_end_a7} :catchall_b9

    .line 652
    monitor-exit p0

    return-object v0

    .line 655
    :cond_a9
    :try_start_a9
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_b5
    .catchall {:try_start_a9 .. :try_end_b5} :catchall_b9

    monitor-exit p0

    return-object p1

    .line 637
    :cond_b7
    :goto_b7
    monitor-exit p0

    return-object v0

    :catchall_b9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getImSessionByRawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .registers 5

    monitor-enter p0

    .line 610
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 611
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasImSessionInfo(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_26

    if-eqz v2, :cond_f

    .line 612
    monitor-exit p0

    return-object v1

    .line 615
    :cond_23
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .registers 3

    monitor-enter p0

    .line 1066
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_20

    if-eqz v0, :cond_b

    .line 1068
    monitor-exit p0

    return-object v0

    .line 1071
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 1073
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_20

    monitor-exit p0

    return-object p1

    .line 1076
    :cond_1d
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .registers 6

    monitor-enter p0

    .line 1312
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_23

    if-eqz v0, :cond_a

    .line 1314
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 1316
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_23

    if-eqz v0, :cond_14

    .line 1318
    monitor-exit p0

    return-object v0

    .line 1321
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object p1

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;
    .registers 4
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

    .line 1362
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    .line 1363
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1365
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1367
    :cond_27
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
    .registers 7
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

    .line 1086
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_5d

    .line 1091
    :try_start_1b
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_29} :catch_33
    .catchall {:try_start_1b .. :try_end_29} :catchall_5d

    if-eqz v3, :cond_2f

    .line 1097
    :try_start_2b
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1099
    :cond_2f
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :catch_33
    move-exception v2

    .line 1093
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_f

    .line 1102
    :cond_38
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5b

    .line 1103
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1104
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_2b .. :try_end_5a} :catchall_5d

    goto :goto_48

    .line 1108
    :cond_5b
    monitor-exit p0

    return-object v0

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;
    .registers 8
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

    .line 1152
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1155
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 1157
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1159
    :cond_27
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1162
    :cond_2b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4e

    .line 1163
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1164
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1165
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_50

    goto :goto_3b

    .line 1168
    :cond_4e
    monitor-exit p0

    return-object v0

    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesForPendingNotificationByChatId(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    .line 1283
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageIdsForPendingNotification(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1284
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

    .line 1286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1288
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1289
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1290
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 1292
    :cond_51
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 1295
    :cond_59
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1296
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1297
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_78

    goto :goto_63

    .line 1299
    :cond_76
    monitor-exit p0

    return-object v0

    :catchall_78
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesUsingChatId(Ljava/util/List;)Ljava/util/List;
    .registers 8
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

    .line 1112
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1117
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_65

    .line 1118
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1119
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 1122
    :cond_46
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesUsingChatIDExceptPending(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1125
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1126
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 1130
    :cond_65
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesUsingChatID(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1132
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1133
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1134
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catchall {:try_start_1 .. :try_end_83} :catchall_86

    goto :goto_71

    .line 1140
    :cond_84
    monitor-exit p0

    return-object v0

    :catchall_86
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getNotificationStatus(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .registers 3

    if-eqz p1, :cond_c

    if-nez p2, :cond_5

    goto :goto_c

    .line 1396
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryNotificationStatus(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParticipants(Ljava/lang/String;)Ljava/util/Set;
    .registers 2
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

    .line 1378
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1380
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .registers 2

    .line 1178
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method public getPersister()Lcom/sec/internal/ims/servicemodules/im/ImPersister;
    .registers 1

    .line 2741
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    return-object p0
.end method

.method public hasFileTransferInprogress()Z
    .registers 3

    .line 2655
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2656
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2657
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v1, :cond_f

    .line 2658
    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized hasProcessingFileTransfer()Z
    .registers 4

    monitor-enter p0

    .line 2672
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2673
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_31

    if-nez v1, :cond_f

    .line 2674
    :cond_2b
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 2677
    :cond_2e
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initializeLruCache(I)V
    .registers 3

    if-gtz p1, :cond_4

    const/16 p1, 0x64

    .line 185
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->resize(I)V

    return-void
.end method

.method public declared-synchronized isChatbotRoleUri(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    .line 2716
    :try_start_5
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_16

    .line 2717
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_13

    monitor-exit p0

    return p1

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2719
    :cond_16
    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method public isEstablishedSessionExist()Z
    .registers 2

    .line 2641
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2642
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isEstablishedState()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized isLoaded()Z
    .registers 2

    monitor-enter p0

    .line 398
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .registers 5

    monitor-enter p0

    .line 294
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_e

    .line 295
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Alraedy loaded"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2b

    .line 296
    monitor-exit p0

    return-void

    .line 299
    :cond_e
    :try_start_e
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 300
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    .line 301
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    const/4 p1, 0x1

    .line 302
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_2b

    .line 303
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadImSessionByChatType(Z)V
    .registers 5

    monitor-enter p0

    .line 309
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatType(Z)Ljava/util/List;

    move-result-object p1

    .line 310
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadImSessionByChatType loaded chat ids : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3b

    .line 311
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 312
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3d

    goto :goto_29

    .line 316
    :cond_3b
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadImSessionForAutoRejoin(Z)V
    .registers 6

    monitor-enter p0

    .line 324
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionForAutoRejoin(Z)Ljava/util/List;

    move-result-object v0

    .line 325
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

    .line 326
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_41

    .line 327
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_43

    goto :goto_2f

    .line 331
    :cond_41
    monitor-exit p0

    return-void

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadImSessionWithFailedFTMessages()V
    .registers 5

    monitor-enter p0

    .line 358
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllChatIDwithFailedFTMessages()Ljava/util/List;

    move-result-object v0

    .line 359
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

    .line 360
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    .line 361
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 362
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_44

    goto :goto_30

    .line 365
    :cond_42
    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadImSessionWithPendingMessages()V
    .registers 5

    monitor-enter p0

    .line 341
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllChatIDwithPendingMessages()Ljava/util/List;

    move-result-object v0

    .line 342
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

    .line 343
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    .line 344
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_44

    goto :goto_30

    .line 348
    :cond_42
    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadLastSentMessages(Ljava/util/List;)Ljava/util/List;
    .registers 3
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

    .line 388
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryLastSentMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .registers 11
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

    .line 1557
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
    .registers 12
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

    .line 1562
    :try_start_1
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

    .line 1563
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1562
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1570
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v1, v2, :cond_54

    .line 1571
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v1

    .line 1572
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v2

    if-eqz v2, :cond_4f

    move-object v2, v1

    goto :goto_59

    :cond_4f
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    goto :goto_59

    .line 1574
    :cond_54
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    .line 1577
    :goto_59
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1578
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1579
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1580
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1581
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1582
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1583
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1584
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v4

    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v5

    invoke-static {p2, p1, v4, v5}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1585
    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1586
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1587
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1588
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1589
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1590
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1591
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1592
    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1593
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1594
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    .line 1596
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1597
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1599
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_e9
    .catchall {:try_start_1 .. :try_end_e9} :catchall_eb

    .line 1601
    monitor-exit p0

    return-object p1

    :catchall_eb
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .registers 13

    monitor-enter p0

    .line 2128
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 2129
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 2130
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v2

    .line 2131
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 2133
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2134
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2135
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2136
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2137
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2138
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2139
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2140
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2141
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 2142
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 2143
    invoke-virtual {v5, v0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 2144
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 2145
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 2146
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2147
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2148
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2149
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2150
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 2151
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2153
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v4, :cond_e2

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_e6

    :cond_e2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_e6
    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v4, 0x0

    .line 2154
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 2155
    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2156
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2157
    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2158
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2159
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2160
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2161
    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2162
    invoke-virtual {p1, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2163
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2164
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2165
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2166
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object p1

    .line 2168
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2169
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_157
    .catchall {:try_start_1 .. :try_end_157} :catchall_159

    .line 2170
    monitor-exit p0

    return-object p1

    :catchall_159
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .registers 13

    monitor-enter p0

    .line 2183
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 2184
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 2185
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v2

    .line 2186
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 2188
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2189
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2190
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2191
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2192
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2193
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2194
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2195
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2196
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 2197
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 2198
    invoke-virtual {v5, v0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 2199
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 2200
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 2201
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2202
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2203
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v4, 0x1

    .line 2204
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2205
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2206
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 2207
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2209
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v4, :cond_e9

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_ed

    :cond_e9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_ed
    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v4, 0x0

    .line 2210
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 2211
    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2212
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2213
    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2214
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2215
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2216
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2217
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2218
    invoke-virtual {p1, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2219
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2220
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2221
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object p1

    .line 2223
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2224
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_154
    .catchall {:try_start_1 .. :try_end_154} :catchall_156

    .line 2225
    monitor-exit p0

    return-object p1

    :catchall_156
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .registers 13

    monitor-enter p0

    .line 1893
    :try_start_1
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    .line 1895
    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsPublicAccountMsg:Z

    if-eqz v1, :cond_d

    .line 1896
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 1898
    :cond_d
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1899
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    .line 1900
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 1902
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeNewIncomingFtMessage msgType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1905
    iget-boolean v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    if-eqz v5, :cond_44

    .line 1906
    iget-boolean v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsLMM:Z

    if-eqz v4, :cond_42

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_44

    :cond_42
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1910
    :cond_44
    :goto_44
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1911
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1912
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1913
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1914
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1915
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1916
    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1917
    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1918
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1919
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1920
    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    if-eqz v6, :cond_ad

    goto :goto_af

    :cond_ad
    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    :goto_af
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    .line 1921
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-wide v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileSize:J

    .line 1922
    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mThumbPath:Ljava/lang/String;

    .line 1923
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->thumbnailPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1924
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getThumbnailTool()Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->thumbnailTool(Lcom/sec/internal/ims/util/ThumbnailTool;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mTimeDuration:I

    .line 1925
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->timeDuration(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    .line 1926
    invoke-virtual {v6, v1, v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mUserAlias:Ljava/lang/String;

    .line 1927
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 1928
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v5

    .line 1929
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1930
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1931
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1932
    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    .line 1933
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1935
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 1936
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mInReplyToConversationId:Ljava/lang/String;

    .line 1937
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->inReplyToConversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    .line 1938
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1939
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDisposition:Ljava/util/Set;

    .line 1940
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    .line 1941
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileTransferId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    const/4 v0, 0x0

    .line 1942
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1943
    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v5, :cond_17b

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto :goto_17f

    :cond_17b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_17f
    invoke-virtual {p4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    .line 1944
    invoke-virtual {p4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1945
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1946
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v2, v1, :cond_1a1

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v0

    :cond_1a1
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsRoutingMsg:Z

    .line 1947
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1948
    invoke-virtual {p4, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1949
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1950
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1951
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1952
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1953
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    move-result-object p1

    .line 1955
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1956
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_1dd
    .catchall {:try_start_1 .. :try_end_1dd} :catchall_1df

    .line 1957
    monitor-exit p0

    return-object p1

    :catchall_1df
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .registers 15

    monitor-enter p0

    .line 1714
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1715
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 1716
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v2

    .line 1717
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsReferenceId(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 1718
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsReferenceType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v4

    .line 1719
    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsReferenceValue(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v5

    .line 1720
    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v6

    .line 1722
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1723
    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1724
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1725
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1726
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1727
    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1728
    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1729
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v8, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 1730
    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1731
    invoke-virtual {v7, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v8, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 1732
    invoke-virtual {v7, v0, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 1733
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 1734
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1735
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1736
    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1737
    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v7

    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1738
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1739
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 1740
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1742
    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v7, :cond_ec

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    goto :goto_f0

    :cond_ec
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :goto_f0
    invoke-virtual {p5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 1743
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1744
    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1745
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v0, :cond_113

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v0

    goto :goto_114

    :cond_113
    const/4 v0, 0x0

    :goto_114
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mIsRoutingMsg:Z

    .line 1746
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1747
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1748
    invoke-virtual {p5, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1749
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1750
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDeviceId:Ljava/lang/String;

    .line 1751
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1752
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1753
    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1754
    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceImdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1755
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1756
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceValue(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1757
    invoke-virtual {p2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1758
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p2

    .line 1760
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1762
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p4

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p1, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReceiveRcsMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_184
    .catchall {:try_start_1 .. :try_end_184} :catchall_186

    .line 1764
    monitor-exit p0

    return-object p2

    :catchall_186
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .registers 14

    monitor-enter p0

    .line 1776
    :try_start_1
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    .line 1778
    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsPublicAccountMsg:Z

    if-eqz v1, :cond_d

    .line 1779
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 1782
    :cond_d
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "geo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1783
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 1786
    :cond_1d
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1788
    iget-boolean v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsLMM:Z

    if-eqz v2, :cond_2a

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_2c

    :cond_2a
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1790
    :goto_2c
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    .line 1791
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v4

    .line 1792
    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v5

    .line 1794
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1795
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1796
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1797
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1798
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1799
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1800
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1801
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 1802
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1803
    invoke-virtual {v6, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 1804
    invoke-virtual {v6, v1, v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {p5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 1805
    invoke-virtual {p5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 1806
    invoke-virtual {p5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1807
    invoke-virtual {p5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1808
    invoke-virtual {p5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1809
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const/4 v0, 0x1

    .line 1810
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1811
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1812
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 1813
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1815
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v0, :cond_100

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    goto :goto_104

    :cond_100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_104
    invoke-virtual {p5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 1816
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1817
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1818
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v3, v0, :cond_127

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result p2

    goto :goto_128

    :cond_127
    const/4 p2, 0x0

    :goto_128
    invoke-virtual {p5, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-boolean p5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsRoutingMsg:Z

    .line 1819
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1820
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImExtensionMNOHeaders:Ljava/util/Map;

    .line 1821
    invoke-static {p5}, Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper;->isVM2TextMsg(Ljava/util/Map;)Z

    move-result p5

    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isVM2TextMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1822
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mConversationId:Ljava/lang/String;

    .line 1823
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContributionId:Ljava/lang/String;

    .line 1824
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1825
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1826
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1827
    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1828
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1829
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p2

    .line 1831
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1833
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p4

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p1, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReceiveRcsMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_18c
    .catchall {:try_start_1 .. :try_end_18c} :catchall_18e

    .line 1835
    monitor-exit p0

    return-object p2

    :catchall_18e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .registers 10
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

    .line 1509
    :try_start_1
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

    .line 1511
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1513
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1514
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1515
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1516
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 1517
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 1518
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1519
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1520
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v3

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v4

    invoke-static {p2, v2, v3, v4}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 1521
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1522
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1523
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1524
    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1525
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    const-string p3, ""

    .line 1526
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownGroupAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSubject:Ljava/lang/String;

    .line 1527
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->subject(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 1528
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    .line 1529
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    .line 1530
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sdpContentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1531
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1532
    iget-boolean p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    if-eqz p3, :cond_c4

    const/4 p3, 0x0

    goto :goto_c6

    :cond_c4
    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    :goto_c6
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    .line 1533
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sessionType(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    .line 1534
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->createdBy(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    .line 1535
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->invitedBy(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1536
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1537
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    .line 1539
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1540
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1542
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_f5
    .catchall {:try_start_1 .. :try_end_f5} :catchall_f7

    .line 1544
    monitor-exit p0

    return-object p1

    :catchall_f7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewOutgoingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Network;ZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;Z)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;
    .registers 26
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

    .line 2069
    :try_start_5
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p4}, Lcom/sec/internal/helper/FileUtils;->getSizeFromUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 2070
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez p8, :cond_22

    .line 2073
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p3, p4}, Lcom/sec/internal/helper/FileUtils;->getContentType(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    goto :goto_24

    :cond_22
    move-object/from16 v7, p8

    .line 2076
    :goto_24
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2077
    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2078
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2079
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2080
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2081
    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2082
    invoke-virtual {v9, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2083
    invoke-virtual {v9, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2084
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2085
    invoke-virtual {v8, p4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->contentUri(Landroid/net/Uri;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2086
    invoke-virtual {v3, p3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2087
    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2088
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object v3, p5

    .line 2089
    invoke-virtual {v2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/4 v4, 0x0

    .line 2090
    invoke-virtual {v3, v6, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2091
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 2092
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2093
    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2094
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p6

    .line 2095
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2097
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2098
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p7

    .line 2099
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2100
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2101
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p14

    .line 2102
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setFileDisposition(Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p10

    .line 2103
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v3, p9

    .line 2104
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->extraFt(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v3, p12

    .line 2105
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v3, p13

    .line 2106
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2107
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v2, p15

    .line 2108
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isResizable(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2109
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    move-result-object v0

    .line 2111
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    move/from16 v2, p11

    .line 2112
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setFtSms(Z)V

    .line 2113
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_157
    .catchall {:try_start_5 .. :try_end_157} :catchall_159

    .line 2114
    monitor-exit p0

    return-object v0

    :catchall_159
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .registers 27
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

    .line 1979
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1e

    .line 1980
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInReplyToContributionId()Ljava/lang/String;

    move-result-object v5

    .line 1981
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-object/from16 v8, p2

    invoke-virtual {v8, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    goto :goto_21

    :cond_1e
    move-object/from16 v8, p2

    move-object v5, v7

    .line 1985
    :goto_21
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_52

    const-string v6, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 1986
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

    goto :goto_5c

    .line 1988
    :cond_52
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3}, Lcom/sec/internal/helper/FileUtils;->copyFileToCacheFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1990
    :goto_5c
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1992
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v9, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v9

    if-nez v4, :cond_6d

    .line 1995
    invoke-static {v6}, Lcom/sec/internal/helper/FileUtils;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 1998
    :cond_6d
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v10

    if-eqz p9, :cond_75

    .line 2001
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 2004
    :cond_75
    sget-object v11, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "makeNewOutgoingFtMessage msgType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v11

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2007
    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2008
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2009
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2010
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2011
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2012
    invoke-virtual {v12, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2013
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getThumbnailTool()Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->thumbnailTool(Lcom/sec/internal/ims/util/ThumbnailTool;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2014
    invoke-virtual {v12, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2015
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 2016
    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2017
    invoke-virtual {v11, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2018
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->contentUri(Landroid/net/Uri;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2019
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2020
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2021
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->thumbnailPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    const/4 v3, 0x0

    .line 2022
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->timeDuration(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v6, p5

    .line 2023
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2024
    invoke-virtual {v6, v9, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2025
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2026
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2027
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2028
    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2029
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2031
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2032
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->inReplyToConversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v4, p6

    .line 2033
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2034
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2035
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateFileTransferId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileTransferId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2036
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2037
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v3, p7

    .line 2038
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move/from16 v3, p10

    .line 2039
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isResizable(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move/from16 v3, p11

    .line 2040
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2041
    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v3, p12

    .line 2042
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->extinfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2043
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 2044
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2045
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    move-result-object v0

    .line 2047
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2048
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_1f4
    .catchall {:try_start_9 .. :try_end_1f4} :catchall_1f6

    .line 2049
    monitor-exit p0

    return-object v0

    :catchall_1f6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .registers 30
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

    .line 1622
    :try_start_1f
    invoke-virtual/range {v1 .. v16}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .registers 24
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

    if-eqz p8, :cond_b

    .line 1652
    :try_start_5
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    goto :goto_14

    :catchall_8
    move-exception v0

    goto/16 :goto_143

    :cond_b
    if-eqz p10, :cond_10

    .line 1654
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    goto :goto_14

    .line 1656
    :cond_10
    invoke-static {p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    :goto_14
    const/4 v3, 0x0

    if-eqz p11, :cond_19

    const/4 v4, 0x2

    goto :goto_1a

    :cond_19
    move v4, v3

    .line 1664
    :goto_1a
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v5

    .line 1666
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1667
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1668
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1669
    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1670
    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1671
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1672
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1673
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1674
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    if-eqz v7, :cond_78

    const/4 v7, 0x0

    goto :goto_86

    :cond_78
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    :goto_86
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v7, p3

    .line 1675
    invoke-virtual {v6, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1676
    invoke-virtual {v7, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1677
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v6, p4

    .line 1678
    invoke-virtual {v3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v6, p5

    .line 1679
    invoke-virtual {v3, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1680
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1681
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1682
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1683
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v3, p6

    .line 1684
    invoke-virtual {v2, p6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move v3, p7

    .line 1686
    invoke-virtual {v2, p7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move/from16 v3, p9

    .line 1687
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1688
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1689
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p12

    .line 1690
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1691
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1692
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->flagMask(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p13

    .line 1693
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceImdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p14

    .line 1694
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p15

    .line 1695
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceValue(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1696
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0

    .line 1698
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1699
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_141
    .catchall {:try_start_5 .. :try_end_141} :catchall_8

    .line 1700
    monitor-exit p0

    return-object v0

    :goto_143
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .registers 24
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

    .line 1425
    :try_start_16
    invoke-virtual/range {v1 .. v13}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .registers 25
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

    .line 1448
    :try_start_5
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

    .line 1449
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1448
    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v4

    .line 1453
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1454
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v5, v6, :cond_64

    .line 1455
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v5

    .line 1456
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v6

    if-eqz v6, :cond_5f

    move-object v6, v5

    goto :goto_70

    :cond_5f
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v6

    goto :goto_70

    .line 1458
    :cond_64
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    move-object/from16 v5, p10

    goto :goto_70

    :cond_6c
    move-object/from16 v5, p10

    move-object/from16 v6, p11

    .line 1462
    :goto_70
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v7, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object v7

    .line 1463
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v8

    if-eqz v8, :cond_8e

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8e

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v8, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v7, v9}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    goto :goto_8f

    :cond_8e
    const/4 v8, 0x0

    .line 1464
    :goto_8f
    new-instance v9, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1465
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v10}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1466
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1467
    invoke-virtual {v10, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    .line 1468
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    .line 1469
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1470
    invoke-virtual {v10, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    .line 1471
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v10

    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v11

    invoke-static {p2, p1, v10, v11}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    .line 1472
    invoke-virtual {v9, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1473
    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    move-object/from16 v3, p9

    .line 1474
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1475
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1476
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    const-string v2, ""

    .line 1477
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownGroupAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p4

    .line 1478
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->subject(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p8

    .line 1479
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->iconPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p5

    .line 1480
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sdpContentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move/from16 v2, p6

    .line 1481
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->threadId(I)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p7

    .line 1482
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1483
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1484
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1485
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1486
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p12

    .line 1487
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sessionUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1488
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->createdBy(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1489
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->invitedBy(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1490
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1492
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1493
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1495
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v2, v4, v0}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_14f
    .catchall {:try_start_5 .. :try_end_14f} :catchall_151

    .line 1497
    monitor-exit p0

    return-object v0

    :catchall_151
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 1881
    :try_start_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Ljava/util/Date;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Ljava/util/Date;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .registers 8

    monitor-enter p0

    .line 1849
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1850
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1851
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1852
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1853
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1854
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1855
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1856
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1857
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1858
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1859
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1860
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1861
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1862
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1863
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    if-nez p4, :cond_92

    .line 1864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    goto :goto_96

    :cond_92
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    :goto_96
    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1865
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1866
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p1

    .line 1868
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_af
    .catchall {:try_start_1 .. :try_end_af} :catchall_b1

    .line 1869
    monitor-exit p0

    return-object p1

    :catchall_b1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyCloudMsgFtEvent(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    .registers 6

    monitor-enter p0

    .line 2423
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->notifyFtEvent(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2424
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queryChatMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    .line 779
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryChatMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryFtMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    .line 792
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryFtMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .registers 3

    monitor-enter p0

    .line 1406
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queryMessageNotification([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    .line 818
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageNotification([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    .line 766
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryParticipants([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    .line 805
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipants([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySessions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    .line 742
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public readMessagesforCloudSync(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2294
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReadRcsMessageList(ILjava/util/List;)V

    return-void
.end method

.method public removeActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .registers 2

    .line 2623
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized removeFromChatbotRoleUris(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    if-eqz p1, :cond_3d

    if-eqz p2, :cond_3d

    .line 2709
    :try_start_5
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_3d

    .line 2710
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFromChatbotRoleUris: uri = "

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

    .line 2711
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3a

    goto :goto_3d

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2713
    :cond_3d
    :goto_3d
    monitor-exit p0

    return-void
.end method

.method public removeFromPendingList(I)V
    .registers 4

    .line 2544
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 2546
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2547
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2548
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removed message from cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 2550
    :cond_28
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message is not in the cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method public removeImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V
    .registers 2

    .line 205
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized sentMessageForCloudSync(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 2419
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onSentMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2420
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .registers 3

    .line 2616
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateDesiredNotificationStatusAsDisplay(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 2686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2687
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2688
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    if-eqz v2, :cond_11

    .line 2690
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 2691
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDisplayedTimestamp(J)V

    .line 2692
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v3, v4, :cond_38

    .line 2693
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 2695
    :cond_38
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 2698
    :cond_44
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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2252
    :try_start_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2253
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateUriGenerator(I)V
    .registers 4

    monitor-enter p0

    .line 371
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUriGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p1

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 374
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2f

    goto :goto_1d

    .line 376
    :cond_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
