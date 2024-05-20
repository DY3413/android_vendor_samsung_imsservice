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

.field mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

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
.method public static synthetic $r8$lambda$4rDLE3gx9Iqk-l65tLXDL_HnSVY(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$processDeregistered$3(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6ljUN_-DroRNdcfIlvJlxKVvMkE(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$processDeregistering$2(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$73bjCfRQyHODe4p1trn9jC9h668(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$processRegistered$1(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P81fj3TcsndXY-neUccuuMNjgM0(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$processConfigured$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZdhZkUazVvrDjbmnhSJNSfnEQ2c(Lcom/sec/ims/presence/ServiceTuple;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$setOwnCapabilities$4(Lcom/sec/ims/presence/ServiceTuple;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 106
    const-class v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4

    .line 176
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 108
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 111
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 112
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    .line 113
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    .line 158
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPublishRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUrisToSubscribe:Ljava/util/Map;

    .line 161
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    .line 170
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    .line 178
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 179
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->NAME:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-direct {v1, p2, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 180
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    .line 182
    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    .line 183
    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    .line 184
    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceUpdate:Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

    .line 186
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    new-instance v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 187
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    invoke-direct {v1, v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 189
    new-instance p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    .line 190
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mSubscribeRetryIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->getSubscribeRetryIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move p1, v0

    .line 193
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge p1, v1, :cond_0

    .line 194
    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;-><init>()V

    .line 195
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 196
    new-instance v2, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v2, p1}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    .line 197
    new-instance v2, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    .line 198
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 199
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUrisToSubscribe:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "power"

    .line 203
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string p2, "PresenceModule"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 205
    invoke-virtual {p1, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 206
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_1
    const-string p0, "created"

    .line 209
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private acquireWakeLock()V
    .locals 4

    .line 1641
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    return-void

    .line 1645
    :cond_0
    monitor-enter v0

    .line 1646
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const/16 v1, 0xd

    .line 1647
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1648
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1649
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private buildPresenceInfoForThirdParty(I)V
    .locals 4

    const-string v0, "PresenceModule"

    const-string v1, "buildPresenceInfoForThirdParty"

    .line 1989
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1991
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    monitor-enter v0

    .line 1992
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1993
    monitor-exit v0

    return-void

    .line 1996
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/presence/ServiceTuple;

    .line 1997
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v3, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto :goto_0

    .line 1999
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getPublishTimerValue(I)J
    .locals 1

    .line 1060
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getExtendedPublishTimerCond(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    .line 1061
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimerExtended()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method private handleExpBackOffRetry(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 6

    .line 1823
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v0

    .line 1824
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

    .line 1831
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const-wide/16 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 1832
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "handleExpBackOffRetry: notifying polling failure"

    .line 1833
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1834
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onPollingRequested(ZI)V

    .line 1836
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getListSubscribeExpBackOffRetryTime(II)J

    move-result-wide v1

    goto :goto_0

    .line 1837
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_CONTACT_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v1, v2, :cond_2

    .line 1838
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getSubscribeExpBackOffRetryTime(II)J

    move-result-wide v1

    goto :goto_0

    :cond_2
    move-wide v1, v4

    :goto_0
    cmp-long v3, v1, v4

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    .line 1841
    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 1842
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startSubscribeRetryTimer(JLjava/lang/String;I)V

    goto :goto_1

    :cond_3
    const/4 p0, 0x4

    .line 1844
    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    :goto_1
    return-void
.end method

.method private initPublishFailedInfos(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .locals 1

    .line 1351
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RETRY_EXP_BACKOFF:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const/4 v0, 0x0

    if-eq p2, p0, :cond_0

    .line 1352
    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 1354
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-eq p2, p0, :cond_1

    .line 1355
    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    .line 1357
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-eq p2, p0, :cond_2

    .line 1358
    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    :cond_2
    return-object p1
.end method

.method private isProvisionedValueAvailable(I)Z
    .locals 2

    .line 1065
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSrRcsPresenceEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1067
    :goto_0
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
    .locals 4

    .line 288
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "PresenceModule"

    if-eqz v0, :cond_1

    const-string v2, "presence"

    .line 289
    invoke-virtual {v0, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 294
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigured: mno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->readConfig(I)V

    .line 298
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->updateFeatures(I)V

    .line 300
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->checkAndClearPresencePreferences(Ljava/lang/String;I)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "processConfigured: no Presence support."

    .line 290
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$processDeregistered$3(Lcom/sec/ims/ImsRegistration;)V
    .locals 8

    .line 400
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 401
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 402
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

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 405
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 406
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 408
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 409
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 410
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x11

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 411
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xf

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v2, 0x0

    .line 413
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 414
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v5, 0x0

    .line 415
    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 416
    iget-object v6, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_0

    .line 417
    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isPublishGzipEnabled()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 421
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 422
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetPublishErrorHandling(I)V

    .line 425
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v1, p0, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->notifyPublishCommandError(ILandroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$processDeregistering$2(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "PresenceModule"

    const-string v1, "processDeregistering:"

    .line 375
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 381
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v0, 0xf

    .line 382
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 384
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->unpublish(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$processRegistered$1(Lcom/sec/ims/ImsRegistration;)V
    .locals 6

    .line 325
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 326
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 327
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    .line 328
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

    .line 330
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->readConfig(I)V

    .line 331
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 332
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v4, :cond_0

    .line 334
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isPublishGzipEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 336
    :cond_0
    iput-object p1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 337
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
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

    .line 347
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 348
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 349
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 350
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 352
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "use_sipuri_for_urigenerator"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    .line 354
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v1, v2, :cond_1

    .line 355
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    goto :goto_0

    :cond_2
    const-string p0, "processRegistered: impus is empty !!!"

    .line 361
    invoke-static {v3, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$setOwnCapabilities$4(Lcom/sec/ims/presence/ServiceTuple;)Z
    .locals 1

    .line 471
    iget-object p0, p0, Lcom/sec/ims/presence/ServiceTuple;->description:Ljava/lang/String;

    const-string v0, "MmtelCallComposer"

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyProvisionedValue(I)V
    .locals 6

    .line 1072
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PresenceModule"

    const-string v1, "notifyProvisionedValue"

    .line 1075
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1076
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    const/16 v1, 0xf

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPublishTimerValue(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->notifyProvisionedIntValueChanged(III)V

    .line 1077
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    const/16 v1, 0x10

    .line 1078
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/presence/PresenceInfo;->getMinExpires()J

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPublishTimerValue(I)J

    move-result-wide v4

    .line 1077
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->notifyProvisionedIntValueChanged(III)V

    .line 1079
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object v2

    .line 1080
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottlePublish()J

    move-result-wide v2

    long-to-int v2, v2

    mul-int/lit16 v2, v2, 0x3e8

    .line 1079
    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->notifyProvisionedIntValueChanged(III)V

    .line 1081
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object v2

    .line 1082
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getMaxUri()I

    move-result v2

    .line 1081
    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->notifyProvisionedIntValueChanged(III)V

    .line 1083
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 1084
    invoke-static {v2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPollListSubExp(Landroid/content/Context;I)I

    move-result v2

    .line 1083
    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->notifyProvisionedIntValueChanged(III)V

    .line 1085
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    const/16 v1, 0x18

    .line 1086
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->isGzipEnabled()Z

    move-result p0

    .line 1085
    invoke-interface {v0, p1, v1, p0}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->notifyProvisionedIntValueChanged(III)V

    return-void
.end method

.method private notifyPublishError(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V
    .locals 2

    .line 1481
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz p0, :cond_2

    .line 1482
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 1483
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1485
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RE_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-ne p2, v0, :cond_1

    .line 1486
    iget-boolean p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    if-nez p2, :cond_0

    .line 1487
    sget-object p2, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPublishError(Lcom/sec/ims/util/SipError;)V

    const/4 p0, 0x1

    .line 1488
    iput-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    goto :goto_0

    :cond_0
    const-string p0, "PresenceModule"

    const-string p2, "notifyPublishError: maintain last IMS registration"

    .line 1490
    invoke-static {p0, p4, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 1491
    iput-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    goto :goto_0

    .line 1494
    :cond_1
    new-instance p1, Lcom/sec/ims/util/SipError;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result p2

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPublishError(Lcom/sec/ims/util/SipError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onEABPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .locals 1

    .line 1928
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getPhoneId()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onCapabilityAndAvailabilityPublished(II)V

    return-void
.end method

.method private onPublishDisableMode(I)V
    .locals 1

    .line 1475
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 1476
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private onPublishFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V
    .locals 10

    .line 1249
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 1250
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v2, 0x0

    .line 1251
    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    const-string v3, "PresenceModule"

    if-nez v0, :cond_0

    const-string p0, "onPublishFailed: mnoStrategy is null."

    .line 1253
    invoke-static {v3, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1257
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getReason()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    move-result-object v4

    const/4 v5, 0x1

    .line 1258
    invoke-interface {v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    move-result-object v0

    .line 1260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPublishFailed - statusCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const v6, 0x12090004

    .line 1261
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1261
    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1264
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->initPublishFailedInfos(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v1

    .line 1266
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->CONDITIONAL_REQUEST_FAILED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    if-eq v4, v6, :cond_1

    const-string v6, "onPublishFailed - remain etag for Kor"

    .line 1267
    invoke-static {v3, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1269
    :cond_1
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v6, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    .line 1272
    :goto_0
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_2

    .line 1273
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v6, v2}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 1275
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v2, v2, v6

    const-wide/16 v6, 0x3e8

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v2, "onPublishFailed: need to perform IMS re-registration"

    .line 1338
    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    const-string v2, "onPublishFailed: PRESENCE_REQUIRE_RETRY_PUBLISH_AFTER"

    .line 1332
    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1333
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getRetryAfter()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRetryAfter(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V

    goto/16 :goto_1

    :pswitch_2
    const-string v2, "onPublishFailed: PRESENCE_REQUIRE_RETRY_PUBLISH"

    .line 1327
    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1328
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v2

    mul-long/2addr v2, v6

    invoke-direct {p0, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_1

    :pswitch_3
    const-string v2, "onPublishFailed: vzw default case... "

    .line 1320
    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1321
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishDisableMode(I)V

    goto :goto_1

    .line 1316
    :pswitch_4
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->isRefresh()Z

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishNoResponse(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;ZI)V

    goto :goto_1

    .line 1312
    :pswitch_5
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getRetryAfter()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRetryExpBackoff(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V

    goto :goto_1

    .line 1307
    :pswitch_6
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getBadEventExpiry()J

    move-result-wide v2

    mul-long/2addr v2, v6

    invoke-direct {p0, v2, v3, v5, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startBadEventTimer(JZI)V

    .line 1308
    invoke-virtual {p0, v5, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    goto :goto_1

    .line 1295
    :pswitch_7
    invoke-direct {p0, v1, v4, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRequireFull(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;I)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 1300
    :cond_3
    :pswitch_8
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getRetryTime()I

    move-result v2

    if-lez v2, :cond_4

    .line 1301
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getRetryTime()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/ims/presence/PresenceInfo;->setMinExpires(J)V

    .line 1303
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1291
    :pswitch_9
    invoke-direct {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRequestTimeout(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V

    goto :goto_1

    :pswitch_a
    const-string v2, "onPublishFailed: PRESENCE_NOT_FOUND"

    .line 1286
    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1287
    invoke-virtual {p0, v5, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    goto :goto_1

    :pswitch_b
    const-string v2, "onPublishFailed: PRESENCE_AT_NOT_REGISTERED"

    .line 1282
    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 1277
    :pswitch_c
    invoke-direct {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishNotProvisioned(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V

    .line 1345
    :goto_1
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->notifyPublishError(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V

    .line 1347
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->sendRCSPPubInfoToHQM(Landroid/content/Context;ILjava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPublishNoResponse(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;ZI)V
    .locals 3

    if-nez p2, :cond_1

    .line 1386
    iget p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    const/4 p2, 0x0

    const-string v0, "ro.ril.svlte1x"

    .line 1388
    invoke-static {v0, p2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 1389
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

    .line 1391
    iget p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    invoke-static {p3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPublishExpBackOffRetryTime(II)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 1393
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_0

    :cond_0
    const-string p0, "onPublishNoResponse: retry time end for NoResponse... "

    .line 1395
    invoke-static {v0, p3, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onPublishNotProvisioned(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V
    .locals 3

    .line 1462
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    .line 1463
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

    .line 1466
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 1468
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->triggerOmadmTreeSync(Landroid/content/Context;I)V

    .line 1469
    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    const/4 p0, 0x0

    .line 1470
    iput p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    :cond_0
    return-void
.end method

.method private onPublishRequestTimeout(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V
    .locals 8

    .line 1364
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    .line 1365
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

    .line 1368
    iget p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPublishExpBackOffRetryTime(II)J

    move-result-wide v2

    .line 1370
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 1371
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    const-wide/16 v6, 0x3e8

    if-eqz p1, :cond_1

    mul-long/2addr v2, v6

    .line 1373
    invoke-direct {p0, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_0

    :cond_1
    const-string p1, "onPublishRequestTimeout: starting error retry ... "

    .line 1375
    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1376
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_2

    .line 1377
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v0

    mul-long/2addr v0, v6

    invoke-direct {p0, v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    .line 1378
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->setPublishErrRetry(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onPublishRequireFull(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;I)Z
    .locals 3

    .line 1401
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1402
    :cond_0
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

    .line 1404
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitImmediateRetry:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 1405
    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onPublishRequireFull: retry after publish timer expires"

    .line 1406
    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1407
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

    .line 1410
    :cond_1
    iput-boolean v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitImmediateRetry:Z

    .line 1411
    iput-object p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    :cond_2
    return v2
.end method

.method private onPublishRetryAfter(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const-wide/16 v1, 0x3e8

    if-lez v0, :cond_0

    .line 1419
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

    .line 1420
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_0

    .line 1422
    :cond_0
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_1

    .line 1423
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

    goto :goto_0

    .line 1425
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide p1

    mul-long/2addr p1, v1

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    :goto_0
    return-void
.end method

.method private onPublishRetryExpBackoff(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V
    .locals 6

    .line 1431
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const-string v3, "PresenceModule"

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_0

    cmp-long v0, p2, v4

    if-lez v0, :cond_0

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPublishRetryExpBackoff: Use retryAfter, Retry publish after "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p4, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    mul-long/2addr p2, v1

    .line 1434
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    const/4 p0, 0x0

    .line 1435
    iput p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    return-void

    .line 1440
    :cond_0
    iget p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 1441
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPublishRetryExpBackoff: EXP_BACKOFF_RETRY count = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p4, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1444
    iget p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    invoke-static {p4, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPublishExpBackOffRetryTime(II)J

    move-result-wide p1

    .line 1446
    invoke-static {p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p3

    invoke-interface {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p1, 0x3

    .line 1447
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    cmp-long p3, p1, v4

    if-eqz p3, :cond_2

    mul-long/2addr p1, v1

    .line 1449
    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_0

    :cond_2
    const-string p1, "onPublishRetryExpBackoff: starting error retry ... "

    .line 1451
    invoke-static {v3, p4, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1453
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_3

    .line 1454
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide p1

    mul-long/2addr p1, v1

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    .line 1456
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->setPublishErrRetry(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onSubscribeFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .locals 9

    .line 1726
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v0

    .line 1727
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "PresenceModule"

    if-nez v1, :cond_0

    const-string p0, "onSubscribeFailed: mnoStrategy is null."

    .line 1729
    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1733
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 1734
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getReason()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    move-result-object v4

    const/4 v5, 0x0

    .line 1733
    invoke-interface {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    move-result-object v1

    iput-object v1, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 1736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubscribeFailed - statusCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1738
    new-instance v1, Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/sec/ims/presence/PresenceInfo;-><init>(Ljava/lang/String;I)V

    .line 1739
    new-instance v3, Lcom/sec/ims/presence/ServiceTuple;

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v6, v4

    const/4 v4, 0x0

    invoke-direct {v3, v6, v7, v4, v4}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 1740
    invoke-virtual {v1, v5}, Lcom/sec/ims/presence/PresenceInfo;->setFetchState(Z)V

    .line 1742
    sget-object v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v6, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    const/4 v6, 0x1

    if-eq v3, v6, :cond_8

    const/4 v7, 0x2

    if-eq v3, v7, :cond_7

    const/4 v7, 0x3

    if-eq v3, v7, :cond_5

    const/4 v7, 0x4

    if-eq v3, v7, :cond_4

    const/4 v7, 0x6

    const/16 v8, 0x8

    if-eq v3, v7, :cond_2

    if-eq v3, v8, :cond_4

    const/16 v5, 0xf

    if-eq v3, v5, :cond_9

    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    const/16 v5, 0xb

    if-eq v3, v5, :cond_5

    goto/16 :goto_1

    .line 1785
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1789
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v2, v3, :cond_3

    .line 1790
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v2, :cond_3

    .line 1791
    invoke-interface {v2, v5, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onPollingRequested(ZI)V

    :cond_3
    const/4 v2, 0x5

    .line 1794
    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1795
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getRetryTime()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setExpiry(I)V

    .line 1796
    invoke-virtual {p0, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1746
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->retrySubscription()V

    .line 1747
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->handleExpBackOffRetry(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto/16 :goto_1

    .line 1753
    :cond_5
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->clearService()V

    .line 1754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSubscribeFailed - PRESENCE_NO_SUBSCRIBE: code : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " errorReason : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1754
    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1756
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v2

    const/16 v3, 0x194

    if-ne v2, v3, :cond_6

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isbot"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1758
    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget-wide v7, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-direct {v2, v7, v8, v4, v4}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto :goto_0

    .line 1760
    :cond_6
    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v7, v3

    invoke-direct {v2, v7, v8, v4, v4}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 1763
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    goto :goto_1

    .line 1800
    :cond_7
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addPendingSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto :goto_1

    .line 1767
    :cond_8
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_9

    .line 1768
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 1769
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->triggerOmadmTreeSync(Landroid/content/Context;I)V

    .line 1770
    invoke-virtual {p0, v6, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    const-string/jumbo v3, "trigger OMA sync for 403 not provisioned"

    .line 1771
    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1772
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    goto :goto_1

    .line 1777
    :cond_9
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_a

    .line 1778
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->triggerOmadmTreeSync(Landroid/content/Context;I)V

    :cond_a
    const-string v3, "onSubscribeFailed: for 403 forbidden response"

    .line 1780
    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1781
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    .line 1807
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v2, :cond_b

    .line 1808
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    .line 1809
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1811
    new-instance v3, Lcom/sec/ims/util/SipError;

    .line 1812
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v4

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    .line 1811
    invoke-interface {v2, v6, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSubscribeError(ILcom/sec/ims/util/SipError;)V

    .line 1816
    :cond_b
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceUpdate:Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

    invoke-virtual {v2, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->onNewPresenceInformation(Lcom/sec/ims/presence/PresenceInfo;ILcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    .line 1818
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->sendRCSPSubInfoToHQM(Landroid/content/Context;II)V

    const p1, 0x12090005

    .line 1819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method private processConfigured(I)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private resetPublishErrorHandling(I)V
    .locals 0

    .line 2052
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 p1, 0x0

    .line 2053
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    .line 2054
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitImmediateRetry:Z

    const/4 p1, 0x0

    .line 2055
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    return-void
.end method

.method private setBadEventProgress(ZI)V
    .locals 2

    .line 2003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBadEventProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2004
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventProgress:Z

    return-void
.end method

.method private setServiceVersion(I)V
    .locals 4

    .line 1892
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1893
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v1

    .line 1894
    iget-object v2, v1, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    const-string/jumbo v3, "xbotmessage"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->updateServiceVersion(ILjava/util/HashMap;)V

    .line 1896
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
    .locals 5

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBadEventTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1503
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getBadEventProgress(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "startBadEventTimer: BadEvent in progress"

    .line 1504
    invoke-static {v1, p4, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 1509
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 1513
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.presence.bad_event_timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "sim_slot_id"

    .line 1514
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1515
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1517
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

    .line 1520
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    const/4 p1, 0x1

    .line 1522
    invoke-direct {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setBadEventProgress(ZI)V

    if-eqz p3, :cond_2

    .line 1524
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveBadEventTimestamp(JI)V

    :cond_2
    return-void
.end method

.method private startPublishTimer(I)V
    .locals 7

    .line 625
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "startPublishTimer: PublishTimer is already running. Stopping it."

    .line 626
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 627
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v2

    .line 632
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v0}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getExtendedPublishTimerCond(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimerExtended()J

    move-result-wide v2

    .line 636
    :cond_1
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

    .line 639
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.presence.publish_timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "sim_slot_id"

    .line 640
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
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

    .line 645
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
    .locals 7

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRetryPublishTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1559
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 1561
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1562
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1566
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

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->ongoingPublishErrRetry:Z

    .line 1568
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.internal.ims.servicemodules.presence.retry_publish"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "sim_slot_id"

    .line 1569
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1571
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/high16 v6, 0x2000000

    invoke-static {v5, v4, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    .line 1574
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    invoke-static {v2, v3, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 1577
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1578
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {p0, v0, v1, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    :cond_2
    return-void
.end method

.method private startSubscribeRetryTimer(JLjava/lang/String;I)V
    .locals 3

    .line 1595
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

    .line 1596
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1598
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1599
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.presence.retry_subscribe"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "urn:subscriptionid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1606
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "KEY_SUBSCRIPTION_ID"

    .line 1607
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "KEY_PHONE_ID"

    .line 1608
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1610
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x2000000

    invoke-static {p4, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 1613
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 1614
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {p0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private stopBadEventTimer(I)V
    .locals 2

    .line 1530
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1532
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-nez v0, :cond_0

    const-string/jumbo p0, "stopBadEventTimer: BadEventExitTimer is not running."

    .line 1533
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "stopBadEventTimer"

    .line 1537
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1539
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1540
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    .line 1542
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setBadEventProgress(ZI)V

    .line 1543
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveBadEventTimestamp(JI)V

    return-void
.end method

.method private stopPublishTimer(I)V
    .locals 3

    .line 649
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-nez v0, :cond_0

    const-string/jumbo p0, "stopPublishTimer: PublishTimer is not running."

    .line 651
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v2, "stopPublishTimer:"

    .line 654
    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 656
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 657
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private stopRetryPublishTimer(I)V
    .locals 2

    .line 1584
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-nez v0, :cond_0

    const-string/jumbo p0, "stopRetryPublishTimer: mRetryPublishIntent is null."

    .line 1585
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "stopRetryPublishTimer"

    .line 1588
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1591
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private stopSubscribeRetryTimer(I)V
    .locals 4

    .line 1618
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1619
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1621
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1622
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1623
    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1624
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1625
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1626
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v1, 0x4

    .line 1627
    invoke-virtual {v2, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1628
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const-string p0, "PresenceModule"

    const-string/jumbo v0, "stopSubscribeRetryTimer"

    .line 1631
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private subscribe(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)V
    .locals 16
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

    .line 736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscribe: uri list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "PresenceModule"

    invoke-static {v11, v9, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscribe: request type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 743
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v2, v3, :cond_0

    const/16 v3, 0x8

    .line 744
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 745
    invoke-direct {v0, v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopSubscribeRetryTimer(I)V

    .line 748
    :cond_0
    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 752
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 755
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 756
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 757
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 758
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->hasSubscription(Lcom/sec/ims/util/ImsUri;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "subscribe: subscription has been already sent"

    .line 759
    invoke-static {v11, v9, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subscribe: subscribed uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v9, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 761
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 764
    :cond_2
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    const-string v5, "list_sub_uri_translation"

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 765
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->useSipUri()Z

    move-result v4

    invoke-virtual {v0, v3, v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v5

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    move/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->convertUriType(Lcom/sec/ims/util/ImsUri;ZLcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/util/UriGenerator;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 764
    :cond_3
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 769
    :cond_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 770
    invoke-interface {v1, v14}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 773
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v0, "subscribe: no URI to subscribe."

    .line 774
    invoke-static {v11, v9, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 778
    :cond_6
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateSubscriptionId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;-><init>(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->addUriAll(Ljava/util/Set;)V

    .line 780
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPollListSubExp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setExpiry(I)V

    .line 781
    invoke-virtual {v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRequestType(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;)V

    const/4 v2, 0x0

    .line 782
    invoke-virtual {v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setSingleFetch(Z)V

    .line 783
    invoke-virtual {v3, v9}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setPhoneId(I)V

    .line 785
    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_7

    .line 786
    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->addDropUriAll(Ljava/util/Set;)V

    .line 788
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->clear()V

    .line 790
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe internalRequestId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v10, :cond_8

    .line 795
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->replaceSubscribeResponseCbSubsId(ILjava/lang/String;)V

    .line 798
    :cond_8
    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_9

    .line 799
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 800
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 801
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

    .line 800
    invoke-interface/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribeList(Ljava/util/List;ZLandroid/os/Message;Ljava/lang/String;ZII)V

    :cond_9
    return-void
.end method

.method private updateFeatures(I)V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const-string v1, "presence"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 307
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getDefaultDisc()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v1, v1

    aput-wide v1, v0, p1

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->isSocialPresenceSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v0, p0, p1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    aput-wide v0, p0, p1

    :cond_0
    return-void
.end method


# virtual methods
.method public addPublishResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .locals 0

    .line 806
    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->addPublishResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V

    return-void
.end method

.method checkModuleReady(I)Z
    .locals 3

    .line 1904
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PresenceModule"

    if-nez v0, :cond_0

    const-string p0, "checkModuleReady: module not running"

    .line 1905
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1909
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isReadyToRequest(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "checkModuleReady: not ready to request"

    .line 1910
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1914
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "checkModuleReady: mnoStrategy is null."

    .line 1915
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1919
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    if-nez p0, :cond_3

    const-string p0, "checkModuleReady: mUriGenerator is null"

    .line 1920
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method clearWakeLock()Z
    .locals 3

    .line 1653
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1657
    :cond_0
    monitor-enter v0

    .line 1658
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1659
    monitor-exit v0

    return v1

    .line 1661
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/16 v1, 0xd

    .line 1662
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p0, 0x1

    .line 1663
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1664
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deRegisterService(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "PresenceModule"

    .line 1953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deRegisterService: serviceIdList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1957
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "#"

    .line 1958
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1959
    aget-object v4, v2, v0

    .line 1960
    aget-object v2, v2, v3

    const/4 v5, 0x0

    .line 1961
    invoke-static {v4, v2, v5}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1964
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    monitor-enter v4

    .line 1965
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v1, v2}, Lcom/sec/ims/presence/PresenceInfo;->removeService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 1966
    monitor-exit v4

    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const-string v2, "PresenceModule"

    const-string v3, "deRegisterService: not a valid service tuple"

    .line 1969
    invoke-static {v2, p2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 1974
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1975
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public dump()V
    .locals 2

    .line 2068
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

    .line 2069
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    const-string v0, "Publish History: "

    .line 2070
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 2072
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    if-eqz v0, :cond_0

    .line 2074
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2077
    :cond_1
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public getBadEventProgress(I)Z
    .locals 0

    .line 2008
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventProgress:Z

    return p0
.end method

.method public getListSubExpiry(I)I
    .locals 2

    .line 1028
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPollListSubExp(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1029
    :goto_0
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
    .locals 2

    .line 1021
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getMaxUri()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1022
    :goto_0
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
    .locals 2

    const-string v0, "PresenceModule"

    const-string v1, "getOwnPresenceInfo"

    .line 662
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 663
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    return-object p0
.end method

.method public getParalysed(I)Z
    .locals 0

    .line 994
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mParalysed:Z

    return p0
.end method

.method public getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;
    .locals 0

    .line 979
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    return-object p0
.end method

.method public getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;
    .locals 0

    .line 668
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPresenceInfoByContactId(Ljava/lang/String;I)Lcom/sec/ims/presence/PresenceInfo;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 674
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getNumberlistByContactId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 673
    invoke-virtual {v0, p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->getPresenceInfoByContactId(Ljava/lang/String;Ljava/util/List;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    return-object p0
.end method

.method getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .locals 0

    .line 975
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    return-object p0
.end method

.method public getPublishExpiry(I)I
    .locals 4

    .line 1006
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/presence/PresenceInfo;->getMinExpires()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPublishTimerValue(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1008
    :goto_0
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
    .locals 2

    .line 1014
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottlePublish()J

    move-result-wide v0

    long-to-int p0, v0

    mul-int/lit16 p0, p0, 0x3e8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1015
    :goto_0
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
    .locals 2

    .line 999
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPublishTimerValue(I)J

    move-result-wide v0

    long-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1000
    :goto_0
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
    .locals 1

    .line 2059
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
    .locals 0

    const-string p0, "presence"

    .line 214
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFeature(I)J
    .locals 0

    .line 2034
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;
    .locals 0

    .line 983
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1882
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 1883
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 1884
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

    .line 1886
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceUpdate:Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

    invoke-static {p1, p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceEvent;->handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1887
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: unknown event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public init()V
    .locals 5

    .line 227
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    const-string v0, "PresenceModule"

    const-string v1, "init"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getPresenceHandler()Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 231
    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForPresenceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/16 v2, 0xc

    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForWatcherInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 233
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForPublishFailure(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 234
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/16 v2, 0x10

    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForPresenceNotifyInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/16 v2, 0x11

    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForPresenceNotifyStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 237
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    const/4 v1, 0x0

    .line 239
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadPublishTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    .line 241
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadBadEventTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastBadEventTimestamp:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 246
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    return-void
.end method

.method public isListSubGzipEnabled(I)I
    .locals 2

    .line 1048
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->isGzipEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 1049
    :cond_0
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
    .locals 1

    .line 2012
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 2013
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    return p0
.end method

.method public isOwnPresenceInfoHasTuple(IJ)Z
    .locals 0

    .line 1054
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    .line 1055
    invoke-static {p2, p3}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object p1

    .line 1056
    iget-object p1, p1, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/ims/presence/PresenceInfo;->getServiceTuple(Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReadyToRequest(I)Z
    .locals 2

    .line 440
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "PresenceModule"

    const-string v0, "isReadyToRequest: mnoStrategy null"

    .line 442
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 446
    :cond_0
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
    .locals 3
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

    .line 1980
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/ServiceTuple;

    .line 1982
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    monitor-enter v1

    .line 1983
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1984
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method onBadEventTimeout(I)V
    .locals 2

    const-string v0, "PresenceModule"

    const-string v1, "onBadEventTimeout: "

    .line 1547
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1549
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1550
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    const/4 v0, 0x0

    .line 1551
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    const/4 v0, 0x1

    .line 1552
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onConfigured(I)V
    .locals 2

    const-string v0, "PresenceModule"

    const-string v1, "onConfigured:"

    .line 281
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processConfigured(I)V

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 1

    .line 393
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    const-string p2, "PresenceModule"

    const-string v0, "onDeregistered:"

    .line 394
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processDeregistered(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    const-string v0, "PresenceModule"

    const-string v1, "onDeregistering:"

    .line 368
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processDeregistering(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method onNewNotifyInfo(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;I)V
    .locals 8

    const-string v0, "PresenceModule"

    const-string v1, "onNewNotifyInfo:"

    .line 1090
    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1092
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 1093
    invoke-static {v1, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1097
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "onNewNotifyInfo: no subscription"

    .line 1099
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1103
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getPidfXmls()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v2, p2, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeNotifyCapabilitiesUpdate(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;)V

    .line 1105
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1106
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getUriTerminatedReason()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getUriTerminatedReason()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1107
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getUriTerminatedReason()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v2, p2, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeResourceTerminated(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;)V

    .line 1110
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "terminated"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1111
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionStateReason()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move v4, p2

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeTerminated(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;J)V

    .line 1114
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1115
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method onNewNotifyStatus(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;I)V
    .locals 8

    const-string v0, "PresenceModule"

    const-string v1, "onNewNotifyStatus:"

    .line 1120
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 1123
    invoke-static {v1, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1127
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSubscribeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "onNewNotifyStatus: no subscription"

    .line 1129
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1133
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSubscribeId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSubscribeTerminatedReason()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move v4, p2

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeTerminated(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;J)V

    .line 1135
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1136
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSubscribeId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method onPeriodicPublish(I)V
    .locals 2

    const-string v0, "PresenceModule"

    const-string v1, "onPeriodicPublish:"

    .line 1635
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->publish(Lcom/sec/ims/presence/PresenceInfo;I)V

    .line 1637
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startPublishTimer(I)V

    return-void
.end method

.method onPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;I)V
    .locals 10

    const-string v0, "PresenceModule"

    if-nez p1, :cond_0

    const-string p0, "onPublishComplete: response is null"

    .line 1146
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1149
    :cond_0
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

    .line 1150
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

    const v1, 0x12090003

    .line 1151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1153
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 1155
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->clearWakeLock()Z

    .line 1157
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    .line 1159
    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 1160
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    const/4 v2, 0x0

    .line 1161
    invoke-virtual {p0, v2, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 1162
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetPublishErrorHandling(I)V

    .line 1166
    instance-of v4, p1, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    if-eqz v4, :cond_1

    .line 1167
    move-object v4, p1

    check-cast v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    .line 1168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEtag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getEtag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " getExpiresTimer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getExpiresTimer()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1168
    invoke-static {v0, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1172
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getEtag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getExpiresTimer()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishETag(Ljava/lang/String;JI)V

    .line 1173
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->isRefresh()Z

    move-result v4

    .line 1174
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 1175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPublishComplete(), isRefresh : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move v4, v2

    .line 1178
    :goto_0
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    .line 1179
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 1180
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    .line 1181
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    .line 1186
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_2

    .line 1187
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPublishRegistrants:Lcom/sec/internal/helper/RegistrantList;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1189
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 1191
    :cond_2
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 1192
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    .line 1201
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v2, :cond_4

    .line 1202
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v4

    invoke-interface {v2, v4, v3, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onMediaReady(ZZI)V

    .line 1204
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getPendingSubscription()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1205
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getPendingSubscription()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v4, "onPublishComplete, pending subscription"

    .line 1206
    invoke-static {v0, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1207
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x8

    .line 1208
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1210
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->clearPendingSubscription()V

    .line 1213
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRcsProfile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_9

    .line 1214
    :cond_7
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

    .line 1215
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startPublishTimer(I)V

    goto :goto_3

    .line 1218
    :cond_8
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    if-eqz v0, :cond_9

    .line 1219
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V

    .line 1222
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v0, :cond_a

    .line 1223
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onEABPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    .line 1225
    :cond_a
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v0

    const/16 v1, 0x2c4

    if-ne v0, v1, :cond_b

    .line 1226
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {p2, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->notifyPublishCommandError(ILandroid/content/Context;I)V

    goto :goto_4

    .line 1228
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->notifyPublishNetworkResponse(ILandroid/content/Context;ILjava/lang/String;)V

    .line 1231
    :goto_4
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    if-eqz v0, :cond_c

    .line 1232
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    .line 1233
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->isRefresh()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1234
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v6

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p2

    invoke-interface/range {v4 .. v9}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->onPublishUpdated(IILjava/lang/String;ILjava/lang/String;)V

    .line 1238
    :cond_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1239
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "RCPC"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 1242
    :cond_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "RCPF"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1244
    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "overwrite_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1245
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const-string p1, "DRCS"

    invoke-static {p2, p0, p1, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 318
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    const-string v0, "PresenceModule"

    const-string v1, "onRegistered:"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processRegistered(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 1

    const-string p2, "PresenceModule"

    const-string v0, "onServiceSwitched:"

    .line 221
    invoke-static {p2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->updateFeatures(I)V

    return-void
.end method

.method public onSimChanged(I)V
    .locals 2

    const-string v0, "PresenceModule"

    const-string v1, "onSimChanged:"

    .line 431
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->clearPresenceInfo(I)V

    const/4 v0, 0x0

    .line 434
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setBadEventProgress(ZI)V

    .line 435
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveBadEventTimestamp(JI)V

    return-void
.end method

.method onSubscribeComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .locals 6

    .line 1672
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v0

    .line 1673
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

    .line 1675
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->clearWakeLock()Z

    .line 1677
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "onSubscribeComplete: mnoStrategy is null."

    .line 1679
    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1683
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v4

    .line 1684
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v5

    .line 1683
    invoke-static {v1, v3, v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeNetworkResponse(Ljava/lang/String;Landroid/content/Context;IILjava/lang/String;)V

    .line 1686
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x6

    .line 1687
    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1688
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    goto :goto_0

    .line 1690
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getExpiry()I

    move-result v1

    if-lez v1, :cond_3

    .line 1692
    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1693
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v4, v5, :cond_2

    .line 1694
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v4, :cond_2

    const-string v4, "onSubscribeComplete: recover polling"

    .line 1695
    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1696
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    invoke-interface {v4, v3, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onPollingRequested(ZI)V

    .line 1699
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_4

    .line 1700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSubscribeComplete: subscription will be terminated after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x9

    .line 1701
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    add-int/2addr v1, v3

    int-to-long v1, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    .line 1707
    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1712
    :cond_4
    :goto_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 1713
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1714
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v1

    const/16 v2, 0x193

    if-eq v1, v2, :cond_6

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result p2

    const/16 v1, 0x194

    if-ne p2, v1, :cond_5

    goto :goto_1

    .line 1717
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "RCSF"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1715
    :cond_6
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "RCSC"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1719
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "overwrite_mode"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1720
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const-string p2, "DRCS"

    invoke-static {v0, p0, p2, p1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1722
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->cleanExpiredSubscription()V

    return-void
.end method

.method onSubscribeListRequested(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)V
    .locals 7

    .line 1849
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUrisToSubscribe:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1850
    monitor-enter v0

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 1851
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->subscribe(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)V

    .line 1852
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method onSubscribeRequested(Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;)V
    .locals 2

    .line 1668
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
    .locals 14

    .line 1856
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1857
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1858
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1860
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v5

    .line 1861
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isGzipEnabled()Z

    move-result v6

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getExpiry()I

    move-result v7

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result p1

    move-object v0, v3

    move v2, v4

    move-object v3, p0

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, p1

    .line 1860
    invoke-interface/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribeList(Ljava/util/List;ZLandroid/os/Message;Ljava/lang/String;ZII)V

    goto :goto_0

    .line 1863
    :cond_0
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/sec/ims/util/ImsUri;

    const/4 v10, 0x1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1864
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v13

    .line 1863
    invoke-interface/range {v8 .. v13}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribe(Lcom/sec/ims/util/ImsUri;ZLandroid/os/Message;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method onSubscriptionTerminated(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 8

    const-string v0, "PresenceModule"

    if-nez p1, :cond_0

    const-string p0, "onSubscriptionTerminated: subscription is null"

    .line 2018
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2021
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2022
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getDropUris()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2023
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2024
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

    .line 2025
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v1, :cond_1

    .line 2026
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v3, p0

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v7

    invoke-interface/range {v1 .. v7}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onCapabilityUpdate(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public publish(Lcom/sec/ims/presence/PresenceInfo;I)V
    .locals 1

    const/4 v0, 0x0

    .line 810
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->publish(Lcom/sec/ims/presence/PresenceInfo;ILjava/lang/String;)V

    return-void
.end method

.method publish(Lcom/sec/ims/presence/PresenceInfo;ILjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 814
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v5

    const-string v6, "PresenceModule"

    if-eqz v5, :cond_f

    if-eqz v4, :cond_f

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v5, :cond_0

    goto/16 :goto_7

    .line 824
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "publish: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v2, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 825
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 826
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v8, 0xf

    if-nez v5, :cond_1

    .line 827
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 829
    :cond_1
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 830
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    .line 832
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-wide v9, v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 833
    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottlePublish()J

    move-result-wide v11

    .line 832
    invoke-interface {v4, v9, v10, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->calThrottledPublishRetryDelayTime(JJ)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    const/4 v13, 0x0

    if-lez v5, :cond_3

    .line 835
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 836
    invoke-virtual {v0, v8, v2, v13, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 838
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    .line 843
    :cond_3
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 844
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v9, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v9, v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mFirstPublish:Z

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v9, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getBadEventExpiry()J

    move-result-wide v9

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    .line 845
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v9, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-wide v9, v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastBadEventTimestamp:J

    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 846
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

    if-lez v5, :cond_4

    const-string v5, "publish: restart BadEventTimer"

    .line 848
    invoke-static {v6, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 849
    invoke-direct {v0, v9, v10, v13, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startBadEventTimer(JZI)V

    .line 853
    :cond_4
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getTdelayPublish()J

    move-result-wide v9

    invoke-interface {v4, v9, v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isTdelay(J)J

    move-result-wide v4

    cmp-long v9, v4, v11

    if-eqz v9, :cond_6

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "publish: retry after "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "ms"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 856
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 857
    invoke-virtual {v0, v8, v2, v13, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 859
    :cond_5
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void

    .line 864
    :cond_6
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isGoogDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 865
    invoke-static {v4, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSrRcsPresenceEnabled(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 866
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRequestPublishToAosp:Z

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "publish: already published, return"

    .line 873
    invoke-static {v6, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    :goto_2
    const-string v1, "publish: call onRequestPublishCapabilities, return"

    .line 867
    invoke-static {v6, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 868
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "Publish - call onRequestPublishCapabilities"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 869
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->removePublishedServiceList(I)V

    .line 870
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v1

    invoke-interface {v1, v2, v7}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->onRequestPublishCapabilities(II)V

    .line 871
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRequestPublishToAosp:Z

    :goto_3
    return-void

    .line 878
    :cond_9
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->checkIfValidEtag(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 879
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

    .line 880
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPublishETag(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/ims/presence/PresenceInfo;->setEtag(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const-string v4, "not valid etag"

    .line 882
    invoke-static {v6, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x0

    .line 883
    invoke-virtual {v1, v4}, Lcom/sec/ims/presence/PresenceInfo;->setEtag(Ljava/lang/String;)V

    .line 886
    :goto_4
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v4}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getExtendedPublishTimerCond(ILjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 887
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v4, v7}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    .line 888
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

    .line 889
    invoke-virtual {v1, v7}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    goto :goto_5

    .line 891
    :cond_b
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v4, v13}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    .line 892
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

    .line 893
    invoke-virtual {v1, v13}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    .line 896
    :goto_5
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "publish: set pidfXml"

    .line 897
    invoke-static {v6, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "publish: pidfXml from AOSP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v2, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 899
    invoke-virtual {v1, v3}, Lcom/sec/ims/presence/PresenceInfo;->setPidf(Ljava/lang/String;)V

    .line 902
    :cond_c
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 903
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    .line 904
    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadisplayText(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v3, "displaytext exist"

    .line 905
    invoke-static {v6, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 906
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v3, v3

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadisplayText(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/ims/presence/ServiceTuple;->setDisplayText(JLjava/lang/String;)V

    goto :goto_6

    :cond_d
    const-string v3, "not valid displaytext"

    .line 908
    invoke-static {v6, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 911
    :goto_6
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v3, v1}, Lcom/sec/ims/presence/PresenceInfo;->update(Lcom/sec/ims/presence/PresenceInfo;)V

    .line 913
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->acquireWakeLock()V

    .line 915
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setServiceVersion(I)V

    .line 916
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4, v2}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->publish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;I)V

    .line 918
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mFirstPublish:Z

    if-eqz v1, :cond_e

    .line 919
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean v13, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mFirstPublish:Z

    .line 921
    :cond_e
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Publish - sent"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    const v0, 0x12090001

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",PUB-SENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void

    :cond_f
    :goto_7
    const-string v1, "publish: not ready to publish"

    .line 816
    invoke-static {v6, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 817
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_10

    .line 818
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    .line 820
    :cond_10
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/16 v1, 0x9

    invoke-static {v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->notifyPublishCommandError(ILandroid/content/Context;I)V

    return-void
.end method

.method public readConfig(I)V
    .locals 3

    .line 1870
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PresenceModule"

    if-nez v0, :cond_0

    const-string p0, "readConfig: not ready"

    .line 1871
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "readConfig"

    .line 1874
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1875
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->load()V

    .line 1876
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

    .line 1877
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->notifyProvisionedValue(I)V

    return-void
.end method

.method public registerCapabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    return-void
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "PresenceModule"

    .line 1933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerService: ["

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

    .line 1934
    invoke-static {p1, p2, v0}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "PresenceModule"

    const-string v0, "registerService: valid service tuple"

    .line 1936
    invoke-static {p2, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1937
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean p2, p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    if-nez p2, :cond_0

    .line 1938
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1940
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    monitor-enter p2

    .line 1941
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v0, p1}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 1942
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1943
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1944
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1942
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const-string p0, "PresenceModule"

    const-string p1, "advertise: not a valid service tuple, do nothing.."

    .line 1947
    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public removePresenceCache(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I)V"
        }
    .end annotation

    .line 2048
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->removePresenceCache(Ljava/util/List;I)V

    return-void
.end method

.method public requestCapabilityExchange(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)I
    .locals 5
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

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCapabilityExchange: list requestType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 553
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isReadyToRequest(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PresenceModule"

    const-string p1, "requestCapabilityExchange: PUBLISH is not completed. bail."

    .line 554
    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 557
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUrisToSubscribe:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 563
    monitor-enter v0

    .line 564
    :try_start_0
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

    if-ge v2, v3, :cond_3

    .line 565
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getMaxUri()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 566
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    if-ge v1, v2, :cond_2

    .line 567
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 568
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 572
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 573
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    .line 574
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 576
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {p1, v0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->loadPresenceStorage(Ljava/util/Set;I)V

    .line 577
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->acquireWakeLock()V

    const/4 p1, 0x7

    .line 579
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v2

    :catchall_0
    move-exception p0

    .line 577
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZJILjava/lang/String;I)Z
    .locals 6

    .line 587
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "requestCapabilityExchange: uri "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "PresenceModule"

    invoke-static {p6, p7, p5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 588
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "requestCapabilityExchange: requestType "

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p8, ", isAlwaysForce: "

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p6, p7, p5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 590
    invoke-virtual {p0, p7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isReadyToRequest(I)Z

    move-result p5

    if-nez p5, :cond_0

    const-string p0, "requestCapabilityExchange: PUBLISH is not completed. bail."

    .line 591
    invoke-static {p6, p7, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 595
    :cond_0
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p5, p7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p5, p5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p5

    .line 598
    iget-object p8, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p8, p7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRlsUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p8

    if-eqz p8, :cond_1

    iget-object p8, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 599
    invoke-virtual {p8, p7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRlsUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p8

    invoke-virtual {p8}, Lcom/sec/ims/util/ImsUri;->getScheme()Ljava/lang/String;

    move-result-object p8

    if-eqz p8, :cond_1

    if-nez p5, :cond_1

    const-string p0, "requestCapabilityExchange: adding uri to RCS list"

    .line 602
    invoke-static {p6, p7, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p5, 0x5

    .line 608
    new-instance p6, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;

    move-object v0, p6

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p7

    move v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;-><init>(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZII)V

    invoke-virtual {p0, p5, p6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    if-eqz p2, :cond_2

    const/4 p0, 0x0

    .line 614
    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;->onComplete(Lcom/sec/ims/options/Capabilities;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public reset(I)V
    .locals 3

    .line 2039
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 2040
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 2041
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    .line 2042
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopSubscribeRetryTimer(I)V

    .line 2043
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    return-void
.end method

.method public sendOptionsRequest(Lcom/sec/ims/util/ImsUri;ZLjava/util/Set;I)Z
    .locals 0
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

    const/4 p0, 0x0

    return p0
.end method

.method public setDisplayText(ILjava/lang/String;)V
    .locals 2

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadisplayText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveDisplayText(Ljava/lang/String;I)V

    const/4 p2, 0x1

    .line 1040
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "skip setDisplayText"

    .line 1042
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setOwnCapabilities(JI)V
    .locals 9

    .line 450
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 454
    :cond_0
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

    .line 455
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OwnCapabilities - set, features = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    const/high16 v0, 0x12090000

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",SET:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 458
    new-instance v0, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v0, p3}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    .line 460
    invoke-static {p3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 462
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->changeServiceDescription()V

    .line 465
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 467
    invoke-static {p1, p2}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTupleList(J)Ljava/util/List;

    move-result-object p1

    .line 469
    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p2, v3, :cond_2

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/sec/internal/ims/util/ImsUtil;->getComposerAuthValue(ILandroid/content/Context;)I

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "remove MmtelCallComposer tuple"

    .line 470
    invoke-static {v1, p3, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 471
    new-instance p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 474
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/presence/ServiceTuple;

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOwnCapabilities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 476
    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    iget-object v5, v3, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/ims/presence/PresenceInfo;->getServiceTuple(Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 480
    iget-object v4, v4, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    goto :goto_0

    .line 482
    :cond_3
    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    const/16 v5, 0xa

    const/4 v6, 0x5

    if-eqz v4, :cond_5

    .line 483
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-wide v7, v3, Lcom/sec/ims/presence/ServiceTuple;->feature:J

    invoke-virtual {v4, v7, v8, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadRandomTupleId(JI)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 485
    iput-object v4, v3, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    goto :goto_0

    .line 487
    :cond_4
    invoke-static {v6, v5}, Lcom/sec/internal/helper/StringGenerator;->generateString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    .line 488
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-wide v6, v3, Lcom/sec/ims/presence/ServiceTuple;->feature:J

    invoke-virtual {v5, v6, v7, v4, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveRandomTupleId(JLjava/lang/String;I)V

    goto :goto_0

    .line 491
    :cond_5
    invoke-static {v6, v5}, Lcom/sec/internal/helper/StringGenerator;->generateString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    goto :goto_0

    .line 496
    :cond_6
    invoke-virtual {v0, p3}, Lcom/sec/ims/presence/PresenceInfo;->setPhoneId(I)V

    .line 497
    invoke-virtual {v0, p1}, Lcom/sec/ims/presence/PresenceInfo;->addService(Ljava/util/List;)V

    .line 498
    iget-object p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getPublishGzipEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 499
    iput-object v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    .line 501
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->buildPresenceInfoForThirdParty(I)V

    .line 503
    iget-object p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez p1, :cond_7

    return-void

    .line 507
    :cond_7
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    .line 508
    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_9

    .line 509
    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    .line 510
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v3, v4, :cond_8

    .line 511
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 512
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string p1, "getPreferredImpu: Found MDN TEL URI"

    .line 513
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    .line 520
    :cond_9
    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/ims/presence/PresenceInfo;->setUri(Ljava/lang/String;)V

    .line 521
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

    .line 523
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getParalysed(I)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string/jumbo p0, "setOwnCapabilities: paralysed"

    .line 524
    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 528
    :cond_a
    iget-object p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_c

    .line 529
    iget-boolean p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->ongoingPublishErrRetry:Z

    if-nez p1, :cond_b

    const-string/jumbo p0, "setOwnCapabilities: retry timer is running"

    .line 530
    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 533
    :cond_b
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

    .line 534
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

    .line 538
    :cond_c
    iget-object p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_d

    .line 539
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 541
    :cond_d
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method

.method public setParalysed(ZI)V
    .locals 2

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParalysed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 989
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mParalysed:Z

    return-void
.end method

.method public setRegiInfoUpdater(IZ)V
    .locals 0

    .line 2063
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .locals 3

    .line 251
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    const-string v0, "PresenceModule"

    const-string/jumbo v1, "start:"

    .line 252
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 254
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 5

    .line 261
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    const-string v0, "PresenceModule"

    const-string/jumbo v1, "stop:"

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 264
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v1, v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 266
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    .line 267
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v2, v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 268
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 269
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopSubscribeRetryTimer(I)V

    .line 270
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetPublishErrorHandling(I)V

    .line 271
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 273
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public subscribe(Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;Z)V
    .locals 13

    .line 679
    iget v6, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->phoneId:I

    .line 680
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

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe: request type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v6, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 683
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 687
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    const/4 v2, 0x1

    invoke-static {v0, v2, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v0

    if-nez v0, :cond_1

    .line 689
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;-><init>(Ljava/lang/String;)V

    .line 690
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->addUri(Lcom/sec/ims/util/ImsUri;)V

    .line 691
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRequestType(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;)V

    .line 692
    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setPhoneId(I)V

    .line 693
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    :goto_0
    move-object v7, v0

    goto :goto_3

    .line 695
    :cond_1
    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v11, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v11, v2

    .line 697
    :goto_2
    invoke-static {v6}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v7

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 698
    invoke-virtual {v2, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottleSubscribe()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    mul-long v9, v2, v8

    iget-boolean v12, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->isAlwaysForce:Z

    move-object v8, v0

    .line 697
    invoke-interface/range {v7 .. v12}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isSubscribeThrottled(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;JZZ)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_SR_API:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-eq v2, v3, :cond_4

    const-string/jumbo p0, "subscribe: single fetch has been already sent"

    .line 701
    invoke-static {v1, v6, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 702
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

    .line 705
    :cond_4
    invoke-virtual {v0, v5}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 706
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateTimestamp()V

    .line 707
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRequestType(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;)V

    goto :goto_0

    .line 710
    :goto_3
    invoke-static {v6}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->calSubscribeDelayTime(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 711
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_SR_API:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-eq v0, v4, :cond_5

    .line 712
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "subscribe: delayed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v6, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x5

    .line 713
    invoke-virtual {v7, p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 714
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 718
    :cond_5
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v0, v2, :cond_6

    .line 719
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addLazySubscription(Lcom/sec/ims/util/ImsUri;)V

    .line 723
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe internalRequestId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->internalRequestId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v6, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 725
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->internalRequestId:I

    if-eqz v0, :cond_7

    .line 726
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->replaceSubscribeResponseCbSubsId(ILjava/lang/String;)V

    .line 729
    :cond_7
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->useSipUri()Z

    move-result v1

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    .line 730
    invoke-virtual {p0, p1, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v2

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    move v5, v6

    .line 729
    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->convertUriType(Lcom/sec/ims/util/ImsUri;ZLcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/util/UriGenerator;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 731
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
    .locals 7

    const-string v0, "PresenceModule"

    const-string/jumbo v1, "unpublish: "

    .line 927
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 928
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 929
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    .line 930
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 932
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 933
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    if-eqz v1, :cond_0

    .line 935
    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->isRegProhibited(Lcom/sec/ims/ImsRegistration;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 936
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    invoke-interface {v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->unpublish(I)V

    .line 939
    :cond_0
    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    const-string/jumbo v1, "unpublish: remain etag for Kor"

    .line 940
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 941
    iget-wide v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_4

    .line 942
    iput-wide v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    goto :goto_0

    .line 944
    :cond_1
    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v6, :cond_3

    if-eqz v1, :cond_4

    .line 946
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    .line 947
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 948
    invoke-interface {v3, v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "unpublish: PDN already disconnected"

    .line 949
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 950
    iget-wide v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_4

    .line 951
    iput-wide v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    goto :goto_0

    .line 954
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    goto :goto_0

    .line 958
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    .line 961
    :cond_4
    :goto_0
    iget-boolean v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    if-eqz v0, :cond_5

    .line 962
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "UnPublish"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    const v0, 0x12090002

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",UNPUB"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :cond_5
    const/4 v0, 0x0

    .line 965
    iput-boolean v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 967
    iget-object v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_6

    .line 968
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {p0, v4, v5, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 971
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->onUnPublish(I)V

    return-void
.end method

.method updatePresenceDatabase(Ljava/util/List;Lcom/sec/ims/presence/PresenceInfo;I)V
    .locals 6
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

    .line 1141
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->updatePresenceDatabase(Ljava/util/List;Lcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;Lcom/sec/internal/ims/util/UriGenerator;I)V

    return-void
.end method
