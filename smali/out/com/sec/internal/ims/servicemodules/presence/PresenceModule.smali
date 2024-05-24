.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "PresenceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0x1388

.field private static final LOG_TAG:Ljava/lang/String; = "PresenceModule"

.field static final NAME:Ljava/lang/String;


# instance fields
.field mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

.field mContext:Landroid/content/Context;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

.field protected mModuleHandler:Landroid/os/Handler;

.field private mPhoneCount:I

.field private mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

.field private mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenceRegiInfoUpdater:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

.field protected mPresenceUpdate:Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

.field private final mPublishRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

.field private mServiceTupleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscribeRetryList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/util/UriGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mUrisToSubscribe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;>;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$9lM44DiidtDbJcgcX_PnFsZuw2Y(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$processDeregistered$3(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LZkJ-QuzcTlj2FCjoOR8XSB45rM(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$processConfigured$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$N9OqsM3W4HaHqqeQv6cHrxfhOR8(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$processRegistered$1(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZdhZkUazVvrDjbmnhSJNSfnEQ2c(Lcom/sec/ims/presence/ServiceTuple;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$setOwnCapabilities$4(Lcom/sec/ims/presence/ServiceTuple;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wGj0N4cwzpF4HtyrSBH6shjxDd0(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$processDeregistering$2(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 107
    const-class v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 7

    .line 178
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 109
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 112
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 113
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    .line 160
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPublishRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUrisToSubscribe:Ljava/util/Map;

    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    .line 172
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    .line 180
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 181
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->NAME:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-direct {v1, p2, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 182
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    .line 184
    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    .line 185
    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    .line 186
    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceUpdate:Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

    .line 188
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    new-instance v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 189
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    invoke-direct {v1, v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 190
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    invoke-direct {v1, v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 192
    new-instance p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    .line 193
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mSubscribeRetryIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->getSubscribeRetryIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move p1, v0

    .line 196
    :goto_9c
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge p1, v1, :cond_ec

    .line 197
    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;-><init>()V

    .line 198
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 199
    new-instance v2, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v2, p1}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    .line 200
    new-instance v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    .line 201
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 203
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUrisToSubscribe:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(ILcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_9c

    :cond_ec
    const-string p1, "power"

    .line 207
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string p2, "PresenceModule"

    if-eqz p1, :cond_102

    const/4 v1, 0x1

    .line 209
    invoke-virtual {p1, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 210
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_102
    const-string p0, "created"

    .line 213
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private acquireWakeLock()V
    .registers 5

    .line 1674
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_5

    return-void

    .line 1678
    :cond_5
    monitor-enter v0

    .line 1679
    :try_start_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const/16 v1, 0xd

    .line 1680
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1681
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1682
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private buildPresenceInfoForThirdParty(I)V
    .registers 6

    const-string v0, "PresenceModule"

    const-string v1, "buildPresenceInfoForThirdParty"

    .line 2069
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2071
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    monitor-enter v0

    .line 2072
    :try_start_a
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2073
    monitor-exit v0

    return-void

    .line 2076
    :cond_14
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/presence/ServiceTuple;

    .line 2077
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v3, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto :goto_1a

    .line 2079
    :cond_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_36

    throw p0
.end method

.method private getPublishTimerValue(I)J
    .registers 3

    .line 1075
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getExtendedPublishTimerCond(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    .line 1076
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimerExtended()J

    move-result-wide p0

    goto :goto_1f

    :cond_17
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide p0

    :goto_1f
    return-wide p0
.end method

.method private handleExpBackOffRetry(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .registers 8

    .line 1867
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v0

    .line 1868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleExpBackOffRetry: EXP_BACKOFF_RETRY count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceModule"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1875
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const-wide/16 v4, 0x0

    if-ne v1, v3, :cond_47

    .line 1876
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v1, :cond_3e

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3e

    const-string v1, "handleExpBackOffRetry: notifying polling failure"

    .line 1877
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1878
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onPollingRequested(ZI)V

    .line 1880
    :cond_3e
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getListSubscribeExpBackOffRetryTime(II)J

    move-result-wide v1

    goto :goto_59

    .line 1881
    :cond_47
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_CONTACT_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v1, v2, :cond_58

    .line 1882
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getSubscribeExpBackOffRetryTime(II)J

    move-result-wide v1

    goto :goto_59

    :cond_58
    move-wide v1, v4

    :goto_59
    cmp-long v3, v1, v4

    if-eqz v3, :cond_6c

    const/4 v3, 0x5

    .line 1885
    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 1886
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startSubscribeRetryTimer(JLjava/lang/String;I)V

    goto :goto_70

    :cond_6c
    const/4 p0, 0x4

    .line 1888
    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    :goto_70
    return-void
.end method

.method private initPublishFailedInfos(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .registers 4

    .line 1368
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RETRY_EXP_BACKOFF:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const/4 v0, 0x0

    if-eq p2, p0, :cond_7

    .line 1369
    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 1371
    :cond_7
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-eq p2, p0, :cond_d

    .line 1372
    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    .line 1374
    :cond_d
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-eq p2, p0, :cond_13

    .line 1375
    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    :cond_13
    return-object p1
.end method

.method private isProvisionedValueAvailable(I)Z
    .registers 4

    .line 1080
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSrRcsPresenceEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1081
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    .line 1082
    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isProvisionedValueAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method private synthetic lambda$processConfigured$0(I)V
    .registers 6

    .line 292
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "PresenceModule"

    if-eqz v0, :cond_4f

    const-string v2, "presence"

    .line 293
    invoke-virtual {v0, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_4f

    .line 297
    :cond_17
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 298
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigured: mno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->readConfig(I)V

    .line 302
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->updateFeatures(I)V

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->checkAndClearPresencePreferences(Ljava/lang/String;I)V

    return-void

    :cond_4f
    :goto_4f
    const-string p0, "processConfigured: no Presence support."

    .line 294
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$processDeregistered$3(Lcom/sec/ims/ImsRegistration;)V
    .registers 10

    .line 404
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 405
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processDeregistered: profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresenceModule"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x1

    .line 408
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v2, 0xa

    .line 409
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v2, 0xc

    .line 410
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v2, 0xb

    .line 411
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 412
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v2, 0x10

    .line 413
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v2, 0x11

    .line 414
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v2, 0xf

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v2, 0x0

    .line 417
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 418
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v5, 0x0

    .line 419
    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 420
    iget-object v6, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_87

    .line 421
    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isPublishGzipEnabled()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 423
    :cond_87
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, v1, v5}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 425
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 426
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetPublishErrorHandling(I)V

    .line 429
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v1, p0, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->notifyPublishCommandError(ILandroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$processDeregistering$2(Lcom/sec/ims/ImsRegistration;)V
    .registers 4

    if-eqz p1, :cond_3a

    const-string v0, "PresenceModule"

    const-string v1, "processDeregistering:"

    .line 379
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 385
    :cond_14
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 386
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 388
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 389
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->unpublish(I)V

    :cond_3a
    return-void
.end method

.method private synthetic lambda$processRegistered$1(Lcom/sec/ims/ImsRegistration;)V
    .registers 8

    .line 329
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 330
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 331
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRegistered: mno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresenceModule"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->readConfig(I)V

    .line 335
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 336
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v4, :cond_40

    .line 338
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isPublishGzipEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 340
    :cond_40
    iput-object p1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 341
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processRegistered: profile "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d0

    .line 352
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d0

    const/4 v2, 0x0

    .line 353
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 356
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "use_sipuri_for_urigenerator"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 357
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 358
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v2, v3, :cond_a4

    .line 359
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object p1

    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    goto :goto_d5

    :cond_d0
    const-string p0, "processRegistered: impus is empty !!!"

    .line 365
    invoke-static {v3, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_d5
    :goto_d5
    return-void
.end method

.method private static synthetic lambda$setOwnCapabilities$4(Lcom/sec/ims/presence/ServiceTuple;)Z
    .registers 2

    .line 485
    iget-object p0, p0, Lcom/sec/ims/presence/ServiceTuple;->description:Ljava/lang/String;

    const-string v0, "MmtelCallComposer"

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private notifyProvisionedValue(I)V
    .registers 7

    .line 1087
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "PresenceModule"

    const-string v1, "notifyProvisionedValue"

    .line 1090
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1091
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    .line 1092
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPublishTimerValue(I)J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0xf

    .line 1091
    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    .line 1093
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    .line 1094
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getMinExpires()J

    move-result-wide v1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPublishTimerValue(I)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x10

    .line 1093
    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    .line 1095
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    .line 1096
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottlePublish()J

    move-result-wide v1

    long-to-int v1, v1

    mul-int/lit16 v1, v1, 0x3e8

    const/16 v2, 0x15

    .line 1095
    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    .line 1097
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    .line 1098
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getMaxUri()I

    move-result v1

    const/16 v2, 0x16

    .line 1097
    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    .line 1099
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 1100
    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPollListSubExp(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x17

    .line 1099
    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    .line 1101
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    .line 1102
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->isGzipEnabled()Z

    move-result p0

    const/16 v1, 0x18

    .line 1101
    invoke-virtual {v0, p1, v1, p0}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    return-void
.end method

.method private notifyPublishError(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V
    .registers 7

    .line 1501
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz p0, :cond_46

    .line 1502
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 1503
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    if-eqz p0, :cond_46

    .line 1505
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_36

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RE_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-ne p2, v0, :cond_36

    .line 1506
    iget-boolean p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    if-nez p2, :cond_2b

    .line 1507
    sget-object p2, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPublishError(Lcom/sec/ims/util/SipError;)V

    const/4 p0, 0x1

    .line 1508
    iput-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    goto :goto_46

    :cond_2b
    const-string p0, "PresenceModule"

    const-string p2, "notifyPublishError: maintain last IMS registration"

    .line 1510
    invoke-static {p0, p4, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 1511
    iput-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    goto :goto_46

    .line 1514
    :cond_36
    new-instance p1, Lcom/sec/ims/util/SipError;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result p2

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPublishError(Lcom/sec/ims/util/SipError;)V

    :cond_46
    :goto_46
    return-void
.end method

.method private onEABPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .registers 3

    .line 2008
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getPhoneId()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onCapabilityAndAvailabilityPublished(II)V

    return-void
.end method

.method private onPublishDisableMode(I)V
    .registers 3

    .line 1495
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    .line 1496
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_16
    return-void
.end method

.method private onPublishFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V
    .registers 12

    .line 1266
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 1267
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v2, 0x0

    .line 1268
    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    const-string v3, "PresenceModule"

    if-nez v0, :cond_19

    const-string p0, "onPublishFailed: mnoStrategy is null."

    .line 1270
    invoke-static {v3, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1274
    :cond_19
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getReason()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    move-result-object v4

    const/4 v5, 0x1

    .line 1275
    invoke-interface {v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    move-result-object v0

    .line 1277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPublishFailed - statusCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x12090004

    .line 1278
    invoke-static {v7, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1281
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->initPublishFailedInfos(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v1

    .line 1283
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v6

    if-eqz v6, :cond_88

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->CONDITIONAL_REQUEST_FAILED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    if-eq v4, v6, :cond_88

    const-string v6, "onPublishFailed - remain etag for Kor"

    .line 1284
    invoke-static {v3, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_8d

    .line 1286
    :cond_88
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v6, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    .line 1289
    :goto_8d
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_98

    .line 1290
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v6, v2}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 1292
    :cond_98
    sget-object v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v2, v2, v6

    const-wide/16 v6, 0x3e8

    packed-switch v2, :pswitch_data_14a

    goto/16 :goto_138

    :pswitch_a7
    const-string v2, "onPublishFailed: need to perform IMS re-registration"

    .line 1355
    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_138

    :pswitch_ae
    const-string v2, "onPublishFailed: PRESENCE_REQUIRE_RETRY_PUBLISH_AFTER"

    .line 1349
    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1350
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getRetryAfter()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRetryAfter(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V

    goto/16 :goto_138

    :pswitch_bc
    const-string v2, "onPublishFailed: PRESENCE_REQUIRE_RETRY_PUBLISH"

    .line 1344
    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1345
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v2

    mul-long/2addr v2, v6

    invoke-direct {p0, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_138

    :pswitch_d2
    const-string v2, "onPublishFailed: vzw default case... "

    .line 1337
    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1338
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishDisableMode(I)V

    goto :goto_138

    .line 1333
    :pswitch_db
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->isRefresh()Z

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishNoResponse(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;ZI)V

    goto :goto_138

    .line 1329
    :pswitch_e3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getRetryAfter()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRetryExpBackoff(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V

    goto :goto_138

    .line 1324
    :pswitch_eb
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getBadEventExpiry()J

    move-result-wide v2

    mul-long/2addr v2, v6

    invoke-direct {p0, v2, v3, v5, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startBadEventTimer(JZI)V

    .line 1325
    invoke-virtual {p0, v5, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    goto :goto_138

    .line 1312
    :pswitch_ff
    invoke-direct {p0, v1, v4, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRequireFull(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;I)Z

    move-result v2

    if-nez v2, :cond_106

    goto :goto_138

    .line 1317
    :cond_106
    :pswitch_106
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getRetryTime()I

    move-result v2

    if-lez v2, :cond_116

    .line 1318
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getRetryTime()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/ims/presence/PresenceInfo;->setMinExpires(J)V

    .line 1320
    :cond_116
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_138

    .line 1308
    :pswitch_122
    invoke-direct {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRequestTimeout(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V

    goto :goto_138

    :pswitch_126
    const-string v2, "onPublishFailed: PRESENCE_NOT_FOUND"

    .line 1303
    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1304
    invoke-virtual {p0, v5, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    goto :goto_138

    :pswitch_12f
    const-string v2, "onPublishFailed: PRESENCE_AT_NOT_REGISTERED"

    .line 1299
    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_138

    .line 1294
    :pswitch_135
    invoke-direct {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishNotProvisioned(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V

    .line 1362
    :goto_138
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->notifyPublishError(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V

    .line 1364
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->sendRCSPPubInfoToHQM(Landroid/content/Context;ILjava/lang/String;I)V

    return-void

    nop

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_135
        :pswitch_12f
        :pswitch_126
        :pswitch_122
        :pswitch_ff
        :pswitch_106
        :pswitch_eb
        :pswitch_e3
        :pswitch_db
        :pswitch_d2
        :pswitch_bc
        :pswitch_bc
        :pswitch_ae
        :pswitch_a7
    .end packed-switch
.end method

.method private onPublishNoResponse(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;ZI)V
    .registers 7

    if-nez p2, :cond_48

    .line 1403
    iget p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    const-string/jumbo p2, "ro.ril.svlte1x"

    const/4 v0, 0x0

    .line 1405
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPublishNoResponse: count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSVLTE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PresenceModule"

    invoke-static {v0, p3, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1408
    iget p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    invoke-static {p3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPublishExpBackOffRetryTime(II)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_43

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 1410
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_48

    :cond_43
    const-string p0, "onPublishNoResponse: retry time end for NoResponse... "

    .line 1412
    invoke-static {v0, p3, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_48
    :goto_48
    return-void
.end method

.method private onPublishNotProvisioned(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V
    .registers 6

    .line 1482
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    .line 1483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPublishNotProvisioned: NOT_PROVISIONED count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PresenceModule"

    invoke-static {v2, p2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1486
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_34

    .line 1487
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 1488
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->triggerOmadmTreeSync(Landroid/content/Context;I)V

    .line 1489
    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    const/4 p0, 0x0

    .line 1490
    iput p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    :cond_34
    return-void
.end method

.method private onPublishRequestTimeout(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V
    .registers 11

    .line 1381
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPublishRequestTimeout: PRESENCE_REQUEST_TIMEOUT count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1385
    iget p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPublishExpBackOffRetryTime(II)J

    move-result-wide v2

    .line 1387
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p1, 0x3

    .line 1388
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_78

    :cond_3b
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    const-wide/16 v6, 0x3e8

    if-eqz p1, :cond_48

    mul-long/2addr v2, v6

    .line 1390
    invoke-direct {p0, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_78

    :cond_48
    const-string p1, "onPublishRequestTimeout: starting error retry ... "

    .line 1392
    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1393
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_78

    .line 1394
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v0

    mul-long/2addr v0, v6

    invoke-direct {p0, v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    .line 1395
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->setPublishErrRetry(J)V

    :cond_78
    :goto_78
    return-void
.end method

.method private onPublishRequireFull(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;I)Z
    .registers 7

    .line 1418
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_d

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1419
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPublishRequireFull: oldError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1421
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitImmediateRetry:Z

    if-eqz v0, :cond_54

    if-eqz p2, :cond_54

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 1422
    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string p1, "onPublishRequireFull: retry after publish timer expires"

    .line 1423
    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1424
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    const/4 p0, 0x0

    return p0

    .line 1427
    :cond_54
    iput-boolean v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitImmediateRetry:Z

    .line 1428
    iput-object p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    :cond_58
    return v2
.end method

.method private onPublishRetryAfter(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const-wide/16 v1, 0x3e8

    if-lez v0, :cond_23

    .line 1436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPublishRetryAfter: retry publish after "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PresenceModule"

    invoke-static {v0, p4, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    mul-long/2addr p2, v1

    .line 1437
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_52

    .line 1439
    :cond_23
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_42

    .line 1440
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide p1

    mul-long/2addr p1, v1

    long-to-double p1, p1

    const-wide v0, 0x3feb333333333333L    # 0.85

    mul-double/2addr p1, v0

    double-to-long p1, p1

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_52

    .line 1442
    :cond_42
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide p1

    mul-long/2addr p1, v1

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    :goto_52
    return-void
.end method

.method private onPublishRetryExpBackoff(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V
    .registers 13

    .line 1448
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const-string v3, "PresenceModule"

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2e

    cmp-long v0, p2, v4

    if-lez v0, :cond_2e

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPublishRetryExpBackoff: Use retryAfter, Retry publish after "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p4, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    mul-long/2addr p2, v1

    .line 1451
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    const/4 p0, 0x0

    .line 1452
    iput p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    return-void

    .line 1457
    :cond_2e
    iget p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 1458
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPublishRetryExpBackoff: count = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p4, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1460
    iget p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    invoke-static {p4, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPublishExpBackOffRetryTime(II)J

    move-result-wide v6

    .line 1462
    invoke-static {p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    invoke-interface {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result p2

    if-eqz p2, :cond_67

    const/4 p1, 0x3

    .line 1463
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b4

    :cond_67
    cmp-long p2, v6, v4

    if-eqz p2, :cond_73

    mul-long/2addr v6, v1

    .line 1465
    invoke-direct {p0, v6, v7, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    .line 1466
    invoke-direct {p0, p3, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setPublishNotFoundProgress(ZI)V

    goto :goto_b4

    .line 1467
    :cond_73
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_84

    .line 1468
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "onPublishRetryExpBackoff: no more retry"

    invoke-virtual {p1, p4, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1469
    invoke-direct {p0, p3, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setPublishNotFoundProgress(ZI)V

    goto :goto_b4

    :cond_84
    const-string p1, "onPublishRetryExpBackoff: starting error retry ... "

    .line 1471
    invoke-static {v3, p4, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1473
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_b4

    .line 1474
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide p1

    mul-long/2addr p1, v1

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    .line 1476
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->setPublishErrRetry(J)V

    :cond_b4
    :goto_b4
    return-void
.end method

.method private onSubscribeFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .registers 12

    .line 1761
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v0

    .line 1762
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "PresenceModule"

    if-nez v1, :cond_12

    const-string p0, "onSubscribeFailed: mnoStrategy is null."

    .line 1764
    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1768
    :cond_12
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getReason()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    move-result-object v1

    .line 1769
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-object v1, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 1771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSubscribeFailed - statusCode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1773
    new-instance v3, Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lcom/sec/ims/presence/PresenceInfo;-><init>(Ljava/lang/String;I)V

    .line 1774
    new-instance v5, Lcom/sec/ims/presence/ServiceTuple;

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v6, v6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 1775
    invoke-virtual {v3, v4}, Lcom/sec/ims/presence/PresenceInfo;->setFetchState(Z)V

    .line 1777
    sget-object v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_109

    const/4 v7, 0x2

    if-eq v5, v7, :cond_105

    const/4 v7, 0x3

    if-eq v5, v7, :cond_ac

    const/4 v7, 0x4

    if-eq v5, v7, :cond_a4

    const/4 v7, 0x6

    if-eq v5, v7, :cond_7f

    const/16 v4, 0xf

    if-eq v5, v4, :cond_132

    packed-switch v5, :pswitch_data_1ce

    goto/16 :goto_151

    .line 1820
    :pswitch_71
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    goto/16 :goto_151

    .line 1839
    :pswitch_7a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeNoResponse(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto/16 :goto_151

    .line 1824
    :cond_7f
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v2, v5, :cond_8e

    .line 1825
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v2, :cond_8e

    .line 1826
    invoke-interface {v2, v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onPollingRequested(ZI)V

    :cond_8e
    const/4 v2, 0x5

    .line 1829
    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1830
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getRetryTime()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setExpiry(I)V

    const/16 v2, 0x8

    .line 1831
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_151

    .line 1781
    :cond_a4
    :pswitch_a4
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->retrySubscription()V

    .line 1782
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->handleExpBackOffRetry(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto/16 :goto_151

    .line 1788
    :cond_ac
    :pswitch_ac
    invoke-virtual {v3}, Lcom/sec/ims/presence/PresenceInfo;->clearService()V

    .line 1789
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSubscribeFailed - PRESENCE_NO_SUBSCRIBE: code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " errorReason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1789
    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1791
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v2

    const/16 v4, 0x194

    if-ne v2, v4, :cond_f2

    const-string v2, "isbot"

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 1793
    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-direct {v2, v4, v5, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto :goto_fd

    .line 1795
    :cond_f2
    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v4, v4

    invoke-direct {v2, v4, v5, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 1798
    :goto_fd
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    goto :goto_151

    .line 1835
    :cond_105
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addPendingSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto :goto_151

    .line 1802
    :cond_109
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_132

    .line 1803
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    invoke-interface {v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 1804
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->triggerOmadmTreeSync(Landroid/content/Context;I)V

    .line 1805
    invoke-virtual {p0, v6, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    const-string/jumbo v4, "trigger OMA sync for 403 not provisioned"

    .line 1806
    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1807
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    goto :goto_151

    .line 1812
    :cond_132
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_145

    .line 1813
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->triggerOmadmTreeSync(Landroid/content/Context;I)V

    :cond_145
    const-string v4, "onSubscribeFailed: for 403 forbidden response"

    .line 1815
    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1816
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    .line 1846
    :goto_151
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_166

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-eq v1, v2, :cond_166

    .line 1848
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetSubscribeRetryCount(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;I)V

    .line 1851
    :cond_166
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v2, :cond_19a

    .line 1852
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    .line 1853
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    if-eqz v2, :cond_19a

    .line 1855
    new-instance v4, Lcom/sec/ims/util/SipError;

    .line 1856
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v5

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    .line 1855
    invoke-interface {v2, v6, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSubscribeError(ILcom/sec/ims/util/SipError;)V

    .line 1860
    :cond_19a
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceUpdate:Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

    invoke-virtual {v2, v3, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->onNewPresenceInformation(Lcom/sec/ims/presence/PresenceInfo;ILcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    .line 1862
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result p1

    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->sendRCSPSubInfoToHQM(Landroid/content/Context;II)V

    .line 1863
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x12090005

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_1ce
    .packed-switch 0x8
        :pswitch_a4
        :pswitch_7a
        :pswitch_71
        :pswitch_ac
    .end packed-switch
.end method

.method private onSubscribeNoResponse(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .registers 11

    .line 1917
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v0

    .line 1918
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_80

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1920
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v1

    const-string v2, "PresenceModule"

    if-nez v1, :cond_73

    const/4 v1, 0x5

    .line 1921
    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1922
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->retrySubscription()V

    .line 1924
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_48

    .line 1925
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1926
    invoke-virtual {v7, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottlePublish()J

    move-result-wide v7

    .line 1925
    invoke-interface {v1, v5, v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->calThrottledPublishRetryDelayTime(JJ)J

    move-result-wide v5

    goto :goto_49

    :cond_48
    move-wide v5, v3

    .line 1927
    :goto_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSubscribeNoResponse: retry in "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    cmp-long v0, v5, v3

    const/16 v1, 0x8

    if-lez v0, :cond_6b

    .line 1929
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_80

    .line 1931
    :cond_6b
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_80

    :cond_73
    const-string p0, "onSubscribeNoResponse: no more retry"

    .line 1934
    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x4

    .line 1935
    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    const/4 p0, 0x0

    .line 1936
    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRetryCount(I)V

    :cond_80
    :goto_80
    return-void
.end method

.method private processConfigured(I)V
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 4

    .line 403
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .registers 4

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private resetPublishErrorHandling(I)V
    .registers 5

    .line 2147
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v1, 0x0

    .line 2148
    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    .line 2149
    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitImmediateRetry:Z

    const/4 v2, 0x0

    .line 2150
    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 2151
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setPublishNotFoundProgress(ZI)V

    return-void
.end method

.method private resetSubscribeRetryCount(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;I)V
    .registers 4

    .line 1942
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result p0

    if-eqz p0, :cond_18

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result p0

    if-lez p0, :cond_18

    const-string p0, "PresenceModule"

    const-string/jumbo v0, "resetSubscribeRetryCount"

    .line 1943
    invoke-static {p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 1944
    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRetryCount(I)V

    :cond_18
    return-void
.end method

.method private setBadEventProgress(ZI)V
    .registers 5

    .line 2083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBadEventProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2084
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventProgress:Z

    return-void
.end method

.method private setPublishNotFoundProgress(ZI)V
    .registers 5

    .line 2096
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3f

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPublishNotFoundProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_32

    .line 2099
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 2101
    :cond_32
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean p1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotFoundProgress:Z

    .line 2102
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    :cond_3f
    return-void
.end method

.method private setServiceVersion(I)V
    .registers 6

    .line 1972
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1973
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v1

    .line 1974
    iget-object v2, v1, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    const-string/jumbo v3, "xbotmessage"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->updateServiceVersion(ILjava/util/HashMap;)V

    .line 1976
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setServiceVersion: xbotmessage "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PresenceModule"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private startBadEventTimer(JZI)V
    .registers 10

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBadEventTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1523
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getBadEventProgress(I)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo p0, "startBadEventTimer: BadEvent in progress"

    .line 1524
    invoke-static {v1, p4, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1528
    :cond_24
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_33

    .line 1529
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    :cond_33
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_8a

    .line 1533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.presence.bad_event_timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "sim_slot_id"

    .line 1534
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1535
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1536
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1537
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x2000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    .line 1540
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    const/4 p1, 0x1

    .line 1542
    invoke-direct {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setBadEventProgress(ZI)V

    if-eqz p3, :cond_8a

    .line 1544
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveBadEventTimestamp(JI)V

    :cond_8a
    return-void
.end method

.method private startPublishTimer(I)V
    .registers 9

    .line 640
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-eqz v0, :cond_17

    const-string/jumbo v0, "startPublishTimer: PublishTimer is already running. Stopping it."

    .line 641
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 642
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 645
    :cond_17
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v2

    .line 647
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v0}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getExtendedPublishTimerCond(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 648
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimerExtended()J

    move-result-wide v2

    .line 651
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPublishTimer: PublishTimer "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " sec"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 654
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.presence.publish_timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "sim_slot_id"

    .line 655
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x2000000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    .line 660
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v0, p0, v2, v3}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    return-void
.end method

.method private startRetryPublishTimer(JI)V
    .registers 11

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRetryPublishTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1591
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 1593
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_29

    .line 1594
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    :cond_29
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_9c

    .line 1598
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    cmp-long v3, p1, v3

    const/4 v4, 0x0

    if-nez v3, :cond_4d

    const/4 v3, 0x1

    goto :goto_4e

    :cond_4d
    move v3, v4

    :goto_4e
    iput-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->ongoingPublishErrRetry:Z

    .line 1600
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.internal.ims.servicemodules.presence.retry_publish"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "sim_slot_id"

    .line 1601
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1602
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1603
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/high16 v6, 0x2000000

    invoke-static {v5, v4, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    .line 1606
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    invoke-static {v2, v3, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 1609
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-nez p1, :cond_9c

    .line 1610
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {p0, v0, v1, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    :cond_9c
    return-void
.end method

.method private startSubscribeRetryTimer(JLjava/lang/String;I)V
    .registers 8

    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startSubscribeRetryTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_33

    .line 1630
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1631
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    :cond_33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.presence.retry_subscribe"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "urn:subscriptionid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1638
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1639
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "KEY_SUBSCRIPTION_ID"

    .line 1640
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "KEY_PHONE_ID"

    .line 1641
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1643
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x2000000

    invoke-static {p4, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 1646
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 1647
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {p0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private stopBadEventTimer(I)V
    .registers 4

    const/16 v0, 0xe

    .line 1550
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1552
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-nez v0, :cond_1e

    const-string/jumbo p0, "stopBadEventTimer: BadEventExitTimer is not running."

    .line 1553
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1e
    const-string/jumbo v0, "stopBadEventTimer"

    .line 1557
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1559
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1560
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    .line 1562
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setBadEventProgress(ZI)V

    .line 1563
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveBadEventTimestamp(JI)V

    return-void
.end method

.method private stopPublishTimer(I)V
    .registers 5

    .line 664
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-nez v0, :cond_15

    const-string/jumbo p0, "stopPublishTimer: PublishTimer is not running."

    .line 666
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_15
    const-string/jumbo v2, "stopPublishTimer:"

    .line 669
    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 671
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 672
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private stopRetryPublishTimer(I)V
    .registers 4

    .line 1616
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-nez v0, :cond_15

    const-string/jumbo p0, "stopRetryPublishTimer: mRetryPublishIntent is null."

    .line 1617
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_15
    const-string/jumbo v0, "stopRetryPublishTimer"

    .line 1620
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1622
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1623
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private stopSubscribeRetryTimer(I)V
    .registers 6

    .line 1651
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1652
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1654
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1655
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1656
    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1657
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_a

    .line 1658
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1659
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v1, 0x4

    .line 1660
    invoke-virtual {v2, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1661
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_37
    const-string p0, "PresenceModule"

    const-string/jumbo v0, "stopSubscribeRetryTimer"

    .line 1664
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private subscribe(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscribe: uri list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "PresenceModule"

    invoke-static {v11, v9, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscribe: request type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 758
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v2, v3, :cond_42

    const/16 v3, 0x8

    .line 759
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 760
    invoke-direct {v0, v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopSubscribeRetryTimer(I)V

    .line 763
    :cond_42
    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v3

    if-nez v3, :cond_49

    return-void

    .line 767
    :cond_49
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 770
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 771
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 772
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_60
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 773
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->hasSubscription(Lcom/sec/ims/util/ImsUri;)Z

    move-result v4

    if-eqz v4, :cond_91

    const-string/jumbo v4, "subscribe: subscription has been already sent"

    .line 774
    invoke-static {v11, v9, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subscribe: subscribed uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v9, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 776
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 779
    :cond_91
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    const-string v5, "list_sub_uri_translation"

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 780
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->useSipUri()Z

    move-result v4

    invoke-virtual {v0, v3, v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v5

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 781
    invoke-virtual {v7, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/util/UriGenerator;

    move/from16 v8, p4

    .line 780
    invoke-static/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->convertUriType(Lcom/sec/ims/util/ImsUri;ZLcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/util/UriGenerator;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 779
    :cond_bd
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 784
    :cond_c1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_ca

    .line 785
    invoke-interface {v1, v14}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 788
    :cond_ca
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_d7

    const-string/jumbo v0, "subscribe: no URI to subscribe."

    .line 789
    invoke-static {v11, v9, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 793
    :cond_d7
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateSubscriptionId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;-><init>(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->addUriAll(Ljava/util/Set;)V

    .line 795
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPollListSubExp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setExpiry(I)V

    .line 796
    invoke-virtual {v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRequestType(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;)V

    const/4 v2, 0x0

    .line 797
    invoke-virtual {v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setSingleFetch(Z)V

    .line 798
    invoke-virtual {v3, v9}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setPhoneId(I)V

    .line 800
    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_ff

    .line 801
    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->addDropUriAll(Ljava/util/Set;)V

    .line 803
    :cond_ff
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->clear()V

    .line 805
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe internalRequestId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v10, :cond_123

    .line 810
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->replaceSubscribeResponseCbSubsId(ILjava/lang/String;)V

    .line 813
    :cond_123
    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_14b

    .line 814
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 815
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 816
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isGzipEnabled()Z

    move-result v6

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getExpiry()I

    move-result v7

    move-object v0, v2

    move-object v1, v13

    move/from16 v2, p2

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move/from16 v7, p4

    .line 815
    invoke-interface/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribeList(Ljava/util/List;ZLandroid/os/Message;Ljava/lang/String;ZII)V

    :cond_14b
    return-void
.end method

.method private updateFeatures(I)V
    .registers 6

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const-string v1, "presence"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 311
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getDefaultDisc()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3f

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v1, v1

    aput-wide v1, v0, p1

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->isSocialPresenceSupport()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 315
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v0, p0, p1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    aput-wide v0, p0, p1

    :cond_3f
    return-void
.end method


# virtual methods
.method public addPublishResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .registers 3

    .line 821
    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->addPublishResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V

    return-void
.end method

.method checkModuleReady(I)Z
    .registers 5

    .line 1984
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PresenceModule"

    if-nez v0, :cond_f

    const-string p0, "checkModuleReady: module not running"

    .line 1985
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1989
    :cond_f
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isReadyToRequest(I)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string p0, "checkModuleReady: not ready to request"

    .line 1990
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1994
    :cond_1b
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-nez v0, :cond_27

    const-string p0, "checkModuleReady: mnoStrategy is null."

    .line 1995
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1999
    :cond_27
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_35

    const-string p0, "checkModuleReady: mUriGenerator is null"

    .line 2000
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_35
    const/4 p0, 0x1

    return p0
.end method

.method clearWakeLock()Z
    .registers 4

    .line 1686
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1690
    :cond_6
    monitor-enter v0

    .line 1691
    :try_start_7
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1692
    monitor-exit v0

    return v1

    .line 1694
    :cond_11
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/16 v1, 0xd

    .line 1695
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1696
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_1e
    move-exception p0

    .line 1697
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public deRegisterService(Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "PresenceModule"

    .line 2033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deRegisterService: serviceIdList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2037
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_60

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "#"

    .line 2038
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2039
    aget-object v4, v2, v0

    .line 2040
    aget-object v2, v2, v3

    const/4 v5, 0x0

    .line 2041
    invoke-static {v4, v2, v5}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 2044
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    monitor-enter v4

    .line 2045
    :try_start_45
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v1, v2}, Lcom/sec/ims/presence/PresenceInfo;->removeService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 2046
    monitor-exit v4

    move v1, v3

    goto :goto_1c

    :catchall_55
    move-exception p0

    monitor-exit v4
    :try_end_57
    .catchall {:try_start_45 .. :try_end_57} :catchall_55

    throw p0

    :cond_58
    const-string v2, "PresenceModule"

    const-string v3, "deRegisterService: not a valid service tuple"

    .line 2049
    invoke-static {v2, p2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1c

    :cond_60
    if-eqz v1, :cond_74

    .line 2054
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2055
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_74
    return-void
.end method

.method public dump()V
    .registers 3

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    const-string v0, "Publish History: "

    .line 2166
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 2168
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3a
    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    if-eqz v0, :cond_3a

    .line 2170
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 2173
    :cond_50
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public getBadEventProgress(I)Z
    .registers 2

    .line 2088
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventProgress:Z

    return p0
.end method

.method public getListSubExpiry(I)I
    .registers 4

    .line 1043
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPollListSubExp(Landroid/content/Context;I)I

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    .line 1044
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getListSubExpiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public getListSubMaxUri(I)I
    .registers 4

    .line 1036
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getMaxUri()I

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    .line 1037
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getListSubMaxUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;
    .registers 4

    const-string v0, "PresenceModule"

    const-string v1, "getOwnPresenceInfo"

    .line 677
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 678
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    return-object p0
.end method

.method public getParalysed(I)Z
    .registers 2

    .line 1009
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mParalysed:Z

    return p0
.end method

.method public getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;
    .registers 2

    .line 994
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    return-object p0
.end method

.method public getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;
    .registers 3

    .line 683
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPresenceInfoByContactId(Ljava/lang/String;I)Lcom/sec/ims/presence/PresenceInfo;
    .registers 4

    .line 688
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 689
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getNumberlistByContactId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 688
    invoke-virtual {v0, p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->getPresenceInfoByContactId(Ljava/lang/String;Ljava/util/List;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    return-object p0
.end method

.method getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .registers 2

    .line 990
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    return-object p0
.end method

.method public getPublishExpiry(I)I
    .registers 6

    .line 1021
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/presence/PresenceInfo;->getMinExpires()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPublishTimerValue(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 1023
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPublishExpiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public getPublishSourceThrottle(I)I
    .registers 4

    .line 1029
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottlePublish()J

    move-result-wide v0

    long-to-int p0, v0

    mul-int/lit16 p0, p0, 0x3e8

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    .line 1030
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPublishSourceThrottle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public getPublishTimer(I)I
    .registers 4

    .line 1014
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPublishTimerValue(I)J

    move-result-wide v0

    long-to-int p0, v0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    .line 1015
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPublishTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public getRegiInfoUpdater(I)Z
    .registers 3

    .line 2155
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .registers 1

    const-string p0, "presence"

    .line 218
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFeature(I)J
    .registers 2

    .line 2129
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;
    .registers 2

    .line 998
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/util/UriGenerator;

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 2

    .line 0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1962
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 1963
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 1964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceModule"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceUpdate:Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

    invoke-static {p1, p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceEvent;->handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;I)Z

    move-result p0

    if-nez p0, :cond_3d

    .line 1967
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: unknown event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void
.end method

.method public init()V
    .registers 6

    .line 231
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    const-string v0, "init"

    const-string v1, "PresenceModule"

    .line 232
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getPresenceHandler()Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 235
    invoke-interface {v0, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForPresenceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/16 v2, 0xc

    invoke-interface {v0, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForWatcherInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v2, 0x2

    invoke-interface {v0, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForPublishFailure(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/16 v2, 0x10

    invoke-interface {v0, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForPresenceNotifyInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/16 v2, 0x11

    invoke-interface {v0, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForPresenceNotifyStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    const/4 v0, 0x0

    .line 243
    :goto_40
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v0, v2, :cond_67

    .line 244
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadPublishTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    .line 245
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadBadEventTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastBadEventTimestamp:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 248
    :cond_67
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 250
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    return-void
.end method

.method public isListSubGzipEnabled(I)I
    .registers 4

    .line 1063
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->isGzipEnabled()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 v1, 0x1

    .line 1064
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isListSubGzipEnabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PresenceModule"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public isOwnCapPublished()Z
    .registers 2

    .line 2107
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 2108
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    return p0
.end method

.method public isOwnPresenceInfoHasTuple(IJ)Z
    .registers 4

    .line 1069
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    .line 1070
    invoke-static {p2, p3}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object p1

    .line 1071
    iget-object p1, p1, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/ims/presence/PresenceInfo;->getServiceTuple(Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isPublishNotFoundProgress(I)Z
    .registers 2

    .line 2092
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotFoundProgress:Z

    return p0
.end method

.method public isReadyToRequest(I)Z
    .registers 4

    .line 454
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-nez v0, :cond_f

    const-string p0, "PresenceModule"

    const-string v0, "isReadyToRequest: mnoStrategy null"

    .line 456
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 460
    :cond_f
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getParalysed(I)Z

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isPresenceReadyToRequest(ZZ)Z

    move-result p0

    return p0
.end method

.method public loadThirdPartyServiceTuples(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;)V"
        }
    .end annotation

    const-string v0, "PresenceModule"

    const-string v1, "loadThirdPartyServiceTuples"

    .line 2060
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/ServiceTuple;

    .line 2062
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    monitor-enter v1

    .line 2063
    :try_start_1a
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2064
    monitor-exit v1

    goto :goto_b

    :catchall_21
    move-exception p0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw p0

    :cond_24
    return-void
.end method

.method onBadEventTimeout(I)V
    .registers 4

    const-string v0, "PresenceModule"

    const-string v1, "onBadEventTimeout: "

    .line 1567
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1569
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_26

    .line 1570
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    const/4 v0, 0x0

    .line 1571
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    const/4 v0, 0x1

    .line 1572
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_26
    return-void
.end method

.method public onConfigured(I)V
    .registers 4

    const-string v0, "PresenceModule"

    const-string v1, "onConfigured:"

    .line 285
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processConfigured(I)V

    return-void
.end method

.method onDefaultSmsPackageChanged()V
    .registers 4

    const-string v0, "PresenceModule"

    const-string v1, "onDefaultSmsPackageChanged"

    .line 444
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 445
    :goto_9
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v1, v2, :cond_19

    .line 446
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getBadEventProgress(I)Z

    move-result v2

    if-nez v2, :cond_16

    .line 447
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setPublishNotFoundProgress(ZI)V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .registers 4

    .line 397
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    const-string p2, "PresenceModule"

    const-string v0, "onDeregistered:"

    .line 398
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processDeregistered(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .registers 4

    const-string v0, "PresenceModule"

    const-string v1, "onDeregistering:"

    .line 372
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processDeregistering(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method onNewNotifyInfo(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;I)V
    .registers 11

    const-string v0, "onNewNotifyInfo:"

    const-string v1, "PresenceModule"

    .line 1106
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1108
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v0

    if-eqz v0, :cond_82

    if-eqz p1, :cond_82

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 1109
    invoke-static {v0, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_82

    .line 1113
    :cond_18
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v0

    if-nez v0, :cond_28

    const-string p0, "onNewNotifyInfo: no subscription"

    .line 1115
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1119
    :cond_28
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getPidfXmls()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, p2, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeNotifyCapabilitiesUpdate(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;)V

    .line 1121
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v1

    if-nez v1, :cond_58

    .line 1122
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getUriTerminatedReason()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getUriTerminatedReason()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_58

    .line 1123
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getUriTerminatedReason()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, p2, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeResourceTerminated(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;)V

    :cond_58
    const-string/jumbo v1, "terminated"

    .line 1126
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1127
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionStateReason()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move v4, p2

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeTerminated(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;J)V

    .line 1130
    :cond_75
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result p0

    if-eqz p0, :cond_82

    .line 1131
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    :cond_82
    :goto_82
    return-void
.end method

.method onNewNotifyStatus(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;I)V
    .registers 11

    const-string v0, "onNewNotifyStatus:"

    const-string v1, "PresenceModule"

    .line 1136
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v0

    if-eqz v0, :cond_45

    if-eqz p1, :cond_45

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 1139
    invoke-static {v0, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_45

    .line 1143
    :cond_18
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSubscribeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v0

    if-nez v0, :cond_28

    const-string p0, "onNewNotifyStatus: no subscription"

    .line 1145
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1149
    :cond_28
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSubscribeId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSubscribeTerminatedReason()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move v4, p2

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeTerminated(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;J)V

    .line 1151
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result p0

    if-eqz p0, :cond_45

    .line 1152
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSubscribeId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    :cond_45
    :goto_45
    return-void
.end method

.method onPeriodicPublish(I)V
    .registers 4

    const-string v0, "PresenceModule"

    const-string v1, "onPeriodicPublish:"

    .line 1668
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1669
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->publish(Lcom/sec/ims/presence/PresenceInfo;I)V

    .line 1670
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startPublishTimer(I)V

    return-void
.end method

.method onPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;I)V
    .registers 13

    const-string v0, "PresenceModule"

    if-nez p1, :cond_a

    const-string p0, "onPublishComplete: response is null"

    .line 1162
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1165
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPublishComplete: success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1166
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Publish - completed, response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x12090003

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1169
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 1171
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->clearWakeLock()Z

    .line 1173
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_17d

    .line 1175
    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 1176
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    const/4 v2, 0x0

    .line 1177
    invoke-virtual {p0, v2, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 1178
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetPublishErrorHandling(I)V

    .line 1182
    instance-of v4, p1, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    if-eqz v4, :cond_d2

    .line 1183
    move-object v4, p1

    check-cast v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    .line 1184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEtag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getEtag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " getExpiresTimer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getExpiresTimer()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1184
    invoke-static {v0, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1188
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getEtag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getExpiresTimer()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishETag(Ljava/lang/String;JI)V

    .line 1189
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->isRefresh()Z

    move-result v4

    .line 1190
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 1191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPublishComplete(), isRefresh : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_d3

    :cond_d2
    move v4, v2

    .line 1194
    :goto_d3
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    .line 1195
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 1196
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    .line 1197
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    .line 1202
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_ef

    .line 1203
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPublishRegistrants:Lcom/sec/internal/helper/RegistrantList;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1205
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 1207
    :cond_ef
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result v2

    if-eqz v2, :cond_106

    const/4 v2, 0x3

    .line 1208
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_141

    :cond_106
    if-nez v4, :cond_113

    .line 1217
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v2, :cond_113

    .line 1218
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v4

    invoke-interface {v2, v4, v3, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onMediaReady(ZZI)V

    .line 1220
    :cond_113
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getPendingSubscription()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_141

    .line 1221
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getPendingSubscription()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v4, "onPublishComplete, pending subscription"

    .line 1222
    invoke-static {v0, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1223
    :goto_12a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13e

    const/16 v4, 0x8

    .line 1224
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12a

    .line 1226
    :cond_13e
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->clearPendingSubscription()V

    .line 1229
    :cond_141
    :goto_141
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRcsProfile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_159

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_187

    .line 1230
    :cond_159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPublishComplete,start PublishTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1231
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startPublishTimer(I)V

    goto :goto_187

    .line 1234
    :cond_17d
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    if-eqz v0, :cond_187

    .line 1235
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V

    .line 1238
    :cond_187
    :goto_187
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v0, :cond_18e

    .line 1239
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onEABPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    .line 1241
    :cond_18e
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v0

    const/16 v1, 0x2c4

    if-ne v0, v1, :cond_19d

    .line 1242
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {p2, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->notifyPublishCommandError(ILandroid/content/Context;I)V

    goto :goto_1aa

    .line 1244
    :cond_19d
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->notifyPublishNetworkResponse(ILandroid/content/Context;ILjava/lang/String;)V

    .line 1247
    :goto_1aa
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    if-eqz v0, :cond_1c9

    .line 1248
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    .line 1249
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->isRefresh()Z

    move-result v0

    if-eqz v0, :cond_1c9

    .line 1250
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v4

    .line 1251
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v6

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p2

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/google/SecImsNotifier;->onPublishUpdated(IILjava/lang/String;ILjava/lang/String;)V

    .line 1255
    :cond_1c9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1256
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1de

    const-string p1, "RCPC"

    .line 1257
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1e7

    :cond_1de
    const-string p1, "RCPF"

    .line 1259
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1e7
    const-string p1, "overwrite_mode"

    .line 1261
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1262
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const-string p1, "DRCS"

    invoke-static {p2, p0, p1, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 4

    .line 322
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    const-string v0, "PresenceModule"

    const-string v1, "onRegistered:"

    .line 323
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processRegistered(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method onRetryPublishTimeout(I)V
    .registers 4

    const-string v0, "PresenceModule"

    const-string v1, "onRetryPublishTimeout"

    .line 1577
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1579
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_34

    .line 1580
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    .line 1581
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_28

    const/4 v0, 0x0

    .line 1582
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    :cond_28
    const/4 v0, 0x1

    .line 1584
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_34
    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .registers 4

    const-string p2, "PresenceModule"

    const-string v0, "onServiceSwitched:"

    .line 225
    invoke-static {p2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->updateFeatures(I)V

    return-void
.end method

.method public onSimChanged(I)V
    .registers 6

    const-string v0, "PresenceModule"

    const-string v1, "onSimChanged:"

    .line 435
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->clearPresenceInfo(I)V

    const/4 v0, 0x0

    .line 438
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setBadEventProgress(ZI)V

    .line 439
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveBadEventTimestamp(JI)V

    .line 440
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setPublishNotFoundProgress(ZI)V

    return-void
.end method

.method onSubscribeComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .registers 9

    .line 1705
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v0

    .line 1706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribeComplete: Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceModule"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1708
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->clearWakeLock()Z

    .line 1710
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    if-nez v1, :cond_39

    const-string p0, "onSubscribeComplete: mnoStrategy is null."

    .line 1712
    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1716
    :cond_39
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v4

    .line 1717
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v5

    .line 1716
    invoke-static {v1, v3, v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeNetworkResponse(Ljava/lang/String;Landroid/content/Context;IILjava/lang/String;)V

    .line 1719
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_59

    const/4 v1, 0x6

    .line 1720
    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1721
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    goto :goto_c4

    .line 1723
    :cond_59
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getExpiry()I

    move-result v1

    if-lez v1, :cond_af

    .line 1725
    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1726
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v4, v5, :cond_78

    .line 1727
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v4, :cond_78

    const-string v4, "onSubscribeComplete: recover polling"

    .line 1728
    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1729
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    invoke-interface {v4, v3, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onPollingRequested(ZI)V

    .line 1732
    :cond_78
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v4

    if-nez v4, :cond_c4

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_c4

    .line 1733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSubscribeComplete: subscription will be terminated after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x9

    .line 1734
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    add-int/2addr v1, v3

    int-to-long v1, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c4

    :cond_af
    const/4 v1, 0x4

    .line 1740
    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1741
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_c4

    .line 1742
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetSubscribeRetryCount(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;I)V

    .line 1747
    :cond_c4
    :goto_c4
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 1748
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_f0

    .line 1749
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_e6

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v1

    const/16 v2, 0x193

    if-eq v1, v2, :cond_f0

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result p2

    const/16 v1, 0x194

    if-ne p2, v1, :cond_e6

    goto :goto_f0

    :cond_e6
    const-string p2, "RCSF"

    .line 1752
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_f9

    :cond_f0
    :goto_f0
    const-string p2, "RCSC"

    .line 1750
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_f9
    const-string p2, "overwrite_mode"

    .line 1754
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1755
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const-string p2, "DRCS"

    invoke-static {v0, p0, p2, p1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1757
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->cleanExpiredSubscription()V

    return-void
.end method

.method onSubscribeListRequested(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)V
    .registers 11

    .line 1893
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUrisToSubscribe:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1894
    monitor-enter v0

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 1895
    :try_start_13
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->subscribe(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)V

    .line 1896
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method onSubscribeRequested(Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;)V
    .registers 4

    .line 1701
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->phoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->useAnonymousFetch()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->subscribe(Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;Z)V

    return-void
.end method

.method onSubscribeRetry(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .registers 10

    .line 1900
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v7

    const-string v0, "PresenceModule"

    const-string v1, "onSubscribeRetry"

    .line 1901
    invoke-static {v0, v7, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1902
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateTimestamp()V

    .line 1904
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1905
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1906
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-le v0, v2, :cond_4a

    .line 1907
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1908
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object p0

    .line 1909
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isGzipEnabled()Z

    move-result v5

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getExpiry()I

    move-result v6

    move-object v0, v2

    move v2, v4

    move-object v4, p0

    .line 1908
    invoke-interface/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribeList(Ljava/util/List;ZLandroid/os/Message;Ljava/lang/String;ZII)V

    goto :goto_60

    .line 1911
    :cond_4a
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    const/4 v2, 0x1

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1912
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v4

    move v5, v7

    .line 1911
    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribe(Lcom/sec/ims/util/ImsUri;ZLandroid/os/Message;Ljava/lang/String;I)V

    :goto_60
    return-void
.end method

.method onSubscriptionTerminated(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .registers 10

    const-string v0, "PresenceModule"

    if-nez p1, :cond_a

    const-string p0, "onSubscriptionTerminated: subscription is null"

    .line 2113
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2116
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2117
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getDropUris()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2118
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4a

    .line 2119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubscriptionTerminated: update capabilities for dropped "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uris"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v1, :cond_4a

    .line 2121
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v3, p0

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v7

    invoke-interface/range {v1 .. v7}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onCapabilityUpdate(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;I)V

    :cond_4a
    return-void
.end method

.method public publish(Lcom/sec/ims/presence/PresenceInfo;I)V
    .registers 4

    const/4 v0, 0x0

    .line 825
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->publish(Lcom/sec/ims/presence/PresenceInfo;ILjava/lang/String;)V

    return-void
.end method

.method publish(Lcom/sec/ims/presence/PresenceInfo;ILjava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 829
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v5

    const-string v6, "PresenceModule"

    if-eqz v5, :cond_2c0

    if-eqz v4, :cond_2c0

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v5, :cond_24

    goto/16 :goto_2c0

    .line 839
    :cond_24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "publish: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v2, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 840
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 841
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v8, 0xf

    if-nez v5, :cond_50

    .line 842
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 844
    :cond_50
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 845
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    .line 847
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-wide v9, v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 848
    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottlePublish()J

    move-result-wide v11

    .line 847
    invoke-interface {v4, v9, v10, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->calThrottledPublishRetryDelayTime(JJ)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    const/4 v13, 0x0

    if-lez v5, :cond_91

    .line 850
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 851
    invoke-virtual {v0, v8, v2, v13, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_90

    .line 853
    :cond_85
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_90
    return-void

    .line 858
    :cond_91
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 859
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v9, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v9, v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mFirstPublish:Z

    if-eqz v9, :cond_df

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v9, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getBadEventExpiry()J

    move-result-wide v9

    cmp-long v9, v9, v11

    if-eqz v9, :cond_df

    .line 860
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v9, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-wide v9, v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastBadEventTimestamp:J

    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 861
    invoke-virtual {v14, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getBadEventExpiry()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    add-long/2addr v9, v14

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v9, v14

    cmp-long v5, v9, v11

    if-lez v5, :cond_df

    const-string/jumbo v5, "publish: restart BadEventTimer"

    .line 863
    invoke-static {v6, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 864
    invoke-direct {v0, v9, v10, v13, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startBadEventTimer(JZI)V

    .line 868
    :cond_df
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getTdelayPublish()J

    move-result-wide v9

    invoke-interface {v4, v9, v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isTdelay(J)J

    move-result-wide v4

    cmp-long v9, v4, v11

    if-eqz v9, :cond_127

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "publish: retry after "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "ms"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 871
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11b

    .line 872
    invoke-virtual {v0, v8, v2, v13, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_126

    .line 874
    :cond_11b
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_126
    return-void

    .line 879
    :cond_127
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_189

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isGoogDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_189

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 880
    invoke-static {v4, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSrRcsPresenceEnabled(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_189

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_189

    .line 881
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    if-eqz v1, :cond_165

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRequestPublishToAosp:Z

    if-nez v1, :cond_15e

    goto :goto_165

    :cond_15e
    const-string/jumbo v0, "publish: already published, return"

    .line 890
    invoke-static {v6, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_188

    :cond_165
    :goto_165
    const-string/jumbo v1, "publish: call onRequestPublishCapabilities, return"

    .line 882
    invoke-static {v6, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 883
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "Publish - call onRequestPublishCapabilities"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 884
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->removePublishedServiceList(I)V

    .line 886
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v1

    invoke-virtual {v1, v2, v7}, Lcom/sec/internal/google/SecImsNotifier;->onRequestPublishCapabilities(II)V

    .line 888
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRequestPublishToAosp:Z

    :goto_188
    return-void

    .line 895
    :cond_189
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->checkIfValidEtag(I)Z

    move-result v4

    if-eqz v4, :cond_1b6

    .line 896
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "valid etag, setting to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPublishETag(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 897
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPublishETag(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/ims/presence/PresenceInfo;->setEtag(Ljava/lang/String;)V

    goto :goto_1bf

    :cond_1b6
    const-string v4, "not valid etag"

    .line 899
    invoke-static {v6, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x0

    .line 900
    invoke-virtual {v1, v4}, Lcom/sec/ims/presence/PresenceInfo;->setEtag(Ljava/lang/String;)V

    .line 903
    :goto_1bf
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v4}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getExtendedPublishTimerCond(ILjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1fb

    .line 904
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v4, v7}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    .line 905
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getMinExpires()J

    move-result-wide v4

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v8, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimerExtended()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sec/ims/presence/PresenceInfo;->setExpireTime(J)V

    .line 906
    invoke-virtual {v1, v7}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    goto :goto_222

    .line 908
    :cond_1fb
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v4, v13}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    .line 909
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getMinExpires()J

    move-result-wide v4

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v7, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sec/ims/presence/PresenceInfo;->setExpireTime(J)V

    .line 910
    invoke-virtual {v1, v13}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    .line 913
    :goto_222
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_246

    const-string/jumbo v4, "publish: set pidfXml"

    .line 914
    invoke-static {v6, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 915
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "publish: pidfXml from AOSP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v2, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 916
    invoke-virtual {v1, v3}, Lcom/sec/ims/presence/PresenceInfo;->setPidf(Ljava/lang/String;)V

    .line 919
    :cond_246
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 920
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    .line 921
    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_276

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadDisplayText(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_276

    const-string v3, "displaytext exist"

    .line 922
    invoke-static {v6, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 923
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v3, v3

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadDisplayText(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/ims/presence/ServiceTuple;->setDisplayText(JLjava/lang/String;)V

    goto :goto_27b

    :cond_276
    const-string v3, "not valid displaytext"

    .line 925
    invoke-static {v6, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 928
    :goto_27b
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->acquireWakeLock()V

    .line 930
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setServiceVersion(I)V

    .line 931
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4, v2}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->publish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;I)V

    .line 933
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mFirstPublish:Z

    if-eqz v1, :cond_2a1

    .line 934
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean v13, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mFirstPublish:Z

    .line 936
    :cond_2a1
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Publish - sent"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",PUB-SENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x12090001

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void

    :cond_2c0
    :goto_2c0
    const-string/jumbo v1, "publish: not ready to publish"

    .line 831
    invoke-static {v6, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 832
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2d5

    .line 833
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    .line 835
    :cond_2d5
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/16 v1, 0x9

    invoke-static {v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->notifyPublishCommandError(ILandroid/content/Context;I)V

    return-void
.end method

.method public readConfig(I)V
    .registers 5

    .line 1950
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PresenceModule"

    if-nez v0, :cond_11

    const-string/jumbo p0, "readConfig: not ready"

    .line 1951
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_11
    const-string/jumbo v0, "readConfig"

    .line 1954
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1955
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->load()V

    .line 1956
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRetryPublishTimer()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/presence/PresenceInfo;->setExpireTime(J)V

    .line 1957
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->notifyProvisionedValue(I)V

    return-void
.end method

.method public registerCapabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;)V
    .registers 2

    .line 561
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    return-void
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const-string v0, "PresenceModule"

    .line 2013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerService: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 2014
    invoke-static {p1, p2, v0}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object p1

    if-eqz p1, :cond_75

    const-string p2, "PresenceModule"

    const-string/jumbo v0, "registerService: valid service tuple"

    .line 2016
    invoke-static {p2, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2017
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean p2, p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    if-nez p2, :cond_45

    .line 2018
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 2020
    :cond_45
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    monitor-enter p2

    .line 2021
    :try_start_50
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v0, p1}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 2022
    monitor-exit p2
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_72

    .line 2023
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2024
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7c

    :catchall_72
    move-exception p0

    .line 2022
    :try_start_73
    monitor-exit p2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0

    :cond_75
    const-string p0, "PresenceModule"

    const-string p1, "advertise: not a valid service tuple, do nothing.."

    .line 2027
    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_7c
    return-void
.end method

.method public removePresenceCache(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I)V"
        }
    .end annotation

    .line 2143
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->removePresenceCache(Ljava/util/List;I)V

    return-void
.end method

.method public requestCapabilityExchange(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;",
            "II)I"
        }
    .end annotation

    const-string v0, "PresenceModule"

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCapabilityExchange: list requestType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 568
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isReadyToRequest(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    const-string p0, "PresenceModule"

    const-string/jumbo p1, "requestCapabilityExchange: PUBLISH is not completed. bail."

    .line 569
    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 572
    :cond_27
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v0

    if-nez v0, :cond_2e

    return v1

    .line 577
    :cond_2e
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUrisToSubscribe:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 578
    monitor-enter v0

    .line 579
    :try_start_3b
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getMaxUri()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v2, v3, :cond_7f

    .line 580
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getMaxUri()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 581
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_67
    if-ge v1, v2, :cond_7b

    .line 582
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 583
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 585
    :cond_7b
    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_89

    .line 587
    :cond_7f
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 588
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    .line 589
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 591
    :goto_89
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {p1, v0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->loadPresenceStorage(Ljava/util/Set;I)V

    .line 592
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_3b .. :try_end_8f} :catchall_9b

    .line 593
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->acquireWakeLock()V

    const/4 p1, 0x7

    .line 594
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v2

    :catchall_9b
    move-exception p0

    .line 592
    :try_start_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw p0
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZJILjava/lang/String;I)Z
    .registers 16

    .line 602
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p6, "requestCapabilityExchange: uri "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "PresenceModule"

    invoke-static {p6, p7, p5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 603
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p8, "requestCapabilityExchange: requestType "

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p8, ", isAlwaysForce: "

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p6, p7, p5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 605
    invoke-virtual {p0, p7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isReadyToRequest(I)Z

    move-result p5

    if-nez p5, :cond_42

    const-string/jumbo p0, "requestCapabilityExchange: PUBLISH is not completed. bail."

    .line 606
    invoke-static {p6, p7, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 610
    :cond_42
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p5, p7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p5, p5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p5

    .line 613
    iget-object p8, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p8, p7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRlsUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p8

    if-eqz p8, :cond_79

    iget-object p8, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 614
    invoke-virtual {p8, p7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRlsUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p8

    invoke-virtual {p8}, Lcom/sec/ims/util/ImsUri;->getScheme()Ljava/lang/String;

    move-result-object p8

    if-eqz p8, :cond_79

    if-nez p5, :cond_79

    const-string/jumbo p0, "requestCapabilityExchange: adding uri to RCS list"

    .line 617
    invoke-static {p6, p7, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_8c

    .line 623
    :cond_79
    new-instance p5, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p7

    move v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;-><init>(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZII)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_8c
    if-eqz p2, :cond_92

    const/4 p0, 0x0

    .line 629
    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;->onComplete(Lcom/sec/ims/options/Capabilities;)V

    :cond_92
    const/4 p0, 0x1

    return p0
.end method

.method public reset(I)V
    .registers 5

    .line 2134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 2135
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 2136
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    .line 2137
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopSubscribeRetryTimer(I)V

    .line 2138
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    return-void
.end method

.method public sendOptionsRequest(Lcom/sec/ims/util/ImsUri;ZLjava/util/Set;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setDisplayText(ILjava/lang/String;)V
    .registers 5

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadDisplayText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1054
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveDisplayText(Ljava/lang/String;I)V

    const/4 p2, 0x1

    .line 1055
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_41

    :cond_3b
    const-string/jumbo p0, "skip setDisplayText"

    .line 1057
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_41
    return-void
.end method

.method public setOwnCapabilities(JI)V
    .registers 13

    .line 464
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 468
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOwnCapabilities: features "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OwnCapabilities - set, features = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",SET:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x12090000

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 472
    new-instance v0, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v0, p3}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    .line 474
    invoke-static {p3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 476
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->changeServiceDescription()V

    .line 479
    :cond_5f
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 481
    invoke-static {p1, p2}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTupleList(J)Ljava/util/List;

    move-result-object p1

    .line 483
    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p2, v3, :cond_87

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/sec/internal/ims/util/ImsUtil;->getComposerAuthValue(ILandroid/content/Context;)I

    move-result p2

    if-nez p2, :cond_87

    const-string/jumbo p2, "remove MmtelCallComposer tuple"

    .line 484
    invoke-static {v1, p3, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 485
    new-instance p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 488
    :cond_87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/presence/ServiceTuple;

    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOwnCapabilities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 490
    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    iget-object v5, v3, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/ims/presence/PresenceInfo;->getServiceTuple(Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v4

    if-eqz v4, :cond_bb

    .line 494
    iget-object v4, v4, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    goto :goto_8b

    .line 496
    :cond_bb
    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    const/16 v5, 0xa

    const/4 v6, 0x5

    if-eqz v4, :cond_e1

    .line 497
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-wide v7, v3, Lcom/sec/ims/presence/ServiceTuple;->feature:J

    invoke-virtual {v4, v7, v8, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadRandomTupleId(JI)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d3

    .line 499
    iput-object v4, v3, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    goto :goto_8b

    .line 501
    :cond_d3
    invoke-static {v6, v5}, Lcom/sec/internal/helper/StringGenerator;->generateString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    .line 502
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-wide v6, v3, Lcom/sec/ims/presence/ServiceTuple;->feature:J

    invoke-virtual {v5, v6, v7, v4, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveRandomTupleId(JLjava/lang/String;I)V

    goto :goto_8b

    .line 505
    :cond_e1
    invoke-static {v6, v5}, Lcom/sec/internal/helper/StringGenerator;->generateString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    goto :goto_8b

    .line 510
    :cond_e8
    invoke-virtual {v0, p3}, Lcom/sec/ims/presence/PresenceInfo;->setPhoneId(I)V

    .line 511
    invoke-virtual {v0, p1}, Lcom/sec/ims/presence/PresenceInfo;->addService(Ljava/util/List;)V

    .line 512
    iget-object p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getPublishGzipEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 513
    iput-object v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    .line 515
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->buildPresenceInfoForThirdParty(I)V

    .line 517
    iget-object p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez p1, :cond_101

    return-void

    .line 521
    :cond_101
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    .line 522
    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_155

    .line 523
    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_120
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_155

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    .line 524
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v3, v4, :cond_120

    .line 525
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_120

    .line 526
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_120

    const-string p1, "getPreferredImpu: Found MDN TEL URI"

    .line 527
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    .line 535
    :cond_155
    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/ims/presence/PresenceInfo;->setUri(Ljava/lang/String;)V

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setOwnCapabilities: uri"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 538
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getParalysed(I)Z

    move-result p1

    if-eqz p1, :cond_186

    const-string/jumbo p0, "setOwnCapabilities: paralysed"

    .line 539
    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 543
    :cond_186
    iget-object p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_1cb

    .line 544
    iget-boolean p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->ongoingPublishErrRetry:Z

    if-nez p1, :cond_195

    const-string/jumbo p0, "setOwnCapabilities: retry timer is running"

    .line 545
    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 548
    :cond_195
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getPublishErrRetryTimer()I

    move-result p2

    int-to-long v3, p2

    invoke-virtual {p1, v3, v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->setPublishErrRetry(J)V

    .line 549
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initialize PublishErrRetry: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 553
    :cond_1cb
    iget-object p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1e0

    .line 554
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1eb

    .line 556
    :cond_1e0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1eb
    return-void
.end method

.method public setParalysed(ZI)V
    .registers 5

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParalysed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1004
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mParalysed:Z

    return-void
.end method

.method public setRegiInfoUpdater(IZ)V
    .registers 3

    .line 2159
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .registers 4

    .line 255
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    const-string v0, "PresenceModule"

    const-string/jumbo v1, "start:"

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 258
    :goto_d
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v1, v2, :cond_1e

    .line 259
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1e
    return-void
.end method

.method public stop()V
    .registers 6

    .line 265
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    const-string v0, "PresenceModule"

    const-string/jumbo v1, "stop:"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 268
    :goto_d
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v1, v2, :cond_53

    .line 269
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 270
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    .line 271
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v2, v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 272
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 273
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopSubscribeRetryTimer(I)V

    .line 274
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetPublishErrorHandling(I)V

    .line 275
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 277
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v2, :cond_50

    const/4 v2, 0x3

    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_53
    return-void
.end method

.method public subscribe(Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;Z)V
    .registers 16

    .line 694
    iget v6, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->phoneId:I

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subscribe: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, v6, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe: request type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v6, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 698
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v0

    if-nez v0, :cond_39

    return-void

    .line 702
    :cond_39
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    const/4 v2, 0x1

    invoke-static {v0, v2, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v0

    if-nez v0, :cond_5d

    .line 704
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;-><init>(Ljava/lang/String;)V

    .line 705
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->addUri(Lcom/sec/ims/util/ImsUri;)V

    .line 706
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRequestType(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;)V

    .line 707
    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setPhoneId(I)V

    .line 708
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    :goto_5b
    move-object v7, v0

    goto :goto_b9

    .line 710
    :cond_5d
    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_6b

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v3, v4, :cond_69

    goto :goto_6b

    :cond_69
    move v11, v5

    goto :goto_6c

    :cond_6b
    :goto_6b
    move v11, v2

    .line 712
    :goto_6c
    invoke-static {v6}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v7

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 713
    invoke-virtual {v2, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottleSubscribe()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    mul-long v9, v2, v8

    iget-boolean v12, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->isAlwaysForce:Z

    move-object v8, v0

    .line 712
    invoke-interface/range {v7 .. v12}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isSubscribeThrottled(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;JZZ)Z

    move-result v2

    if-eqz v2, :cond_ad

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_SR_API:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-eq v2, v3, :cond_ad

    const-string/jumbo p0, "subscribe: single fetch has been already sent"

    .line 716
    invoke-static {v1, v6, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 717
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "subscribe: throttled uri "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v6, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 720
    :cond_ad
    invoke-virtual {v0, v5}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 721
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateTimestamp()V

    .line 722
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRequestType(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;)V

    goto :goto_5b

    .line 725
    :goto_b9
    invoke-static {v6}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->calSubscribeDelayTime(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_ee

    .line 726
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_SR_API:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-eq v0, v4, :cond_ee

    .line 727
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "subscribe: delayed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v6, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x5

    .line 728
    invoke-virtual {v7, p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 729
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 733
    :cond_ee
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v0, v2, :cond_105

    .line 734
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/util/UriGenerator;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addLazySubscription(Lcom/sec/ims/util/ImsUri;)V

    .line 738
    :cond_105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe internalRequestId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->internalRequestId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v6, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 740
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->internalRequestId:I

    if-eqz v0, :cond_127

    .line 741
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->replaceSubscribeResponseCbSubsId(ILjava/lang/String;)V

    .line 744
    :cond_127
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->useSipUri()Z

    move-result v1

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    .line 745
    invoke-virtual {p0, p1, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v2

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/sec/internal/ims/util/UriGenerator;

    move v5, v6

    .line 744
    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->convertUriType(Lcom/sec/ims/util/ImsUri;ZLcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/util/UriGenerator;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 746
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v4

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribe(Lcom/sec/ims/util/ImsUri;ZLandroid/os/Message;Ljava/lang/String;I)V

    return-void
.end method

.method public unpublish(I)V
    .registers 9

    const-string/jumbo v0, "unpublish: "

    const-string v1, "PresenceModule"

    .line 942
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 943
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 944
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    const/4 v0, 0x3

    .line 945
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 947
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 948
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    if-eqz v0, :cond_35

    .line 950
    invoke-static {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->isRegProhibited(Lcom/sec/ims/ImsRegistration;I)Z

    move-result v3

    if-nez v3, :cond_35

    .line 951
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    invoke-interface {v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->unpublish(I)V

    .line 954
    :cond_35
    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4e

    const-string/jumbo v0, "unpublish: remain etag for Kor"

    .line 955
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 956
    iget-wide v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_7e

    .line 957
    iput-wide v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    goto :goto_7e

    .line 959
    :cond_4e
    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v6, :cond_79

    if-eqz v0, :cond_7e

    .line 961
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    .line 962
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 963
    invoke-interface {v3, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v0

    if-nez v0, :cond_73

    const-string/jumbo v0, "unpublish: PDN already disconnected"

    .line 964
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 965
    iget-wide v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_7e

    .line 966
    iput-wide v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    goto :goto_7e

    .line 969
    :cond_73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    goto :goto_7e

    .line 973
    :cond_79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    .line 976
    :cond_7e
    :goto_7e
    iget-boolean v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    if-eqz v0, :cond_a0

    .line 977
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "UnPublish"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",UNPUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x12090002

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :cond_a0
    const/4 v0, 0x0

    .line 980
    iput-boolean v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 982
    iget-object v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 983
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {p0, v4, v5, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 986
    :cond_b0
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsNotifier;->onUnPublish(I)V

    return-void
.end method

.method updatePresenceDatabase(Ljava/util/List;Lcom/sec/ims/presence/PresenceInfo;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/presence/PresenceInfo;",
            "I)V"
        }
    .end annotation

    .line 1157
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/sec/internal/ims/util/UriGenerator;

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->updatePresenceDatabase(Ljava/util/List;Lcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;Lcom/sec/internal/ims/util/UriGenerator;I)V

    return-void
.end method
