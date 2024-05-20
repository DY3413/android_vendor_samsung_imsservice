.class public Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;
.super Landroid/os/Handler;
.source "NSDSSimEventManager.java"


# static fields
.field private static final EVENT_SIMMOBILITY_CHANGED:I = 0x2

.field private static final EVENT_SIM_SUBSCRIBE_ID_CHANGED:I = 0x1

.field private static final EVT_DEVICE_READY:I = 0xa

.field private static final EVT_SIM_READY:I = 0x0

.field private static final EVT_SIM_REFRESH:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "NSDSSimEventManager"

.field public static final NOTIFY_SIM_READY:I = 0x64

.field private static mInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

.field private static final mLock:Ljava/lang/Object;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field protected mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field protected mDeviceReadyReceiver:Landroid/content/BroadcastReceiver;

.field private mSimEvtMessengers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mSimEvtRegistered:Z

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mSimMobilitystatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected notifySimReadyAlreadyDone:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misDeviceReady(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->isDeviceReady()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monEventSimReady(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->onEventSimReady(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSimMobilityChanged(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->onSimMobilityChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsUriMatcher()Landroid/content/UriMatcher;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->sUriMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 79
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    .line 79
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 114
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    .line 60
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    const/4 p2, 0x0

    .line 62
    iput-boolean p2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtRegistered:Z

    .line 63
    iput-boolean p2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->notifySimReadyAlreadyDone:Z

    .line 75
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimMobilitystatus:Ljava/util/Map;

    .line 83
    new-instance p2, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;-><init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;)V

    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mDeviceReadyReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance p2, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$2;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$2;-><init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 115
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    .line 116
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->initSimManagers()V

    .line 117
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->registerContentObserver()V

    .line 118
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->registerDeviceReadyReceiver()V

    return-void
.end method

.method public static createInstance(Landroid/os/Looper;Landroid/content/Context;)Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;
    .locals 2

    .line 126
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    invoke-direct {v1, p1, p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    .line 130
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    return-object p0

    :catchall_0
    move-exception p0

    .line 130
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;
    .locals 1

    .line 122
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    return-object v0
.end method

.method private getSimEvtBundle(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Landroid/os/Bundle;
    .locals 3

    .line 343
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimEvtBundle: phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NSDSSimEventManager"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v0, :cond_1

    .line 345
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 347
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    .line 348
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "com.sec.vsim.ericssonnsds.SIM_ABSENT"

    .line 349
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->isSimSwapPending(I)Z

    move-result p0

    const-string p1, "com.sec.vsim.ericssonnsds.SIM_SWAPPED"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method private initSimManagers()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 228
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimMobilitystatus:Ljava/util/Map;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 231
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtRegistered:Z

    if-nez v0, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->registerForSimEvents()V

    :cond_1
    return-void
.end method

.method private isDeviceReady()Z
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "NSDSSimEventManager"

    const-string v0, "isDeviceReady() User lock "

    .line 460
    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->checkMigrateDB(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->migrateDBToCe(Landroid/content/Context;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isSimSwapPending(I)Z
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 322
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isSimSwapPending(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSimSwapped(I)Z
    .locals 5

    .line 301
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    const-string v2, "imsi"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getPrefForSlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 304
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    const-string v4, "prev_imsi"

    invoke-static {v3, p1, v4, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->savePrefForSlot(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->savePrefForSlot(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pending_sim_swap"

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    .line 317
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->isSimSwapPending(I)Z

    move-result p0

    return p0
.end method

.method private notifyLazySimReady(Landroid/os/Messenger;I)V
    .locals 3

    .line 288
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyLazySimReady : notifySimReadyAlreadyDone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->notifySimReadyAlreadyDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NSDSSimEventManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->notifySimReadyAlreadyDone:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->obtainSimReadyMessage(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyLazySimReady: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void
.end method

.method private notifyMessengerSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 6

    .line 326
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 329
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->obtainSimReadyMessage(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "NSDSSimEventManager"

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMessengerSimReady: dead messenger, removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const-string p0, "NSDSSimEventManager"

    const-string p1, "notifyMessengerSimReady: notified"

    .line 338
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private notifySimReady(ZII)V
    .locals 4

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySimReady, isSimAbsent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NSDSSimEventManager"

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->isSimSwapped(I)Z

    move-result v1

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isSimSwapped:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",SIMSWAP:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x14010002

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->clearEntitlementServerUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->resetMnoStrategy()V

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/MnoNsdsConfigStrategyCreator;->updateMnoStrategy(Landroid/content/Context;I)V

    if-nez p3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 281
    :goto_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->notifySimReadyAlreadyDone:Z

    .line 283
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    .line 284
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->notifyMessengerSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method private obtainSimReadyMessage(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Landroid/os/Message;
    .locals 2

    .line 356
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x64

    .line 357
    iput v1, v0, Landroid/os/Message;->what:I

    .line 358
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimEvtBundle(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private onEventSimReady(II)V
    .locals 4

    const-string v0, "NSDSSimEventManager"

    const-string v1, "onEventSimReady:"

    .line 237
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->isDeviceReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_3

    .line 245
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v2

    :goto_1
    if-nez v3, :cond_4

    .line 246
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    invoke-direct {p0, v1, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->notifySimReady(ZII)V

    return-void
.end method

.method private onSimMobilityChanged(I)V
    .locals 4

    .line 442
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 444
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 445
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 451
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimMobilitystatus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSimMobilityChanged to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " : Start again entitlement service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NSDSSimEventManager"

    invoke-static {v3, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 453
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimMobilitystatus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->startIMSDeviceConfigService(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    :cond_2
    return-void
.end method

.method private onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V
    .locals 3

    .line 260
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimSubscribeIdChanged, subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NSDSSimEventManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 262
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 263
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private registerContentObserver()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 137
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerDeviceReadyReceiver()V
    .locals 3

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.internal.ims.entitlement.DEVICE_READY_AFTER_BOOTUP"

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "NSDSSimEventManager"

    const-string v2, "registerDeviceReadyReceiver"

    .line 187
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mDeviceReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerForSimEvents()V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v3, 0x0

    .line 251
    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v3, 0x3

    .line 252
    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 253
    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 255
    invoke-static {p0, v0, v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForSubIdChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 256
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtRegistered:Z

    return-void
.end method

.method public static startIMSDeviceConfigService(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 10

    .line 366
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 367
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 368
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v2

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startIMSDeviceConfigService : check CSC , SimMnoName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NSDSSimEventManager"

    invoke-static {v4, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",START:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x14010000

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const-string v2, "Nsds"

    .line 372
    invoke-static {v2, v0}, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->checkVSimFeatureEnabled(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const-string v2, "Nsdsconfig"

    .line 375
    invoke-static {v2, v0}, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->checkVSimFeatureEnabled(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    move v6, v5

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_0
    move v6, v2

    :goto_1
    if-nez v2, :cond_2

    if-eqz v6, :cond_d

    .line 380
    :cond_2
    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const-string v8, "ro.product.first_api_level"

    if-ne v1, v7, :cond_4

    invoke-static {v8, v5}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v9, 0x21

    if-lt v7, v9, :cond_4

    .line 382
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getGid1()Ljava/lang/String;

    move-result-object p1

    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getAllowedGid(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    const-string/jumbo p0, "startIMSDeviceConfigService : ConfigService is disabled. Don\'t allow Gid"

    .line 384
    invoke-static {v4, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 389
    :cond_4
    sget-object p1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, p1, :cond_6

    if-eqz v2, :cond_6

    const-string p1, "ro.simbased.changetype"

    const-string v7, ""

    .line 390
    invoke-static {p1, v7}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 391
    sget-object v7, Lcom/sec/internal/constants/Mno$Country;->US:Lcom/sec/internal/constants/Mno$Country;

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno$Country;->getCountryIso()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "SED"

    .line 392
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v8, v5}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v7, 0x1d

    if-ge p1, v7, :cond_6

    :cond_5
    const-string/jumbo p1, "startIMSDeviceConfigService : ConfigService is disabled"

    .line 395
    invoke-static {v4, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v5

    move v6, v2

    .line 399
    :cond_6
    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "ims"

    .line 400
    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    move p1, v5

    :goto_2
    if-eqz p1, :cond_b

    const-string/jumbo p1, "volte"

    .line 402
    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_8

    move p1, v3

    goto :goto_3

    :cond_8
    move p1, v5

    :goto_3
    if-nez p1, :cond_a

    .line 404
    sget-object p1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, p1, :cond_9

    move v6, v5

    goto :goto_4

    :cond_9
    move v5, v2

    :goto_4
    const-string/jumbo p1, "startIMSDeviceConfigService : Nsds is disabled"

    .line 408
    invoke-static {v4, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move v5, v2

    goto :goto_5

    :cond_b
    const-string/jumbo p1, "startIMSDeviceConfigService : IMS is disabled"

    .line 411
    invoke-static {v4, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    .line 416
    :goto_5
    sget-object p1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, p1, :cond_c

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {p0}, Lcom/sec/internal/helper/os/DeviceUtil;->isSupport5G(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    move v2, v3

    goto :goto_6

    :cond_c
    move v2, v5

    .line 422
    :cond_d
    :goto_6
    sget-object p1, Lcom/sec/internal/constants/Mno;->GCI:Lcom/sec/internal/constants/Mno;

    if-ne v1, p1, :cond_e

    const-string/jumbo p1, "startIMSDeviceConfigService : GCI"

    .line 423
    invoke-static {v4, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    goto :goto_7

    :cond_e
    move v3, v2

    .line 428
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startIMSDeviceConfigService : ConfigService ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], Nsds["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const p1, 0x14010001

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",DC:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",NSDS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-nez v3, :cond_f

    if-eqz v6, :cond_11

    :cond_f
    if-eqz v3, :cond_10

    .line 433
    invoke-static {p0, v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->startEntitlementConfigService(Landroid/content/Context;I)V

    :cond_10
    if-eqz v6, :cond_11

    .line 436
    invoke-static {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->startNsdsMultiSimService(Landroid/content/Context;I)V

    :cond_11
    return-void
.end method

.method private unregisterDeviceReadyReceiver()V
    .locals 3

    const-string v0, "NSDSSimEventManager"

    :try_start_0
    const-string/jumbo v1, "unregisterDeviceReadyReceiver"

    .line 193
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mDeviceReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterDeviceReadyReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getSimManager(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 2

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 142
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 2

    .line 150
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 151
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    .line 155
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ISimManager["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is not exist. Return null.."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NSDSSimEventManager"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NSDSSimEventManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 p1, 0xa

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->unregisterDeviceReadyReceiver()V

    goto :goto_0

    .line 212
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 213
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 208
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->makeDeviceId(Landroid/content/Context;I)V

    .line 209
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->onEventSimReady(II)V

    :goto_0
    return-void
.end method

.method public registerSimEventMessenger(Landroid/os/Messenger;I)V
    .locals 4

    .line 160
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "NSDSSimEventManager"

    const-string p1, "registerSimEventMessenger: null messenger"

    .line 162
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "NSDSSimEventManager"

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerSimEventMessenger size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->notifyLazySimReady(Landroid/os/Messenger;I)V

    .line 170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterSimEventMessenger(Landroid/os/Messenger;)V
    .locals 4

    .line 174
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "NSDSSimEventManager"

    const-string/jumbo p1, "unregisterSimEventMessenger: messenger null"

    .line 176
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "NSDSSimEventManager"

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterSimEventMessenger: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimEvtMessengers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 181
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
