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
.method public static synthetic $r8$lambda$1WxMmnbmchLH-cHmIva0Mi0HDOw(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->lambda$onMessagingAppPackageReplaced$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$J2fBynRN5Up-EI927bsUdCTPkf8(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->lambda$requestChatbotAnonymize$3(Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K9671iVt7a75JoRVAcMM0uP9rBU(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->lambda$reportChatbotAsSpam$4(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PqKL8Enai5_Y4ucRMpmAoidGmjI(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->lambda$handleEventConfigured$0(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S83gvQ7Yu-jw_3CZFwvzs6Rwvl8(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->lambda$onUltraPowerSavingModeChanged$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBlockList(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCache(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfigs(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/helper/PhoneIdKeyMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsWifiConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBlockExpires(Lcom/sec/internal/ims/servicemodules/im/ImModule;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockExpires:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBlockList(Lcom/sec/internal/ims/servicemodules/im/ImModule;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockList:Ljava/util/Set;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInternetAvailable(Lcom/sec/internal/ims/servicemodules/im/ImModule;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$monUltraPowerSavingModeChanged(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onUltraPowerSavingModeChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiConnectionChanged(Lcom/sec/internal/ims/servicemodules/im/ImModule;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onWifiConnectionChanged(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 130
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->NAME:Ljava/lang/String;

    .line 131
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "im"

    const-string/jumbo v1, "slm"

    const-string v2, "ft"

    const-string v3, "ft_http"

    .line 136
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sRequiredServices:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)V
    .locals 1

    .line 276
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .line 212
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 166
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    const-string p1, ""

    .line 170
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    .line 175
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockList:Ljava/util/Set;

    const-wide/16 v0, 0x0

    .line 176
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockExpires:J

    .line 178
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mNeedToRemoveFromPendingList:Ljava/util/Set;

    .line 184
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/ImModule$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSmsPatternEventReceiver:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    .line 200
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    .line 2280
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImModule$4;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule$4;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockListUpdateObserver:Landroid/database/ContentObserver;

    .line 213
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    .line 214
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSimManagers:Ljava/util/List;

    .line 216
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 217
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 218
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 219
    new-instance v8, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-direct {v8, p2, v1, p0, p4}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    .line 220
    new-instance v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-object v2, v9

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    move-object v6, p0

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    .line 221
    new-instance v10, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-object v2, v10

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v10, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    .line 222
    new-instance p3, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-direct {p3, p2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    .line 223
    new-instance p3, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-direct {p3, p2, p0, v10, v8}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImProcessor;)V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    .line 224
    new-instance p3, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

    invoke-direct {p3, p2, p0, v9}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/FtProcessor;)V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtTranslation:Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

    .line 225
    new-instance p3, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;

    invoke-direct {p3, p2, p0}, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mThirdPartyTranslation:Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;

    .line 226
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setUpsmEventReceiver()V

    .line 227
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p3

    iput p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    .line 229
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    .line 230
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 231
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 232
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mGroupChatRetrievingHandlers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 233
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 234
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, p3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 235
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataStateConnected:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 236
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsOutOfServices:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 237
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 238
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 239
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 240
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;

    invoke-direct {v0, p2, p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFeatureUpdater:Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;

    .line 241
    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/ImDump;

    invoke-direct {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/ImDump;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move p2, p1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 244
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getInstance(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p4

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 246
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object p4

    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p4, p2, v0}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(ILcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p4

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-le p3, p2, :cond_1

    const/16 p3, 0x1d

    .line 251
    invoke-static {p0, p3, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 254
    :cond_1
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSimManagers:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/16 v0, 0x22

    .line 255
    invoke-interface {p4, p0, v0, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v0, 0x24

    .line 256
    invoke-interface {p4, p0, v0, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 259
    :cond_2
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSimManagers:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->init(I)V

    .line 261
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string p4, "power"

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    .line 262
    sget-object p4, Lcom/sec/internal/ims/servicemodules/im/ImModule;->NAME:Ljava/lang/String;

    invoke-virtual {p3, p2, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 263
    invoke-virtual {p3, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 265
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mKnoxBlockState:I

    .line 266
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setSmsPatternEventReceiver()V

    return-void
.end method

.method private handleADSChange()V
    .locals 4

    .line 2074
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 2075
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleADSChange: current ads phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "handleADSChange: registered, return;"

    .line 2077
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2080
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getActiveSessions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2081
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleEventAbortOngoingHttpFtOperation(I)V
    .locals 3

    .line 2160
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

    .line 2162
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetAvailable:Z

    if-nez p1, :cond_0

    .line 2163
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2164
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->abortAllHttpFtOperations()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleEventConfigured(I)V
    .locals 5

    .line 1061
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1066
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1067
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1069
    :cond_0
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

    .line 1071
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 1072
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1073
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onDataRoamingChanged(ZI)V

    .line 1080
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->CHAT:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1081
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

    if-eqz v2, :cond_2

    const-string p0, "profile is null, return !!!"

    .line 1082
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1086
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    .line 1087
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

    .line 1088
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

    .line 1090
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxConcurrentSession()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->initializeLruCache(I)V

    .line 1091
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    .line 1092
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1093
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFTHTTPAutoResumeAndCancelPerConnectionChange()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1094
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "cancel_ft_wifi_disconnected"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1095
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setNetworkCallback(I)V

    .line 1096
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerDefaultNetworkCallback(I)V

    :cond_5
    return-void
.end method

.method private handleEventDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 1185
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    if-eqz p1, :cond_0

    .line 1187
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 1190
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->stopReconnectGuardTimer(I)V

    .line 1192
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1194
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1195
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1196
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processDeregistration()V

    goto :goto_0

    .line 1200
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterAllFileTransferProgress()V

    .line 1201
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterAllSLMFileTransferProgress()V

    .line 1202
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->clear()V

    .line 1204
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    .line 1206
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string/jumbo v0, "useragent_has_msgappversion"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1207
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    invoke-virtual {p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->unregisterReceiver()V

    :cond_3
    return-void
.end method

.method private handleEventMessageAppChanged()V
    .locals 3

    .line 1216
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1217
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleEventMessageAppChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 1218
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1219
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    .line 1221
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDefaultMessageAppInUse()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterAllFileTransferProgress()V

    .line 1223
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterAllSLMFileTransferProgress()V

    .line 1224
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1225
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 1226
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelPendingFilesInQueue()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleEventProcessRejoinGCSession(I)V
    .locals 3

    .line 2141
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "EVENT_PROCESS_REJOIN_GC_SESSION"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "groupchat_auto_rejoin"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadImSessionForAutoRejoin(Z)V

    .line 2143
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->processRejoinGCSession(I)V

    return-void
.end method

.method private handleEventRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 11

    if-eqz p1, :cond_0

    .line 1108
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    .line 1110
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    if-eqz p1, :cond_2

    .line 1113
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateOwnPhoneNumberOnRegi(ILcom/sec/ims/ImsRegistration;)V

    .line 1115
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isEnableGroupChatListRetrieve()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1116
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mGroupChatRetrievingHandlers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1117
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mGroupChatRetrievingHandlers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v10, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;

    .line 1118
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

    .line 1119
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v1, v0, v10}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1121
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mGroupChatRetrievingHandlers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->startToRetrieveGroupChatList()V

    .line 1124
    :cond_2
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

    .line 1126
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1127
    :cond_3
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1129
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1131
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "When own number is not available through telephonyManager or RegistrationManager, we use imsi. TelephonyManager imsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1132
    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1131
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRequiredServicesRegistered(Lcom/sec/ims/ImsRegistration;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1145
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "update_session_after_registration"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1146
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getActiveSessions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1147
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1148
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    goto :goto_1

    .line 1153
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    .line 1155
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getRegistration(I)Lcom/sec/internal/constants/ims/servicemodules/Registration;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getRegistration(I)Lcom/sec/internal/constants/ims/servicemodules/Registration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->isReRegi()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1156
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "useragent_has_msgappversion"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1157
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setAppVersionToSipUserAgent(Lcom/sec/ims/ImsRegistration;)V

    .line 1159
    :cond_8
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "block_chatbot_nw"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "chatbot-communication"

    invoke-virtual {p1, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1160
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SPECIFIC_BOT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockListUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1162
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/BlockedNumberUtil;->getBlockedNumbersListFromNW(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockList:Ljava/util/Set;

    .line 1163
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/BlockedNumberUtil;->getBlockExpires(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockExpires:J

    .line 1165
    :cond_9
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->processPendingMessagesOnRegi(ILcom/sec/ims/ImsRegistration;)V

    .line 1166
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->startReconnectGuardTiemer(I)V

    .line 1168
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateUriGenerator(I)V

    .line 1171
    :cond_b
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mKnoxBlockState:I

    if-nez p1, :cond_c

    .line 1172
    invoke-static {}, Lcom/sec/internal/helper/BlockedNumberUtil;->isKnoxBlockRequied()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setKnoxBlockState(Z)V

    :cond_c
    return-void
.end method

.method private handleEventRequestChatbotAnonymizeResponse(Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;)V
    .locals 5

    .line 2170
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2171
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfileType(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->UP_2_2:Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_2

    if-eqz v0, :cond_2

    .line 2174
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mChatbotUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 2175
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getActiveSessions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2176
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIsTokenUsed()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotRole()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2177
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    goto :goto_1

    .line 2182
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mChatbotUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mCommandId:Ljava/lang/String;

    iget p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mRetryAfter:I

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onRequestChatbotAnonymizeResponse(Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method private handleEventResumePendingHttpFtOperations(I)V
    .locals 4

    .line 2147
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

    .line 2148
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetAvailable:Z

    if-eqz v0, :cond_1

    .line 2149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2151
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2152
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2153
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingFtHttp(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isDefaultPdnConnected()Z
    .locals 3

    .line 1896
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1897
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 1898
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/16 v2, 0xc

    .line 1899
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1900
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1901
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method private isImsPdnConnected(I)Z
    .locals 1

    .line 1880
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1883
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1885
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1886
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    .line 1887
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method private isRequiredServicesRegistered(Lcom/sec/ims/ImsRegistration;)Z
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 1242
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sRequiredServices:[Ljava/lang/String;

    array-length v1, v0

    move v2, p0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1243
    invoke-virtual {p1, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method private static synthetic lambda$handleEventConfigured$0(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "im"

    .line 1081
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "slm"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onMessagingAppPackageReplaced$1()V
    .locals 4

    .line 1861
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "useragent_has_msgappversion"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1862
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v0, v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    .line 1863
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessagingAppPackageReplaced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 1865
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1866
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-interface {v3, v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->setMoreInfoToSipUserAgent(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$onUltraPowerSavingModeChanged$2()V
    .locals 2

    .line 1988
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onUltraPowerSavingModeChanged: update features"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    return-void
.end method

.method private synthetic lambda$reportChatbotAsSpam$4(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    .line 2024
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    const/4 p1, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onReportChatbotAsSpamRespReceived(Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    .line 2027
    :cond_0
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;

    move-result-object v0

    .line 2028
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->composeSpamXml(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, -0x1

    if-eq p6, p4, :cond_1

    goto :goto_0

    .line 2029
    :cond_1
    iget p6, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    .line 2030
    :goto_0
    new-instance p4, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;

    invoke-direct {p4, p6, p2, p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;-><init>(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 2031
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "reportChatbotAsSpam : uri = "

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

    .line 2032
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {p0, p4}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->reportChatbotAsSpam(Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;)V

    return-void
.end method

.method private synthetic lambda$requestChatbotAnonymize$3(Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1996
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestChatbotAnonymize : uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfileType(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->UP_2_2:Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;

    .line 1998
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    if-lt v1, v2, :cond_2

    .line 2000
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getBotPrivacyDisable()Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p0, "requestChatbotAnonymize Privacy is disabled, Anonymization session doesnt exist"

    .line 2001
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2005
    :cond_0
    new-instance p4, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;

    if-eq p2, v3, :cond_1

    goto :goto_0

    .line 2006
    :cond_1
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    :goto_0
    const-string v0, ""

    invoke-direct {p4, p2, p1, v0, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;-><init>(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {p0, p4}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->requestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V

    goto :goto_2

    .line 2009
    :cond_2
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;

    move-result-object v1

    .line 2010
    invoke-virtual {v1, p4, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->composeAnonymizeXml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2011
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;

    if-eq p2, v3, :cond_3

    goto :goto_1

    .line 2012
    :cond_3
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    :goto_1
    invoke-direct {v1, p2, p1, p4, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;-><init>(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestChatbotAnonymize : xml = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {p0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->requestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V

    :goto_2
    return-void
.end method

.method private onDataRoamingChanged(ZI)V
    .locals 4

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 536
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    move-result-object v0

    .line 537
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAccept(Landroid/content/Context;I)I

    move-result v0

    .line 538
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

    .line 539
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->setFtAutAccept(Landroid/content/Context;IZ)V

    return-void
.end method

.method private onOutOfServiceChanged(ZZI)V
    .locals 3

    .line 546
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOutOfServiceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsOutOfServices:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataStateConnected:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    const/4 p2, 0x0

    if-nez p1, :cond_3

    .line 549
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "cancel_for_deregi_promptly"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 551
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDefaultPdnConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 553
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 554
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "ft_net_capability"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 555
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isImsPdnConnected(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move p2, v0

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_4

    .line 557
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 558
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingFtHttp(I)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 561
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsWifiConnected:Z

    if-nez p1, :cond_4

    .line 563
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 564
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->OUTOFSERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processCancelMessages(ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private onSimRefresh(I)V
    .locals 2

    .line 2086
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSimRefresh:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2087
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2088
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onSimRefresh(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onSimRemoved(I)V
    .locals 2

    .line 2093
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSimRemoved:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2094
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->unregisterXmsReceiver()V

    .line 2095
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->setXmsReceiverEnabled(IZ)V

    return-void
.end method

.method private onUltraPowerSavingModeChanged()V
    .locals 3

    .line 1987
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onWifiConnectionChanged(ZI)V
    .locals 2

    .line 526
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWifiConnectionChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsWifiConnected:Z

    return-void
.end method

.method private processPendingMessagesOnRegi(ILcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 2228
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadImSessionWithPendingMessages()V

    .line 2229
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getEnableFtAutoResumable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2230
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadImSessionWithFailedFTMessages()V

    .line 2234
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v0

    .line 2235
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

    .line 2236
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2237
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

    goto :goto_0

    :cond_1
    const/16 p2, 0x9

    .line 2240
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 p2, 0x13

    .line 2241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private registerDefaultNetworkCallback(I)V
    .locals 2

    .line 1642
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "INET  : registerDefaultNetworkCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1644
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private setAppVersionToSipUserAgent(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 2216
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    if-nez v0, :cond_0

    .line 2217
    new-instance v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/util/IMessagingAppInfoListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    .line 2219
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->registerReceiver()V

    .line 2220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v0, v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    .line 2221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2222
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->setMoreInfoToSipUserAgent(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private setNetworkCallback(I)V
    .locals 2

    .line 1587
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule$3;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;I)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private setSmsPatternEventReceiver()V
    .locals 2

    .line 1976
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSmsPatternEventReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.knox.intent.action.REQUEST_SMS_PATTERN_CHECK_INTERNAL"

    .line 1978
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1980
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSmsPatternEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setUpsmEventReceiver()V
    .locals 4

    .line 1960
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUpsmEventReceiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 1962
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1963
    sget-object v2, Lcom/sec/ims/extensions/SemEmergencyConstantsExt;->EMERGENCY_CHECK_ABNORMAL_STATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    .line 1964
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1966
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1968
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1969
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/sec/internal/helper/os/SystemUtil;->checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "upsm is already set, so send upsm event."

    .line 1970
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onUltraPowerSavingModeChanged()V

    :cond_0
    return-void
.end method

.method private updateFeatures(I)V
    .locals 3

    .line 1255
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeatures: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
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
    .locals 5

    .line 2186
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "+"

    const-string v2, ""

    .line 2188
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2190
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 2192
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

    .line 2193
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 2195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEventRegistered, registration.getImpuList()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 2197
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v3, v4, :cond_1

    .line 2198
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 2202
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2203
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    .line 2204
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 2207
    :cond_3
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 2211
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public acceptChat(Ljava/lang/String;ZI)V
    .locals 0

    .line 2301
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->acceptChat(Ljava/lang/String;ZI)V

    return-void
.end method

.method public acceptFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 727
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->acceptFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method protected acquireWakeLock(Ljava/lang/Object;)V
    .locals 3

    .line 859
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public addParticipants(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 639
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->addParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public attachFileToGroupChat(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;
    .locals 13
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

    .line 716
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
    .locals 16
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

    .line 708
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
    .locals 0

    .line 732
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->cancelFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method public changeGroupAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2321
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupAlias(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeGroupChatIcon(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 2326
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupChatIcon(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public changeGroupChatLeader(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 2316
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupChatLeader(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public changeGroupChatSubject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2311
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->changeGroupChatSubject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cleanUp()V
    .locals 0

    .line 2104
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->stop()V

    return-void
.end method

.method public closeChat(Ljava/lang/String;)V
    .locals 0

    .line 644
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->closeChat(Ljava/lang/String;)V

    return-void
.end method

.method public createChat(ILjava/util/List;Ljava/lang/String;ZZLjava/lang/String;Landroid/net/Uri;ZZ)Ljava/util/concurrent/Future;
    .locals 13
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

    .line 593
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
    .locals 6
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

    .line 587
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
    .locals 0
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

    .line 609
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    move-result-object p0

    return-object p0
.end method

.method public deleteChatsForUnsubscribe()Ljava/util/concurrent/FutureTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 629
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->deleteChatsForUnsubscribe()Ljava/util/concurrent/FutureTask;

    move-result-object p0

    return-object p0
.end method

.method public deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;
    .locals 0
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

    .line 737
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    move-result-object p0

    return-object p0
.end method

.method public deleteMessagesByImdnId(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/concurrent/FutureTask;
    .locals 0
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

    .line 742
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->deleteMessagesByImdnId(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/concurrent/FutureTask;

    move-result-object p0

    return-object p0
.end method

.method public dump()V
    .locals 3

    .line 1755
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

    .line 1756
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1757
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 1758
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1760
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->dump()V

    .line 1761
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method protected getActiveCall(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1

    .line 2065
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    if-eqz v0, :cond_0

    .line 2066
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
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

    .line 1847
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBigDataProcessor()Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;
    .locals 0

    .line 1362
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getBigDataProcessor()Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1352
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 0

    .line 614
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p0

    return-object p0
.end method

.method protected getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;
    .locals 0

    .line 2133
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    return-object p0
.end method

.method public getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    return-object p0
.end method

.method public getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .locals 0

    .line 701
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    return-object p0
.end method

.method protected getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;
    .locals 0

    .line 2137
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

    return-object p0
.end method

.method protected getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .locals 0

    .line 756
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    return-object p0
.end method

.method protected getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;
    .locals 0

    .line 2129
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    return-object p0
.end method

.method public getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method public getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;
    .locals 0

    .line 2125
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    return-object p0
.end method

.method protected getImsiFromPhoneId(I)Ljava/lang/String;
    .locals 0

    .line 2099
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLatchingProcessor()Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;
    .locals 0

    .line 855
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    return-object p0
.end method

.method public getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 0

    .line 1792
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method public getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 0

    .line 1802
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method public getMessages(Ljava/util/Collection;)Ljava/util/List;
    .locals 0
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

    .line 1812
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    .line 1825
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getMsgRoutingType(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .locals 6

    if-eqz p1, :cond_0

    .line 1282
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1283
    :cond_0
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

    :cond_1
    move-object v1, p1

    .line 1286
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
    .locals 0

    .line 286
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->NAME:Ljava/lang/String;

    return-object p0
.end method

.method public getNetwork(I)Landroid/net/Network;
    .locals 1

    .line 1924
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1925
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1926
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getNetwork(ZI)Landroid/net/Network;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1911
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "ft_net_capability"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1915
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    .line 1917
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected getOwnPhoneNum()Ljava/lang/String;
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected getOwnPhoneNum(I)Ljava/lang/String;
    .locals 0

    .line 1305
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getOwnUris(I)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 1933
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1935
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1937
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 1938
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1941
    :cond_0
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
    .locals 0

    .line 1836
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method protected getPhoneIdByChatId(Ljava/lang/String;)I
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 833
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPhoneIdByIMSI(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    .line 847
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    return p0

    .line 849
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 850
    :cond_1
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    :goto_0
    return p1
.end method

.method protected getRcsProfile()Ljava/lang/String;
    .locals 0

    .line 2108
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    return-object p0
.end method

.method public getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 0

    .line 1771
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    return-object p0
.end method

.method public getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 0

    .line 1782
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    return-object p0
.end method

.method protected getRegistrationType(I)Ljava/lang/Integer;
    .locals 0

    .line 1551
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 0

    .line 296
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sRequiredServices:[Ljava/lang/String;

    return-object p0
.end method

.method protected getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;
    .locals 1

    .line 1489
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p0

    return-object p0
.end method

.method protected getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;
    .locals 0

    .line 1498
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/util/UriGenerator;

    return-object p0
.end method

.method public getUserAlias(IZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 1511
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    .line 1514
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAlias()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserAliasFromPreference(I)Ljava/lang/String;
    .locals 1

    .line 1541
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
    .locals 1

    const/16 v0, 0x12

    .line 1649
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 818
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->handleIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.rcs.framework.filetransfer.category.ACTION"

    .line 820
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtTranslation:Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->handleIntent(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 877
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 881
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 1047
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1048
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onSimRemoved(I)V

    goto/16 :goto_1

    .line 1040
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1041
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mNeedToRemoveFromPendingList:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1042
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromPendingList(I)V

    goto/16 :goto_1

    .line 1035
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1036
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onSimRefresh(I)V

    goto/16 :goto_1

    .line 1029
    :pswitch_4
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 1030
    invoke-static {v1, p0}, Lcom/sec/internal/ims/registry/ImsRegistry;->startAutoConfig(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 1016
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1017
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;

    .line 1018
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;->mChatbotUri:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;->mResult:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;->mCommandId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onRequestChatbotAnonymizeNotiReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1011
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1012
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventRequestChatbotAnonymizeResponse(Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;)V

    goto/16 :goto_1

    .line 1022
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1023
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;

    .line 1024
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;->mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1025
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;->mUri:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;->mRequestId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onReportChatbotAsSpamRespReceived(Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 1007
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleADSChange()V

    goto/16 :goto_1

    .line 976
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 977
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object p0

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;

    .line 978
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->onSendMessageRevokeRequestDone(Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;)V

    goto/16 :goto_1

    .line 982
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 983
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object p0

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;

    .line 984
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->onMessageRevokeResponseReceived(Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;)V

    goto/16 :goto_1

    .line 1003
    :pswitch_b
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->handleEventBlocklistChanged()V

    goto/16 :goto_1

    .line 998
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 999
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventAbortOngoingHttpFtOperation(I)V

    goto/16 :goto_1

    .line 993
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 994
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventResumePendingHttpFtOperations(I)V

    goto/16 :goto_1

    .line 988
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 989
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onIncomingSlmLMMSessionReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;)V

    goto/16 :goto_1

    .line 935
    :pswitch_f
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 936
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

    goto/16 :goto_1

    .line 971
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 972
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->handleFileTransferProgress(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;)V

    goto/16 :goto_1

    .line 966
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 967
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventProcessRejoinGCSession(I)V

    goto/16 :goto_1

    .line 962
    :pswitch_12
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventMessageAppChanged()V

    goto/16 :goto_1

    .line 958
    :pswitch_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventConfigured(I)V

    goto/16 :goto_1

    .line 954
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventDeregistered(Lcom/sec/ims/ImsRegistration;)V

    goto/16 :goto_1

    .line 950
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto/16 :goto_1

    .line 930
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 931
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onSendImdnFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;)V

    goto/16 :goto_1

    .line 940
    :pswitch_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 941
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onIncomingSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;)V

    goto/16 :goto_1

    .line 898
    :pswitch_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 899
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    goto/16 :goto_1

    .line 945
    :pswitch_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 946
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onProcessPendingMessages(I)V

    goto/16 :goto_1

    .line 925
    :pswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 926
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onSendMessageHandleReportFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;)V

    goto :goto_1

    .line 920
    :pswitch_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 921
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onImdnNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V

    goto :goto_1

    .line 914
    :pswitch_1c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 915
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onComposingNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V

    goto :goto_1

    .line 909
    :pswitch_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 910
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->onIncomingFileTransferReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;)V

    goto :goto_1

    .line 903
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 904
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onIncomingMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V

    goto :goto_1

    .line 893
    :pswitch_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 894
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V

    goto :goto_1

    .line 888
    :pswitch_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 889
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V

    goto :goto_1

    .line 883
    :pswitch_21
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 884
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onIncomingSessionReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1d
        :pswitch_1b
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected hasChatbotParticipant(Ljava/lang/String;)Z
    .locals 0

    .line 2037
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2039
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasEstablishedSession()Z
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->hasEstablishedSession()Z

    move-result p0

    return p0
.end method

.method public hasIncomingSessionForA2P(I)Z
    .locals 3

    .line 2250
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasIncomingSessionForA2P: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public init()V
    .locals 4

    .line 305
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 306
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->load(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->init(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->init(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->init(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V

    return-void
.end method

.method protected isBlockedNumber(ILcom/sec/ims/util/ImsUri;Z)Z
    .locals 4

    .line 2255
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v1, :cond_0

    .line 2256
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 2259
    :goto_0
    invoke-static {p2, p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->isChatbotUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 2260
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    const-string/jumbo p3, "skip_block_chatbot_msg"

    invoke-interface {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    .line 2263
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string p2, "block_chatbot_nw"

    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockExpires:J

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-lez p3, :cond_2

    .line 2264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gez p1, :cond_2

    .line 2265
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/BlockedNumberUtil;->getBlockedNumbersListFromNW(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockList:Ljava/util/Set;

    .line 2266
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/BlockedNumberUtil;->getBlockExpires(Landroid/content/Context;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockExpires:J

    .line 2267
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string p2, "expired the cache so reload it"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sec/internal/helper/BlockedNumberUtil;->isBlockedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockList:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_3
    const/4 p0, 0x1

    move v1, p0

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    .line 2270
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string p2, "block_msg"

    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2271
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/BlockedNumberUtil;->isBlockedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 2274
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

    :cond_6
    return v1
.end method

.method protected isDataRoaming(I)Z
    .locals 0

    .line 2116
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected isDefaultMessageAppInUse()Z
    .locals 4

    .line 1659
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/PackageUtils;->getMsgAppPkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1661
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1663
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

    .line 1666
    :goto_0
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    .line 1667
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
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1316
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isOwnNumberChanged: Invalid session."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1319
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1320
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    .line 1322
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 1327
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1328
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1329
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const v5, 0x40000015    # 2.000005f

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    const-string p0, "IMSI"

    .line 1330
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, v1, p0, v3}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    return v6

    .line 1333
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1334
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

    .line 1335
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    const-string v4, "MDN"

    .line 1336
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_3

    .line 1337
    invoke-virtual {v2, p0}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "1"

    goto :goto_0

    :cond_3
    const-string v4, "0"

    :goto_0
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1338
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v1, p1, v3}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    if-eqz v2, :cond_4

    .line 1339
    invoke-virtual {v2, p0}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    move v0, v6

    :cond_4
    return v0

    .line 1323
    :cond_5
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isOwnNumberChanged: Invalid value."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected isRegistered()Z
    .locals 0

    .line 780
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isRegistered(I)Z
    .locals 0

    .line 790
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isServiceRegistered(ILjava/lang/String;)Z
    .locals 2

    .line 802
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 804
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

    .line 805
    invoke-virtual {p0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWifiConnected()Z
    .locals 0

    .line 1357
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsWifiConnected:Z

    return p0
.end method

.method protected normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 1384
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 1387
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1388
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object p1

    sget-object p2, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne p1, p2, :cond_1

    .line 1389
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->removeTelParams()V

    :cond_1
    return-object p0
.end method

.method public normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 1374
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0
.end method

.method protected normalizeUri(ILjava/util/Collection;)Ljava/util/Set;
    .locals 4
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

    .line 1401
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1402
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1404
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 1405
    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1406
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;

    invoke-direct {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;-><init>(Lcom/sec/ims/util/ImsUri;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1407
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1409
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "normalizeUri(Collection): normalized Uri is null. Ignored."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected notifyDeviceOutOfMemory()V
    .locals 2

    .line 1268
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected notifyRCSMessages()Z
    .locals 1

    .line 1560
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "notify_rcs_msg"

    .line 1561
    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCallStateChanged(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 2045
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2047
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 2048
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2049
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

    .line 2051
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/util/UriGenerator;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2052
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2053
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2058
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nConnectedCalls = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, v2, :cond_2

    .line 2060
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public onConfigured(I)V
    .locals 3

    .line 397
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigured: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 4

    .line 478
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    if-eqz p1, :cond_0

    .line 480
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 481
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

    .line 483
    :cond_0
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

    .line 485
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "onDeregistered() : already deregistered."

    .line 486
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->remove(I)Ljava/lang/Object;

    .line 490
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 491
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 492
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 5

    .line 445
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 446
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    if-eqz p1, :cond_0

    .line 449
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->remove(I)Ljava/lang/Object;

    .line 452
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 456
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 457
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 458
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->forceCloseSession()V

    goto :goto_0

    .line 461
    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "block_chatbot_nw"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const-string v0, "chatbot-communication"

    .line 462
    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 463
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockListUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 464
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const-wide/16 v0, 0x0

    .line 465
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mBlockExpires:J

    :cond_4
    return-void
.end method

.method public onMessagingAppPackageReplaced()V
    .locals 1

    .line 1860
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 3

    .line 503
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 504
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

    .line 505
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsWifiConnected:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "cancel_ft_wifi_disconnected"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onWifiConnectionChanged(ZI)V

    .line 508
    :cond_0
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 509
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onDataRoamingChanged(ZI)V

    .line 511
    :cond_1
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsOutOfServices:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 512
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onOutOfServiceChanged(ZZI)V

    goto :goto_0

    .line 513
    :cond_2
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataStateConnected:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eq v0, v1, :cond_3

    .line 516
    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-direct {p0, p1, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onOutOfServiceChanged(ZZI)V

    .line 518
    :cond_3
    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 5

    .line 409
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 410
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 411
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

    .line 412
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

    .line 414
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 415
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    const-string/jumbo v4, "use_xms_receiver_for_resolving_latching"

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->registerXmsReceiver(I)V

    .line 419
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {v3, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->checkAfterSimChanged(ILjava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->resetUriList(I)V

    .line 424
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 425
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 427
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "use_sipuri_for_urigenerator"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 428
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 429
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v3, v4, :cond_1

    .line 430
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    :cond_2
    const/16 v0, 0xf

    .line 435
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRequestIncomingFtTransferPath()Ljava/lang/String;
    .locals 0

    .line 1852
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->onRequestIncomingFtTransferPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onRequestRegistrationType()Ljava/lang/Integer;
    .locals 4

    .line 760
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 763
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRegistrationType(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 766
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 769
    :cond_1
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
    .locals 1

    .line 1678
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onServiceSwitched"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    return-void
.end method

.method public readMessages(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 599
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->readMessages(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public readMessages(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 604
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->readMessages(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public reconfiguration([J)V
    .locals 3

    const/16 v0, 0x21

    .line 1947
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1950
    :cond_0
    array-length v1, p1

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    if-le v1, v2, :cond_1

    .line 1951
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    aget-wide v1, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1952
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    :cond_1
    return-void
.end method

.method public registerChatEventListener(Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;)V
    .locals 0

    .line 577
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->registerChatEventListener(Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;)V

    return-void
.end method

.method public registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V
    .locals 0

    .line 682
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    return-void
.end method

.method public registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V
    .locals 1

    .line 1689
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    return-void
.end method

.method public registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V
    .locals 0

    .line 1694
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    return-void
.end method

.method public registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    return-void
.end method

.method public registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V
    .locals 0

    .line 1724
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    return-void
.end method

.method public registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V
    .locals 0

    .line 671
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    return-void
.end method

.method public registerServiceAvailabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1431
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ServiceAvailabilityEventListener is already registered"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1433
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    .line 1434
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "registered ServiceAvailabilityEventListener"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public rejectFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V
    .locals 0

    .line 747
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->rejectFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method protected releaseWakeLock(Ljava/lang/Object;)V
    .locals 3

    .line 864
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method protected removeFromPendingListWithDelay(I)V
    .locals 2

    .line 2245
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mNeedToRemoveFromPendingList:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public removeParticipants(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 2306
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->removeParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected removeReconfigurationEvent()V
    .locals 1

    const/16 v0, 0x21

    .line 2120
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public reportChatbotAsSpam(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
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

    .line 2022
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
    .locals 7

    .line 1995
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
    .locals 0

    .line 634
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->resendMessage(I)V

    return-void
.end method

.method public resumeReceivingTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 654
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->resumeReceivingTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public resumeSendingTransfer(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->resumeSendingTransfer(Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method public revokeMessage(Ljava/lang/String;Ljava/util/List;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 2291
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->requestMessageRevocation(Ljava/lang/String;Ljava/util/List;ZI)V

    return-void
.end method

.method public sendComposingNotification(Ljava/lang/String;IZ)V
    .locals 0

    .line 2296
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->sendComposingNotification(Ljava/lang/String;IZ)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;)V
    .locals 0

    .line 722
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->sendFile(Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 16
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

    .line 1746
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
    .locals 1

    .line 1573
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "callback_msg"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Message;

    if-eqz p0, :cond_0

    .line 1575
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;

    if-eqz v0, :cond_0

    .line 1576
    check-cast p1, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;

    .line 1577
    iput p2, p0, Landroid/os/Message;->arg1:I

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object p3, p2, p1

    .line 1578
    iput-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1581
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setAutoAcceptFt(I)V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->setAutoAcceptFt(II)V

    return-void
.end method

.method public setAutoAcceptFt(II)V
    .locals 0

    .line 624
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->setAutoAcceptFt(II)V

    return-void
.end method

.method protected setConfig(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)V
    .locals 1

    .line 1480
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method protected setCountReconfiguration(I)V
    .locals 0

    .line 2112
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    return-void
.end method

.method public setKnoxBlockState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1529
    :goto_0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mKnoxBlockState:I

    .line 1530
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
    .locals 1

    .line 1525
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->setUserAlias(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 321
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 322
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImSessionClosed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForComposingNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForMessageFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForConferenceInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImdnResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0xe

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImdnFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x1b

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForMessageRevokeResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x1c

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForSendMessageRevokeDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x1f

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForChatbotAnonymizeResp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x20

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForChatbotAnonymizeNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x1e

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForChatbotAsSpamNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    const/16 v3, 0xb

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    const/16 v3, 0xc

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    const/16 v3, 0xd

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    const/16 v1, 0x16

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmLMMIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 355
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 356
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImIncomingSession(Landroid/os/Handler;)V

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImSessionEstablished(Landroid/os/Handler;)V

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImSessionClosed(Landroid/os/Handler;)V

    .line 360
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImIncomingMessage(Landroid/os/Handler;)V

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImIncomingFileTransfer(Landroid/os/Handler;)V

    .line 362
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForComposingNotification(Landroid/os/Handler;)V

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImdnNotification(Landroid/os/Handler;)V

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForMessageFailed(Landroid/os/Handler;)V

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForConferenceInfoUpdate(Landroid/os/Handler;)V

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImdnResponse(Landroid/os/Handler;)V

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImdnFailed(Landroid/os/Handler;)V

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForTransferProgress(Landroid/os/Handler;)V

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForMessageRevokeResponse(Landroid/os/Handler;)V

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForSendMessageRevokeDone(Landroid/os/Handler;)V

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForChatbotAnonymizeNotify(Landroid/os/Handler;)V

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForChatbotAnonymizeResp(Landroid/os/Handler;)V

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForChatbotAsSpamNotify(Landroid/os/Handler;)V

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmIncomingMessage(Landroid/os/Handler;)V

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmIncomingFileTransfer(Landroid/os/Handler;)V

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmImdnNotification(Landroid/os/Handler;)V

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmTransferProgress(Landroid/os/Handler;)V

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmLMMIncomingSession(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 380
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventDeregistered(Lcom/sec/ims/ImsRegistration;)V

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->unregisterXmsReceiver()V

    const/4 v0, 0x0

    move v1, v0

    .line 383
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->resetUriList(I)V

    .line 385
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImLatchingProcessor:Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->setXmsReceiverEnabled(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V
    .locals 1

    .line 1704
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    return-void
.end method

.method public unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V
    .locals 0

    .line 1709
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    return-void
.end method

.method public unregisterImsOngoingListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    .locals 1

    .line 1734
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mActiveDataPhoneId:I

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    return-void
.end method

.method public unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V
    .locals 0

    .line 1739
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    return-void
.end method

.method public unregisterServiceAvailabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1450
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "There is no ServiceAvailabilityEventListener registered"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1451
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "It is not possible to unregister different instance of a listener than previously registered"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 p1, 0x0

    .line 1453
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    .line 1454
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ServiceAvailabilityEventListener unregistered"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateExtendedBotMsgFeature(I)V
    .locals 3

    .line 1261
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFeatureUpdater:Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;

    aget-wide v1, v0, p1

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateExtendedBotMsgFeature(IJ)J

    move-result-wide v1

    aput-wide v1, v0, p1

    return-void
.end method

.method protected updateServiceAvailability(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    if-eqz v0, :cond_0

    .line 1466
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;->onServiceAvailabilityUpdate(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    goto :goto_0

    .line 1468
    :cond_0
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

    .line 1469
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

    .line 1468
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
