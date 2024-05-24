.class public Lcom/sec/internal/ims/servicemodules/im/ImModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "ImModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
.implements Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;
.implements Lcom/sec/internal/ims/util/IMessagingAppInfoListener;


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:J = 0xbb8L

.field private static final DELAY_TIME_FOR_CACHE_CLEAR:J = 0x2710L

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final NAME:Ljava/lang/String;

.field private static final sRequiredServices:[Ljava/lang/String;


# instance fields
.field private mActiveDataPhoneId:I

.field private mBlockExpires:J

.field private mBlockList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBlockListUpdateObserver:Landroid/database/ContentObserver;

.field private final mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

.field private final mCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCountReconfiguration:I

.field private final mFeatureUpdater:Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;

.field private final mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field private final mFtTranslation:Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

.field private final mGroupChatRetrievingHandlers:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

.field private final mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

.field private final mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field private final mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field private final mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field private final mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

.field private mInternetAvailable:Z

.field private mInternetListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsDataStateConnected:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsOutOfServices:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWifiConnected:Z

.field protected mKnoxBlockState:I

.field private mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

.field protected final mNeedToRemoveFromPendingList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsProfile:Ljava/lang/String;

.field private final mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

.field private final mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

.field private final mSmsPatternEventReceiver:Landroid/content/BroadcastReceiver;

.field private final mThirdPartyTranslation:Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;

.field private final mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

.field private final mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/util/UriGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$9RKigW6EIEWQadwliSXLkPXYQl8(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->lambda$onMessagingAppPackageReplaced$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$IOMAFYAnQxEP2Tw67t1-cj7w2GA(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->lambda$requestChatbotAnonymize$3(Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PqKL8Enai5_Y4ucRMpmAoidGmjI(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->lambda$handleEventConfigured$0(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UcrDxjlEYvuJOLQmk8zqkWW5yVs(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->lambda$reportChatbotAsSpam$4(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$y5icvXudOhR_bU58_NXYJKlBDVo(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->lambda$onUltraPowerSavingModeChanged$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBlockList(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCache(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfigs(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/helper/PhoneIdKeyMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsWifiConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBlockExpires(Lcom/sec/internal/ims/servicemodules/im/ImModule;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockExpires:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBlockList(Lcom/sec/internal/ims/servicemodules/im/ImModule;Ljava/util/Set;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockList:Ljava/util/Set;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInternetAvailable(Lcom/sec/internal/ims/servicemodules/im/ImModule;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$monUltraPowerSavingModeChanged(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onUltraPowerSavingModeChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiConnectionChanged(Lcom/sec/internal/ims/servicemodules/im/ImModule;ZI)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onWifiConnectionChanged(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 131
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->NAME:Ljava/lang/String;

    .line 132
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "ft"

    const-string v1, "ft_http"

    const-string v2, "im"

    const-string/jumbo v3, "slm"

    .line 137
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sRequiredServices:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)V
    .registers 5

    .line 277
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 167
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    const-string p1, ""

    .line 171
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    .line 176
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockList:Ljava/util/Set;

    const-wide/16 v0, 0x0

    .line 177
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockExpires:J

    .line 179
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mNeedToRemoveFromPendingList:Ljava/util/Set;

    .line 185
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/ImModule$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSmsPatternEventReceiver:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    .line 201
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    .line 2309
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImModule$4;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule$4;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockListUpdateObserver:Landroid/database/ContentObserver;

    .line 214
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    .line 215
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSimManagers:Ljava/util/List;

    .line 217
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 218
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 219
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 220
    new-instance v8, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-direct {v8, p2, v1, p0, p4}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    .line 221
    new-instance v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-object v2, v9

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    move-object v6, p0

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    .line 222
    new-instance v10, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-object v2, v10

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v10, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    .line 223
    new-instance p3, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-direct {p3, p2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    .line 224
    new-instance p3, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-direct {p3, p2, p0, v10, v8}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImProcessor;)V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    .line 225
    new-instance p3, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

    invoke-direct {p3, p2, p0, v9}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/FtProcessor;)V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtTranslation:Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

    .line 226
    new-instance p3, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;

    invoke-direct {p3, p2, p0}, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mThirdPartyTranslation:Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;

    .line 227
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setUpsmEventReceiver()V

    .line 228
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p3

    iput p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    .line 230
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    .line 231
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 232
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 233
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mGroupChatRetrievingHandlers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 234
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 235
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, p3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 236
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataStateConnected:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 237
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsOutOfServices:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 238
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 239
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 240
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 241
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;

    invoke-direct {v0, p2, p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFeatureUpdater:Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;

    .line 242
    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/ImDump;

    invoke-direct {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/ImDump;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move p2, p1

    :goto_eb
    if-ge p2, p3, :cond_108

    .line 245
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getInstance(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p4

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 247
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object p4

    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p4, p2, v0}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(ILcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p4

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_eb

    :cond_108
    const/4 p2, 0x1

    if-le p3, p2, :cond_110

    const/16 p3, 0x1d

    .line 252
    invoke-static {p0, p3, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 255
    :cond_110
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSimManagers:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_116
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_12d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/16 v0, 0x22

    .line 256
    invoke-interface {p4, p0, v0, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v0, 0x24

    .line 257
    invoke-interface {p4, p0, v0, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_116

    .line 260
    :cond_12d
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSimManagers:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->init(I)V

    .line 262
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string p4, "power"

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    .line 263
    sget-object p4, Lcom/sec/internal/ims/servicemodules/im/ImModule;->NAME:Ljava/lang/String;

    invoke-virtual {p3, p2, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 264
    invoke-virtual {p3, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 266
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mKnoxBlockState:I

    .line 267
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setSmsPatternEventReceiver()V

    return-void
.end method

.method private handleADSChange()V
    .registers 5

    .line 2103
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 2104
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleADSChange: current ads phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string p0, "handleADSChange: registered, return;"

    .line 2106
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2109
    :cond_26
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getActiveSessions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2110
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    goto :goto_30

    :cond_40
    return-void
.end method

.method private handleEventAbortOngoingHttpFtOperation(I)V
    .registers 5

    .line 2189
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_ABORT_ONGOING_HTTP_FT_OPERATIONS isRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mInternetAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result p1

    if-eqz p1, :cond_48

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetAvailable:Z

    if-nez p1, :cond_48

    .line 2192
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_38
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2193
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->abortAllHttpFtOperations()V

    goto :goto_38

    :cond_48
    return-void
.end method

.method private handleEventConfigured(I)V
    .registers 7

    .line 1090
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1095
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1096
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1098
    :cond_19
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimCardManager own number is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_5c

    .line 1101
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v2, v3, :cond_5c

    .line 1102
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onDataRoamingChanged(ZI)V

    .line 1109
    :cond_5c
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->CHAT:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1110
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_87

    const-string p0, "profile is null, return !!!"

    .line 1111
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1115
    :cond_87
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    .line 1116
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->load(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImConfig loaded. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxConcurrentSession()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->initializeLruCache(I)V

    .line 1120
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    .line 1121
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10a

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1122
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v0

    if-eqz v0, :cond_f8

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFTHTTPAutoResumeAndCancelPerConnectionChange()Z

    move-result v0

    if-nez v0, :cond_104

    .line 1123
    :cond_f8
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "cancel_ft_wifi_disconnected"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 1124
    :cond_104
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setNetworkCallback(I)V

    .line 1125
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerDefaultNetworkCallback(I)V

    :cond_10a
    return-void
.end method

.method private handleEventDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 6

    .line 1214
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    if-eqz p1, :cond_8

    .line 1216
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 1219
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->stopReconnectGuardTimer(I)V

    .line 1221
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 1223
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1224
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1225
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processDeregistration()V

    goto :goto_21

    .line 1229
    :cond_3b
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterAllFileTransferProgress()V

    .line 1230
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterAllSLMFileTransferProgress()V

    .line 1231
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->clear()V

    .line 1233
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    .line 1235
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    if-eqz p1, :cond_66

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string/jumbo v0, "useragent_has_msgappversion"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 1236
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    invoke-virtual {p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->unregisterReceiver()V

    :cond_66
    return-void
.end method

.method private handleEventMessageAppChanged()V
    .registers 4

    .line 1245
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1246
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleEventMessageAppChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_22

    .line 1247
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1248
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    .line 1250
    :cond_22
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDefaultMessageAppInUse()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1251
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterAllFileTransferProgress()V

    .line 1252
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterAllSLMFileTransferProgress()V

    .line 1253
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1254
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 1255
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelPendingFilesInQueue()V

    goto :goto_3c

    :cond_4f
    return-void
.end method

.method private handleEventProcessRejoinGCSession(I)V
    .registers 5

    .line 2170
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "EVENT_PROCESS_REJOIN_GC_SESSION"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "groupchat_auto_rejoin"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadImSessionForAutoRejoin(Z)V

    .line 2172
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->processRejoinGCSession(I)V

    return-void
.end method

.method private handleEventRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 13

    if-eqz p1, :cond_7

    .line 1137
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    .line 1139
    :goto_9
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    if-eqz p1, :cond_58

    .line 1142
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateOwnPhoneNumberOnRegi(ILcom/sec/ims/ImsRegistration;)V

    .line 1144
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isEnableGroupChatListRetrieve()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1145
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mGroupChatRetrievingHandlers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4d

    .line 1146
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mGroupChatRetrievingHandlers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v10, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;

    .line 1147
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v7

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object v8

    .line 1148
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v1, v0, v10}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1150
    :cond_4d
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mGroupChatRetrievingHandlers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->startToRetrieveGroupChatList()V

    .line 1153
    :cond_58
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mImRegistration own number is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 1156
    :cond_8c
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    if-eqz v2, :cond_9b

    .line 1158
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1160
    :cond_9b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "When own number is not available through telephonyManager or RegistrationManager, we use imsi. TelephonyManager imsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1161
    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1160
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :cond_b7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRequiredServicesRegistered(Lcom/sec/ims/ImsRegistration;)Z

    move-result v1

    if-eqz v1, :cond_16d

    .line 1174
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v1

    if-nez v1, :cond_fe

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "update_session_after_registration"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 1175
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getActiveSessions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_da
    :goto_da
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fe

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1176
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_da

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_da

    .line 1177
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    goto :goto_da

    .line 1182
    :cond_fe
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    .line 1184
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getRegistration(I)Lcom/sec/internal/constants/ims/servicemodules/Registration;

    move-result-object v1

    if-eqz v1, :cond_168

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getRegistration(I)Lcom/sec/internal/constants/ims/servicemodules/Registration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->isReRegi()Z

    move-result v1

    if-nez v1, :cond_168

    .line 1185
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "useragent_has_msgappversion"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 1186
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setAppVersionToSipUserAgent(Lcom/sec/ims/ImsRegistration;)V

    .line 1188
    :cond_12a
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "block_chatbot_nw"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15c

    const-string v1, "chatbot-communication"

    invoke-virtual {p1, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 1189
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SPECIFIC_BOT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockListUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1191
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/BlockedNumberUtil;->getBlockedNumbersListFromNW(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockList:Ljava/util/Set;

    .line 1192
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/BlockedNumberUtil;->getBlockExpires(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockExpires:J

    .line 1194
    :cond_15c
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->processPendingMessagesOnRegi(ILcom/sec/ims/ImsRegistration;)V

    .line 1195
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->startReconnectGuardTiemer(I)V

    .line 1197
    :cond_168
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateUriGenerator(I)V

    .line 1200
    :cond_16d
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mKnoxBlockState:I

    if-nez p1, :cond_178

    .line 1201
    invoke-static {}, Lcom/sec/internal/helper/BlockedNumberUtil;->isKnoxBlockRequied()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setKnoxBlockState(Z)V

    :cond_178
    return-void
.end method

.method private handleEventRequestChatbotAnonymizeResponse(Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;)V
    .registers 7

    .line 2199
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2200
    :goto_9
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfileType(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->UP_2_2:Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_4f

    if-eqz v0, :cond_4f

    .line 2203
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mChatbotUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 2204
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getActiveSessions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2205
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIsTokenUsed()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotRole()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2206
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    goto :goto_29

    .line 2211
    :cond_4f
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mChatbotUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mCommandId:Ljava/lang/String;

    iget p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mRetryAfter:I

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onRequestChatbotAnonymizeResponse(Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method private handleEventResumePendingHttpFtOperations(I)V
    .registers 6

    .line 2176
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_RESUME_PENDING_HTTP_FT_OPERATIONS mInternetAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetAvailable:Z

    if-eqz v0, :cond_4b

    .line 2178
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2180
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    .line 2181
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2182
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingFtHttp(I)V

    goto :goto_26

    :cond_4b
    return-void
.end method

.method private isDefaultPdnConnected()Z
    .registers 4

    .line 1925
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1926
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 1927
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    const/16 v1, 0xc

    .line 1928
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1929
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    .line 1930
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_2b

    :cond_2a
    move v0, v2

    :cond_2b
    return v0
.end method

.method private isImsPdnConnected(I)Z
    .registers 3

    .line 1909
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1912
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 1914
    :goto_c
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1915
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2b

    const/4 v0, 0x4

    .line 1916
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p1, 0x1

    :cond_2b
    return p1
.end method

.method private isRequiredServicesRegistered(Lcom/sec/ims/ImsRegistration;)Z
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_16

    .line 1271
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sRequiredServices:[Ljava/lang/String;

    array-length v1, v0

    move v2, p0

    :goto_7
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 1272
    invoke-virtual {p1, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return p0
.end method

.method private static synthetic lambda$handleEventConfigured$0(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .registers 2

    const-string v0, "im"

    .line 1110
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "slm"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onMessagingAppPackageReplaced$1()V
    .registers 5

    .line 1890
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "useragent_has_msgappversion"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1891
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v0, v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    .line 1892
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessagingAppPackageReplaced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 1894
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 1895
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-interface {v3, v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->setMoreInfoToSipUserAgent(Ljava/lang/String;I)V

    goto :goto_31

    :cond_51
    return-void
.end method

.method private synthetic lambda$onUltraPowerSavingModeChanged$2()V
    .registers 3

    .line 2017
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onUltraPowerSavingModeChanged: update features"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    return-void
.end method

.method private synthetic lambda$reportChatbotAsSpam$4(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    if-nez p1, :cond_a

    .line 2053
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    const/4 p1, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onReportChatbotAsSpamRespReceived(Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    .line 2056
    :cond_a
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;

    move-result-object v0

    .line 2057
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->composeSpamXml(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, -0x1

    if-eq p6, p4, :cond_1a

    goto :goto_1c

    .line 2058
    :cond_1a
    iget p6, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    .line 2059
    :goto_1c
    new-instance p4, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;

    invoke-direct {p4, p6, p2, p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;-><init>(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 2060
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p6, "reportChatbotAsSpam : uri = "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", xml = "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {p0, p4}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->reportChatbotAsSpam(Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;)V

    return-void
.end method

.method private synthetic lambda$requestChatbotAnonymize$3(Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 2025
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestChatbotAnonymize : uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfileType(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->UP_2_2:Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;

    .line 2027
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    if-lt v1, v2, :cond_4d

    .line 2029
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getBotPrivacyDisable()Z

    move-result p4

    if-eqz p4, :cond_3b

    const-string/jumbo p0, "requestChatbotAnonymize Privacy is disabled, Anonymization session doesnt exist"

    .line 2030
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2034
    :cond_3b
    new-instance p4, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;

    if-eq p2, v3, :cond_40

    goto :goto_42

    .line 2035
    :cond_40
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    :goto_42
    const-string v0, ""

    invoke-direct {p4, p2, p1, v0, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;-><init>(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {p0, p4}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->requestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V

    goto :goto_79

    .line 2038
    :cond_4d
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;

    move-result-object v1

    .line 2039
    invoke-virtual {v1, p4, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->composeAnonymizeXml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2040
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;

    if-eq p2, v3, :cond_5a

    goto :goto_5c

    .line 2041
    :cond_5a
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    :goto_5c
    invoke-direct {v1, p2, p1, p4, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;-><init>(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestChatbotAnonymize : xml = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {p0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->requestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V

    :goto_79
    return-void
.end method

.method private onDataRoamingChanged(ZI)V
    .registers 7

    .line 536
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 537
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    move-result-object v0

    .line 538
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAccept(Landroid/content/Context;I)I

    move-result v0

    .line 539
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataRoamingChanged: ft aut accept="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isRoaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->setFtAutAccept(Landroid/content/Context;IZ)V

    return-void
.end method

.method private onOutOfServiceChanged(ZZI)V
    .registers 7

    .line 547
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOutOfServiceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsOutOfServices:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 549
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataStateConnected:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    const/4 p2, 0x0

    if-nez p1, :cond_95

    .line 550
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "cancel_for_deregi_promptly"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 552
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_54

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDefaultPdnConnected()Z

    move-result p1

    if-eqz p1, :cond_54

    move p1, v0

    goto :goto_55

    :cond_54
    move p1, p2

    .line 554
    :goto_55
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v1

    if-nez v1, :cond_77

    .line 555
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "ft_net_capability"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_77

    .line 556
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isImsPdnConnected(I)Z

    move-result v1

    if-eqz v1, :cond_77

    move p2, v0

    :cond_77
    if-nez p1, :cond_7b

    if-eqz p2, :cond_bd

    .line 558
    :cond_7b
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_85
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_bd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 559
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingFtHttp(I)V

    goto :goto_85

    :cond_95
    if-eqz p1, :cond_bd

    .line 562
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result p1

    if-eqz p1, :cond_bd

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsWifiConnected:Z

    if-nez p1, :cond_bd

    .line 564
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_ab
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_bd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 565
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->OUTOFSERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processCancelMessages(ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    goto :goto_ab

    :cond_bd
    return-void
.end method

.method private onSimRefresh(I)V
    .registers 4

    .line 2115
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSimRefresh:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2116
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2117
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onSimRefresh(I)V

    goto :goto_11

    :cond_21
    return-void
.end method

.method private onSimRemoved(I)V
    .registers 4

    .line 2122
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSimRemoved:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->unregisterXmsReceiver()V

    .line 2124
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->setXmsReceiverEnabled(IZ)V

    return-void
.end method

.method private onUltraPowerSavingModeChanged()V
    .registers 4

    .line 2016
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onWifiConnectionChanged(ZI)V
    .registers 5

    .line 527
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWifiConnectionChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsWifiConnected:Z

    return-void
.end method

.method private processPendingMessagesOnRegi(ILcom/sec/ims/ImsRegistration;)V
    .registers 7

    .line 2257
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadImSessionWithPendingMessages()V

    .line 2258
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getEnableFtAutoResumable()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2259
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadImSessionWithFailedFTMessages()V

    .line 2263
    :cond_18
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v0

    .line 2264
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " session(s) in cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2266
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v3

    invoke-virtual {p0, v3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateNetworkForPendingMessage(Landroid/net/Network;Landroid/net/Network;)V

    goto :goto_3c

    :cond_60
    const/16 p2, 0x9

    .line 2269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 p2, 0x13

    .line 2270
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private registerDefaultNetworkCallback(I)V
    .registers 4

    .line 1671
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "INET  : registerDefaultNetworkCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1673
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private setAppVersionToSipUserAgent(Lcom/sec/ims/ImsRegistration;)V
    .registers 4

    .line 2245
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    if-nez v0, :cond_d

    .line 2246
    new-instance v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/util/IMessagingAppInfoListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    .line 2248
    :cond_d
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->registerReceiver()V

    .line 2249
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v0, v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    .line 2250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 2251
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->setMoreInfoToSipUserAgent(Ljava/lang/String;I)V

    :cond_25
    return-void
.end method

.method private setNetworkCallback(I)V
    .registers 4

    .line 1616
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;I)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private setSmsPatternEventReceiver()V
    .registers 3

    .line 2005
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSmsPatternEventReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.knox.intent.action.REQUEST_SMS_PATTERN_CHECK_INTERNAL"

    .line 2007
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2009
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSmsPatternEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setUpsmEventReceiver()V
    .registers 5

    .line 1989
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUpsmEventReceiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 1991
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1992
    sget-object v2, Lcom/sec/ims/extensions/SemEmergencyConstantsExt;->EMERGENCY_CHECK_ABNORMAL_STATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    .line 1993
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1995
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1997
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 1998
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-static {v1}, Lcom/sec/internal/helper/os/SystemUtil;->checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string/jumbo v1, "upsm is already set, so send upsm event."

    .line 1999
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onUltraPowerSavingModeChanged()V

    :cond_42
    return-void
.end method

.method private updateFeatures(I)V
    .registers 5

    .line 1284
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeatures: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFeatureUpdater:Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateFeatures(ILcom/sec/internal/ims/servicemodules/im/ImConfig;)J

    move-result-wide v1

    aput-wide v1, v0, p1

    return-void
.end method

.method private updateOwnPhoneNumberOnRegi(ILcom/sec/ims/ImsRegistration;)V
    .registers 7

    .line 2215
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "+"

    const-string v2, ""

    .line 2217
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2219
    :cond_16
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 2221
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEventRegistered, mOwnImsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mOwnPhoneNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e9

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 2224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEventRegistered, registration.getImpuList()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 2226
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v2, v3, :cond_7b

    .line 2227
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    goto :goto_af

    :cond_ae
    const/4 v0, 0x0

    .line 2231
    :goto_af
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 2232
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_bd
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 2233
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    goto :goto_bd

    .line 2236
    :cond_dc
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 2240
    :cond_e4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    :cond_e9
    return-void
.end method


# virtual methods
.method public acceptChat(Ljava/lang/String;ZI)V
    .registers 4

    .line 2330
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->acceptChat(Ljava/lang/String;ZI)V

    return-void
.end method

.method public acceptFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    .line 728
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->acceptFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method protected acquireWakeLock(Ljava/lang/Object;)V
    .registers 5

    .line 888
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public addParticipants(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 640
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->addParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public attachFileToGroupChat(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 717
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->attachFileToGroupChat(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public attachFileToSingleChat(ILjava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 709
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-virtual/range {v0 .. v15}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->attachFileToSingleChat(ILjava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZ)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public cancelFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V
    .registers 4

    .line 733
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->cancelFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method public changeGroupAlias(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2350
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupAlias(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeGroupChatIcon(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    .line 2355
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupChatIcon(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public changeGroupChatLeader(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 2345
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupChatLeader(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public changeGroupChatSubject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2340
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupChatSubject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cleanUp()V
    .registers 1

    .line 2133
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->stop()V

    return-void
.end method

.method public closeChat(Ljava/lang/String;)V
    .registers 2

    .line 645
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->closeChat(Ljava/lang/String;)V

    return-void
.end method

.method public createChat(ILjava/util/List;Ljava/lang/String;ZZLjava/lang/String;Landroid/net/Uri;ZZ)Ljava/util/concurrent/Future;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "ZZ)",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 594
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v0 .. v12}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->createChat(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Landroid/net/Uri;ZZ)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createChat(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/concurrent/Future;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->createChat(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;
    .registers 3
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

    .line 610
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    move-result-object p0

    return-object p0
.end method

.method public deleteChatsForUnsubscribe()Ljava/util/concurrent/FutureTask;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 630
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->deleteChatsForUnsubscribe()Ljava/util/concurrent/FutureTask;

    move-result-object p0

    return-object p0
.end method

.method public deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;
    .registers 3
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

    .line 738
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    move-result-object p0

    return-object p0
.end method

.method public deleteMessagesByImdnId(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/concurrent/FutureTask;
    .registers 4
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

    .line 743
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->deleteMessagesByImdnId(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/concurrent/FutureTask;

    move-result-object p0

    return-object p0
.end method

.method public dump()V
    .registers 4

    .line 1784
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1786
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 1787
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 1789
    :cond_46
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->dump()V

    .line 1790
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method protected getActiveCall(Lcom/sec/ims/util/ImsUri;)Z
    .registers 3

    .line 2094
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    if-eqz v0, :cond_6

    .line 2095
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
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

    .line 1876
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBigDataProcessor()Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;
    .registers 1

    .line 1391
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getBigDataProcessor()Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 1381
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .registers 2

    .line 615
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p0

    return-object p0
.end method

.method protected getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;
    .registers 1

    .line 2162
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    return-object p0
.end method

.method public getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .registers 2

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    return-object p0
.end method

.method public getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .registers 2

    .line 702
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    return-object p0
.end method

.method protected getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;
    .registers 1

    .line 2166
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

    return-object p0
.end method

.method protected getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .registers 1

    .line 757
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    return-object p0
.end method

.method protected getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;
    .registers 1

    .line 2158
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    return-object p0
.end method

.method public getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .registers 2

    .line 583
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method public getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;
    .registers 1

    .line 2154
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    return-object p0
.end method

.method protected getImsiFromPhoneId(I)Ljava/lang/String;
    .registers 2

    .line 2128
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLatchingProcessor()Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;
    .registers 1

    .line 884
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    return-object p0
.end method

.method public getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .registers 2

    .line 1821
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method public getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .registers 4

    .line 1831
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method public getMessages(Ljava/util/Collection;)Ljava/util/List;
    .registers 2
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

    .line 1841
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;
    .registers 4
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

    .line 1854
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getMsgRoutingType(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .registers 13

    if-eqz p1, :cond_14

    .line 1311
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 1312
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    :cond_32
    move-object v1, p1

    .line 1315
    invoke-virtual {p0, p6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getMsgRoutingType(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Z)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 287
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->NAME:Ljava/lang/String;

    return-object p0
.end method

.method public getNetwork(I)Landroid/net/Network;
    .registers 3

    .line 1953
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1954
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result p0

    if-nez p0, :cond_15

    .line 1955
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getNetwork(ZI)Landroid/net/Network;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_1e

    .line 1940
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "ft_net_capability"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_11

    goto :goto_1e

    .line 1944
    :cond_11
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_1e

    .line 1946
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method protected getOwnPhoneNum()Ljava/lang/String;
    .registers 2

    .line 1324
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected getOwnPhoneNum(I)Ljava/lang/String;
    .registers 2

    .line 1334
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getOwnUris(I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 1962
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1964
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 1966
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 1967
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1970
    :cond_2b
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOwnUris: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .registers 2

    .line 1865
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method public getPhoneIdByChatId(Ljava/lang/String;)I
    .registers 3

    .line 833
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 835
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public getPhoneIdByIMSI(Ljava/lang/String;)I
    .registers 3

    if-nez p1, :cond_5

    .line 876
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    return p0

    .line 878
    :cond_5
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    goto :goto_f

    .line 879
    :cond_d
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    :goto_f
    return p1
.end method

.method public getPhoneIdByImdnId(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)I
    .registers 4

    .line 847
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 849
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getPhoneId()I

    move-result p0

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public getPhoneIdByMessageId(I)I
    .registers 2

    .line 861
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 863
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getPhoneId()I

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method protected getRcsProfile()Ljava/lang/String;
    .registers 1

    .line 2137
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    return-object p0
.end method

.method public getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .registers 1

    .line 1800
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    return-object p0
.end method

.method public getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .registers 2

    .line 1811
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    return-object p0
.end method

.method protected getRegistrationType(I)Ljava/lang/Integer;
    .registers 2

    .line 1580
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .registers 1

    .line 297
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sRequiredServices:[Ljava/lang/String;

    return-object p0
.end method

.method protected getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;
    .registers 2

    .line 1518
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p0

    return-object p0
.end method

.method protected getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;
    .registers 2

    .line 1527
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/util/UriGenerator;

    return-object p0
.end method

.method public getUserAlias(IZ)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_13

    .line 1540
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result p2

    if-nez p2, :cond_13

    const-string p0, ""

    return-object p0

    .line 1543
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAlias()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserAliasFromPreference(I)Ljava/lang/String;
    .registers 3

    .line 1570
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAliasFromPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleEventDefaultAppChanged()V
    .registers 2

    const/16 v0, 0x12

    .line 1678
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 3

    const-string v0, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 819
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 820
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->handleIntent(Landroid/content/Intent;)V

    goto :goto_1b

    :cond_e
    const-string v0, "com.samsung.rcs.framework.filetransfer.category.ACTION"

    .line 821
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 822
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtTranslation:Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->handleIntent(Landroid/content/Intent;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 906
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 910
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_1f6

    :pswitch_9
    goto/16 :goto_1f5

    .line 1076
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1077
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onSimRemoved(I)V

    goto/16 :goto_1f5

    .line 1069
    :pswitch_1c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1070
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mNeedToRemoveFromPendingList:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 1071
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromPendingList(I)V

    goto/16 :goto_1f5

    .line 1064
    :pswitch_37
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1065
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onSimRefresh(I)V

    goto/16 :goto_1f5

    .line 1058
    :pswitch_48
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result p0

    if-eqz p0, :cond_1f5

    const/4 p0, 0x0

    .line 1059
    invoke-static {v1, p0}, Lcom/sec/internal/ims/registry/ImsRegistry;->startAutoConfig(ZLandroid/os/Message;)V

    goto/16 :goto_1f5

    .line 1045
    :pswitch_54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1046
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;

    .line 1047
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;->mChatbotUri:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;->mResult:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;->mCommandId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onRequestChatbotAnonymizeNotiReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f5

    .line 1040
    :pswitch_69
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1041
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventRequestChatbotAnonymizeResponse(Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;)V

    goto/16 :goto_1f5

    .line 1051
    :pswitch_76
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1052
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;

    .line 1053
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;->mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v2, :cond_85

    goto :goto_86

    :cond_85
    const/4 v1, 0x0

    .line 1054
    :goto_86
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;->mUri:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;->mRequestId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onReportChatbotAsSpamRespReceived(Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_1f5

    .line 1036
    :pswitch_91
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleADSChange()V

    goto/16 :goto_1f5

    .line 1005
    :pswitch_96
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1006
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object p0

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;

    .line 1007
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->onSendMessageRevokeRequestDone(Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;)V

    goto/16 :goto_1f5

    .line 1011
    :pswitch_a9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1012
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object p0

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;

    .line 1013
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->onMessageRevokeResponseReceived(Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;)V

    goto/16 :goto_1f5

    .line 1032
    :pswitch_bc
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->handleEventBlocklistChanged()V

    goto/16 :goto_1f5

    .line 1027
    :pswitch_c3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1028
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventAbortOngoingHttpFtOperation(I)V

    goto/16 :goto_1f5

    .line 1022
    :pswitch_d0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1023
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventResumePendingHttpFtOperations(I)V

    goto/16 :goto_1f5

    .line 1017
    :pswitch_dd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1018
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onIncomingSlmLMMSessionReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;)V

    goto/16 :goto_1f5

    .line 964
    :pswitch_ec
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 965
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_IMDN_RESPONSE_RECEIVED : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f5

    .line 1000
    :pswitch_10a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1001
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->handleFileTransferProgress(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;)V

    goto/16 :goto_1f5

    .line 995
    :pswitch_119
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 996
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventProcessRejoinGCSession(I)V

    goto/16 :goto_1f5

    .line 991
    :pswitch_126
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventMessageAppChanged()V

    goto/16 :goto_1f5

    .line 987
    :pswitch_12b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventConfigured(I)V

    goto/16 :goto_1f5

    .line 983
    :pswitch_138
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventDeregistered(Lcom/sec/ims/ImsRegistration;)V

    goto/16 :goto_1f5

    .line 979
    :pswitch_141
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto/16 :goto_1f5

    .line 959
    :pswitch_14a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 960
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onSendImdnFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;)V

    goto/16 :goto_1f5

    .line 969
    :pswitch_159
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 970
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onIncomingSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;)V

    goto/16 :goto_1f5

    .line 927
    :pswitch_168
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 928
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    goto/16 :goto_1f5

    .line 974
    :pswitch_177
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 975
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onProcessPendingMessages(I)V

    goto/16 :goto_1f5

    .line 954
    :pswitch_186
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 955
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onSendMessageHandleReportFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;)V

    goto :goto_1f5

    .line 949
    :pswitch_194
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 950
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onImdnNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V

    goto :goto_1f5

    .line 943
    :pswitch_1a2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 944
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onComposingNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V

    goto :goto_1f5

    .line 938
    :pswitch_1b0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 939
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->onIncomingFileTransferReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;)V

    goto :goto_1f5

    .line 932
    :pswitch_1be
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 933
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onIncomingMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V

    goto :goto_1f5

    .line 922
    :pswitch_1cc
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 923
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V

    goto :goto_1f5

    .line 917
    :pswitch_1da
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 918
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V

    goto :goto_1f5

    .line 912
    :pswitch_1e8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 913
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onIncomingSessionReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    :cond_1f5
    :goto_1f5
    return-void

    :pswitch_data_1f6
    .packed-switch 0x1
        :pswitch_1e8
        :pswitch_1da
        :pswitch_1cc
        :pswitch_1be
        :pswitch_1b0
        :pswitch_1a2
        :pswitch_194
        :pswitch_186
        :pswitch_177
        :pswitch_168
        :pswitch_159
        :pswitch_1b0
        :pswitch_194
        :pswitch_14a
        :pswitch_141
        :pswitch_138
        :pswitch_12b
        :pswitch_126
        :pswitch_119
        :pswitch_10a
        :pswitch_ec
        :pswitch_dd
        :pswitch_d0
        :pswitch_c3
        :pswitch_bc
        :pswitch_9
        :pswitch_a9
        :pswitch_96
        :pswitch_91
        :pswitch_76
        :pswitch_69
        :pswitch_54
        :pswitch_48
        :pswitch_37
        :pswitch_1c
        :pswitch_b
    .end packed-switch
.end method

.method protected hasChatbotParticipant(Ljava/lang/String;)Z
    .registers 2

    .line 2066
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 2068
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public hasEstablishedSession()Z
    .registers 1

    .line 660
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->hasEstablishedSession()Z

    move-result p0

    return p0
.end method

.method public hasIncomingSessionForA2P(I)Z
    .registers 5

    .line 2279
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasIncomingSessionForA2P: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public init()V
    .registers 5

    .line 306
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 307
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->load(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->init(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->init(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->init(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V

    return-void
.end method

.method protected isBlockedNumber(ILcom/sec/ims/util/ImsUri;Z)Z
    .registers 8

    .line 2284
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v1, :cond_d

    .line 2285
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 2288
    :goto_11
    invoke-static {p2, p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->isChatbotUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_6c

    .line 2289
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    const-string/jumbo p3, "skip_block_chatbot_msg"

    invoke-interface {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_26

    return v1

    .line 2292
    :cond_26
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string p2, "block_chatbot_nw"

    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_59

    iget-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockExpires:J

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-lez p3, :cond_59

    .line 2293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gez p1, :cond_59

    .line 2294
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/BlockedNumberUtil;->getBlockedNumbersListFromNW(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockList:Ljava/util/Set;

    .line 2295
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/BlockedNumberUtil;->getBlockExpires(Landroid/content/Context;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockExpires:J

    .line 2296
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string p2, "expired the cache so reload it"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    :cond_59
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sec/internal/helper/BlockedNumberUtil;->isBlockedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_69

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockList:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    :cond_69
    const/4 p0, 0x1

    move v1, p0

    goto :goto_80

    :cond_6c
    if-nez p3, :cond_80

    .line 2299
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string p2, "block_msg"

    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 2300
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/BlockedNumberUtil;->isBlockedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    :cond_80
    :goto_80
    if-eqz v1, :cond_a1

    .line 2303
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isBlockedNumber : blocked number ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") - reject"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    return v1
.end method

.method protected isDataRoaming(I)Z
    .registers 2

    .line 2145
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected isDefaultMessageAppInUse()Z
    .registers 5

    .line 1688
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/PackageUtils;->getMsgAppPkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1690
    :try_start_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_25

    :catch_d
    move-exception p0

    .line 1692
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to currentPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1695
    :goto_25
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    .line 1696
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDefaultMessageAppInUse : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected isOwnNumberChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 1345
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isOwnNumberChanged: Invalid session."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1348
    :cond_b
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1349
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    .line 1351
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto/16 :goto_b7

    .line 1356
    :cond_2d
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b6

    .line 1357
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const v5, 0x40000015    # 2.000005f

    const/4 v6, 0x1

    if-eqz v4, :cond_63

    const-string p0, "IMSI"

    .line 1359
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1360
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, v1, p0, v3}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    return v6

    .line 1362
    :cond_63
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b6

    .line 1363
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/util/UriGenerator;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 1364
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    const-string v4, "MDN"

    .line 1365
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_a1

    .line 1366
    invoke-virtual {v2, p0}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a1

    const-string v4, "1"

    goto :goto_a3

    :cond_a1
    const-string v4, "0"

    :goto_a3
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1367
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v1, p1, v3}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    if-eqz v2, :cond_b6

    .line 1368
    invoke-virtual {v2, p0}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b6

    move v0, v6

    :cond_b6
    return v0

    .line 1352
    :cond_b7
    :goto_b7
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isOwnNumberChanged: Invalid value."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected isRegistered()Z
    .registers 1

    .line 781
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method protected isRegistered(I)Z
    .registers 2

    .line 791
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isServiceRegistered(ILjava/lang/String;)Z
    .registers 5

    .line 803
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_2f

    if-eqz p2, :cond_2f

    .line 805
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isServiceRegistered:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {p0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public isWifiConnected()Z
    .registers 1

    .line 1386
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsWifiConnected:Z

    return p0
.end method

.method protected normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .registers 4

    .line 1413
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-object p2

    .line 1416
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 1417
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object p1

    sget-object p2, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne p1, p2, :cond_22

    .line 1418
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->removeTelParams()V

    :cond_22
    return-object p0
.end method

.method public normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .registers 3

    .line 1403
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0
.end method

.method protected normalizeUri(ILjava/util/Collection;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 1430
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1431
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1433
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 1434
    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1435
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;

    invoke-direct {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;-><init>(Lcom/sec/ims/util/ImsUri;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1436
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1438
    :cond_2f
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "normalizeUri(Collection): normalized Uri is null. Ignored."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_37
    return-object v1
.end method

.method protected notifyDeviceOutOfMemory()V
    .registers 3

    .line 1297
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected notifyRCSMessages()Z
    .registers 2

    .line 1589
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    if-eqz p0, :cond_10

    const-string v0, "notify_rcs_msg"

    .line 1590
    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public onCallStateChanged(ILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 2074
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2076
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_a
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_55

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 2077
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2078
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected Call Number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    .line 2080
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/util/UriGenerator;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2081
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2082
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 2087
    :cond_55
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nConnectedCalls = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, v2, :cond_72

    .line 2089
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_72
    return-void
.end method

.method public onConfigured(I)V
    .registers 5

    .line 398
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigured: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    .line 399
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .registers 7

    .line 479
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    if-eqz p1, :cond_2a

    .line 481
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 482
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeregistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 484
    :cond_2a
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeregistered() phoneId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorCode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", regiInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-nez v2, :cond_5c

    const-string p0, "onDeregistered() : already deregistered."

    .line 487
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 490
    :cond_5c
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->remove(I)Ljava/lang/Object;

    .line 491
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 492
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 493
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .registers 7

    .line 446
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 447
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    if-eqz p1, :cond_12

    .line 450
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 452
    :cond_12
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->remove(I)Ljava/lang/Object;

    .line 453
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    return-void

    .line 457
    :cond_1e
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 458
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 459
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->forceCloseSession()V

    goto :goto_28

    .line 462
    :cond_42
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "block_chatbot_nw"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    if-eqz p1, :cond_6c

    const-string v0, "chatbot-communication"

    .line 463
    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 464
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockListUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 465
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const-wide/16 v0, 0x0

    .line 466
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockExpires:J

    :cond_6c
    return-void
.end method

.method public onMessagingAppPackageReplaced()V
    .registers 2

    .line 1889
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .registers 6

    .line 504
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 505
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkChanged phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsWifiConnected:Z

    if-eq v0, v1, :cond_38

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "cancel_ft_wifi_disconnected"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 507
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onWifiConnectionChanged(ZI)V

    .line 509
    :cond_38
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_4d

    .line 510
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onDataRoamingChanged(ZI)V

    .line 512
    :cond_4d
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsOutOfServices:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_65

    .line 513
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onOutOfServiceChanged(ZZI)V

    goto :goto_82

    .line 514
    :cond_65
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eqz v0, :cond_82

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataStateConnected:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eq v0, v1, :cond_82

    .line 517
    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-direct {p0, p1, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onOutOfServiceChanged(ZZI)V

    .line 519
    :cond_82
    :goto_82
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 7

    .line 410
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 411
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 412
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistered() phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", regiInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "use_xms_receiver_for_resolving_latching"

    const/4 v4, 0x0

    .line 418
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 419
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->registerXmsReceiver(I)V

    .line 420
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {v3, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->checkAfterSimChanged(ILjava/lang/String;)V

    goto :goto_65

    .line 422
    :cond_60
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->resetUriList(I)V

    .line 425
    :goto_65
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 426
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 428
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "use_sipuri_for_urigenerator"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 429
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 430
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v3, v4, :cond_9a

    .line 431
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    :cond_c5
    const/16 v0, 0xf

    .line 436
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRequestIncomingFtTransferPath()Ljava/lang/String;
    .registers 1

    .line 1881
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->onRequestIncomingFtTransferPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onRequestRegistrationType()Ljava/lang/Integer;
    .registers 5

    .line 761
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 764
    :cond_8
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRegistrationType(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 767
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 770
    :goto_1b
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is device registered over epdg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .registers 4

    .line 1707
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onServiceSwitched"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    return-void
.end method

.method public readMessages(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 600
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->readMessages(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public readMessages(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 605
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->readMessages(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public reconfiguration([J)V
    .registers 5

    const/16 v0, 0x21

    .line 1976
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 1979
    :cond_9
    array-length v1, p1

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    if-le v1, v2, :cond_1f

    .line 1980
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    aget-wide v1, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1981
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    :cond_1f
    return-void
.end method

.method public registerChatEventListener(Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;)V
    .registers 2

    .line 578
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->registerChatEventListener(Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;)V

    return-void
.end method

.method public registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V
    .registers 3

    .line 683
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    return-void
.end method

.method public registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V
    .registers 3

    .line 1718
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    return-void
.end method

.method public registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V
    .registers 3

    .line 1723
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    return-void
.end method

.method public registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    .registers 3

    .line 1748
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    return-void
.end method

.method public registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V
    .registers 3

    .line 1753
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    return-void
.end method

.method public registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V
    .registers 3

    .line 672
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    return-void
.end method

.method public registerServiceAvailabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1460
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "ServiceAvailabilityEventListener is already registered"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1462
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    .line 1463
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "registered ServiceAvailabilityEventListener"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public rejectFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V
    .registers 4

    .line 748
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->rejectFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method protected releaseWakeLock(Ljava/lang/Object;)V
    .registers 5

    .line 893
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 894
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_24
    return-void
.end method

.method protected removeFromPendingListWithDelay(I)V
    .registers 4

    .line 2274
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mNeedToRemoveFromPendingList:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x23

    .line 2275
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public removeParticipants(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 2335
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->removeParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected removeReconfigurationEvent()V
    .registers 2

    const/16 v0, 0x21

    .line 2149
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public reportChatbotAsSpam(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2051
    new-instance v8, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestChatbotAnonymize(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 2024
    new-instance v6, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resendMessage(I)V
    .registers 2

    .line 635
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->resendMessage(I)V

    return-void
.end method

.method public resumeReceivingTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    .line 655
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->resumeReceivingTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public resumeSendingTransfer(Ljava/lang/String;Landroid/net/Uri;Z)V
    .registers 4

    .line 650
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->resumeSendingTransfer(Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method public revokeMessage(Ljava/lang/String;Ljava/util/List;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 2320
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->requestMessageRevocation(Ljava/lang/String;Ljava/util/List;ZI)V

    return-void
.end method

.method public sendComposingNotification(Ljava/lang/String;IZ)V
    .registers 4

    .line 2325
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->sendComposingNotification(Ljava/lang/String;IZ)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;)V
    .registers 2

    .line 723
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->sendFile(Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .registers 32
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

    move-object/from16 v0, p0

    .line 1775
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    invoke-virtual/range {v0 .. v15}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected sendModuleResponse(Landroid/os/Message;ILjava/lang/Object;)V
    .registers 5

    .line 1602
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "callback_msg"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Message;

    if-eqz p0, :cond_21

    .line 1604
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;

    if-eqz v0, :cond_21

    .line 1605
    check-cast p1, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;

    .line 1606
    iput p2, p0, Landroid/os/Message;->arg1:I

    .line 1607
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1610
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_21
    return-void
.end method

.method public setAutoAcceptFt(I)V
    .registers 3

    .line 620
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->setAutoAcceptFt(II)V

    return-void
.end method

.method public setAutoAcceptFt(II)V
    .registers 3

    .line 625
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->setAutoAcceptFt(II)V

    return-void
.end method

.method protected setConfig(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)V
    .registers 3

    .line 1509
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method protected setCountReconfiguration(I)V
    .registers 2

    .line 2141
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    return-void
.end method

.method public setKnoxBlockState(Z)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x2

    .line 1558
    :goto_5
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mKnoxBlockState:I

    .line 1559
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKnoxBlockState() : mKnoxBlockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mKnoxBlockState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setUserAlias(ILjava/lang/String;)V
    .registers 4

    .line 1554
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->setUserAlias(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .registers 5

    .line 322
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 323
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImSessionClosed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForComposingNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForMessageFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForConferenceInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImdnResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0xe

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImdnFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x1b

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForMessageRevokeResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x1c

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForSendMessageRevokeDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x1f

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForChatbotAnonymizeResp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x20

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForChatbotAnonymizeNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x1e

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForChatbotAsSpamNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    const/16 v3, 0xb

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    const/16 v3, 0xc

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    const/16 v3, 0xd

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    const/16 v1, 0x16

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmLMMIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .registers 4

    .line 356
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 357
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImIncomingSession(Landroid/os/Handler;)V

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImSessionEstablished(Landroid/os/Handler;)V

    .line 360
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImSessionClosed(Landroid/os/Handler;)V

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImIncomingMessage(Landroid/os/Handler;)V

    .line 362
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImIncomingFileTransfer(Landroid/os/Handler;)V

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForComposingNotification(Landroid/os/Handler;)V

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImdnNotification(Landroid/os/Handler;)V

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForMessageFailed(Landroid/os/Handler;)V

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForConferenceInfoUpdate(Landroid/os/Handler;)V

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImdnResponse(Landroid/os/Handler;)V

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImdnFailed(Landroid/os/Handler;)V

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForTransferProgress(Landroid/os/Handler;)V

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForMessageRevokeResponse(Landroid/os/Handler;)V

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForSendMessageRevokeDone(Landroid/os/Handler;)V

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForChatbotAnonymizeNotify(Landroid/os/Handler;)V

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForChatbotAnonymizeResp(Landroid/os/Handler;)V

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForChatbotAsSpamNotify(Landroid/os/Handler;)V

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmIncomingMessage(Landroid/os/Handler;)V

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmIncomingFileTransfer(Landroid/os/Handler;)V

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmImdnNotification(Landroid/os/Handler;)V

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmTransferProgress(Landroid/os/Handler;)V

    .line 379
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmLMMIncomingSession(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 381
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventDeregistered(Lcom/sec/ims/ImsRegistration;)V

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->unregisterXmsReceiver()V

    const/4 v0, 0x0

    move v1, v0

    .line 384
    :goto_84
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_99

    .line 385
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->resetUriList(I)V

    .line 386
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->setXmsReceiverEnabled(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    :cond_99
    return-void
.end method

.method public unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V
    .registers 3

    .line 1733
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    return-void
.end method

.method public unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V
    .registers 3

    .line 1738
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    return-void
.end method

.method public unregisterImsOngoingListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    .registers 3

    .line 1763
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    return-void
.end method

.method public unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V
    .registers 3

    .line 1768
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    return-void
.end method

.method public unregisterServiceAvailabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1479
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "There is no ServiceAvailabilityEventListener registered"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1480
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "It is not possible to unregister different instance of a listener than previously registered"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 p1, 0x0

    .line 1482
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    .line 1483
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ServiceAvailabilityEventListener unregistered"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateExtendedBotMsgFeature(I)V
    .registers 5

    .line 1290
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFeatureUpdater:Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;

    aget-wide v1, v0, p1

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateExtendedBotMsgFeature(IJ)J

    move-result-wide v1

    aput-wide v1, v0, p1

    return-void
.end method

.method protected updateServiceAvailability(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V
    .registers 7

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    if-eqz p3, :cond_e

    .line 1494
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    if-eqz v0, :cond_e

    .line 1495
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;->onServiceAvailabilityUpdate(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    goto :goto_46

    .line 1497
    :cond_e
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service availability cannot be updated, ownIdentity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", remoteUri = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", timestamp = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mServiceAvailabilityEventListener = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1497
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    return-void
.end method
