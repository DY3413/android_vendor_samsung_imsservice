.class public Lcom/sec/internal/ims/imsservice/ImsServiceStub;
.super Lcom/sec/ims/IImsService$Stub;
.source "ImsServiceStub.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/IImsFramework;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;,
        Lcom/sec/internal/ims/imsservice/ImsServiceStub$BootCompleteReceiver;
    }
.end annotation


# static fields
.field private static final LISTENER_DEFAULT_INDEX:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.PERMISSION"

.field private static final SOFT_RESET_PERMISSION:Ljava/lang/String; = "com.sec.android.settings.permission.SOFT_RESET"

.field private static final TC_POPUP_USER_ACCEPT:Ljava/lang/String; = "info/tc_popup_user_accept"

.field private static mIsExplicitGcCalled:Z

.field private static mIsImsAvailable:Z

.field private static final mListenerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static mUserUnlocked:Z

.field private static sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;


# instance fields
.field private mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

.field private mCallStateTracker:Lcom/sec/internal/ims/imsservice/CallStateTracker;

.field private mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

.field private mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

.field private mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

.field private mContext:Landroid/content/Context;

.field private mCoreHandler:Landroid/os/Handler;

.field private final mCoreThread:Landroid/os/HandlerThread;

.field private mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

.field private mDumpExecutor:Ljava/util/concurrent/ExecutorService;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

.field private mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

.field private mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

.field private mIilManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;",
            ">;"
        }
    .end annotation
.end field

.field private mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

.field private final mListenerTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack<",
            "+",
            "Landroid/os/IInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

.field private mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field private mRawSipManager:Lcom/sec/internal/ims/core/RawSipManager;

.field private mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

.field private mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field private mSequentialInitializer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceExtensionManager:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

.field private mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field private mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method public static synthetic $r8$lambda$7EzZ0PM7qW3iL3jYxkxKcztMtDg(Ljava/lang/String;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$getRcsProfileType$7(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$D-5O4tDhj2iIylai2x9CbqAECC8(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$dump$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ekoy0dKvwfCN4mDE2imQZD6BE2c(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$dump$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gr1sK9xucKTMQ91yrz-Q9-H-IUk(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$registerImsRegistrationListener$13(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NfhUZeHsEUnqS8ThYVt5PXVbfqM(Lcom/sec/internal/ims/imsservice/ImsServiceStub;ILjava/lang/String;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$hasCrossSimImsService$11(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TCiuIsNAVZ5n5BhDcg7UiJxmRpw(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$unregisterImsRegistrationListener$9(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UCMQ0pTDMcvj7gE5bNYg1bTPzrs(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$linkToPhoneDeath$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$_NrgSF51EuG733WSQKh8HUAzVyc(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$registerSimMobilityStatusListener$1(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dPs5PThGirfIrJ1NBU1liqLvKVA(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$registerImsRegistrationListener$8(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fgqmwptdRhvXs8OkmCS83EHnUPw(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$unregisterImsRegistrationListenerForSlot$10(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nNqSSMJzjXK5jmc25DFQoPOZu4U(Ljava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$isServiceAvailable$12(Ljava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uKsI7zLZ5zwOSO4E9jhySeZufV8(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$unregisterSimMobilityStatusListenerByPhoneId$5(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u_f4NwtG8K7RsXIUIVFSrgewGYA(Ljava/util/concurrent/Future;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$dump$4(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v6lEmYYe5hnvXp6CzohUYTNNfWo(Lcom/sec/internal/ims/imsservice/ImsServiceStub;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$getRcsProfileType$6(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x2gzH3TCNb6Cv0Wpg4MRCyxUXg4()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$explicitGC$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmConfigModule(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/config/ConfigModule;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerTokenMap(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/RegistrationManagerBase;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceModuleManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcEpdgManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/WfcEpdgManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfactoryReset(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->factoryReset(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSmkVersion(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getSmkVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misPreloadedSmk(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPreloadedSmk(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartDeviceConfigService(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->startDeviceConfigService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteSmkVerData(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->writeSmkVerData(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsImsAvailable()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmUserUnlocked(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smexplicitGC()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->explicitGC()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 181
    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 187
    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 188
    sput-boolean v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    .line 189
    sput-boolean v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    .line 190
    sput-boolean v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 280
    invoke-direct {p0}, Lcom/sec/ims/IImsService$Stub;-><init>()V

    .line 193
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    .line 198
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    .line 199
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 200
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    .line 203
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 204
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    .line 205
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    .line 206
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    .line 207
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceExtensionManager:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    .line 208
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    .line 209
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    .line 210
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCallStateTracker:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 211
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    .line 212
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

    .line 213
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 214
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 215
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    .line 221
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    .line 222
    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 281
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 282
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    .line 283
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x12c

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 284
    new-instance v0, Lcom/sec/internal/ims/ImsFramework;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/ImsFramework;-><init>(Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 287
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->checkUt(Landroid/content/Context;)V

    return-void
.end method

.method private changeOpModeByRcsSwtich(ZZI)V
    .registers 5

    if-eq p1, p2, :cond_22

    .line 751
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "info/tc_popup_user_accept"

    .line 752
    invoke-static {v0, p3}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 751
    invoke-static {p1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 756
    :try_start_10
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_15

    goto :goto_1d

    .line 758
    :catch_15
    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Error while parsing integer in getIntValue() - NumberFormatException"

    invoke-static {p1, p3, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1c
    const/4 p1, -0x1

    .line 762
    :goto_1d
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p2, p3, p1}, Lcom/sec/internal/ims/config/ConfigModule;->changeOpMode(ZII)V

    :cond_22
    return-void
.end method

.method private static checkUt(Landroid/content/Context;)V
    .registers 3

    const-string v0, "com.salab.issuetracker"

    .line 353
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 354
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_22

    .line 355
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "issueTracker found should be UT device"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 356
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->setIsUt(Z)V
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_22

    .line 359
    :catch_1b
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "issueTracker not found"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

.method private createModules()V
    .registers 13

    .line 511
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "createModules started"

    .line 513
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 515
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 516
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreHandler:Landroid/os/Handler;

    const-string v2, "Creating SimManagers."

    .line 518
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->createInstance(Landroid/os/Looper;Landroid/content/Context;)V

    .line 520
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 521
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 522
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 523
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 525
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_54

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isWifiOnlyModel()Z

    move-result v2

    if-eqz v2, :cond_54

    move v2, v3

    goto :goto_5e

    .line 526
    :cond_54
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v2

    .line 527
    :goto_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating IIilManager: count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_72
    if-ge v3, v2, :cond_83

    .line 529
    new-instance v1, Lcom/sec/internal/ims/core/iil/IilManager;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v3, p0}, Lcom/sec/internal/ims/core/iil/IilManager;-><init>(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 530
    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v4, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 533
    :cond_83
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating WfcEpdgManager."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    new-instance v2, Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 535
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating PdnController."

    .line 537
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    new-instance v2, Lcom/sec/internal/ims/core/PdnController;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p0}, Lcom/sec/internal/ims/core/PdnController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 539
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating DmConfigModule."

    .line 541
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance v2, Lcom/sec/internal/ims/settings/DmConfigModule;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p0}, Lcom/sec/internal/ims/settings/DmConfigModule;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    .line 543
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating CmcAccountManager."

    .line 545
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    new-instance v2, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 547
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating RcsPolicyManager."

    .line 549
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v2, Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    .line 551
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating RegistrationManager."

    .line 553
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v11, Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v7, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    .line 555
    invoke-static {v5}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object v10, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    move-object v2, v11

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/internal/ims/core/RegistrationManagerBase;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;)V

    iput-object v11, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 556
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating ConfigModule."

    .line 558
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    new-instance v2, Lcom/sec/internal/ims/config/ConfigModule;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/internal/ims/config/ConfigModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    .line 560
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating HandlerFactory."

    .line 562
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p0}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->createStackHandler(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)Lcom/sec/internal/ims/core/handler/HandlerFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    .line 564
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating ServiceModuleManager."

    .line 566
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    new-instance v9, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    iget-object v7, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v8, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    move-object v2, v9

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;)V

    iput-object v9, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    .line 569
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating AECModule."

    .line 571
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    new-instance v2, Lcom/sec/internal/ims/aec/AECModule;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v3}, Lcom/sec/internal/ims/aec/AECModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    .line 573
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating GeolocationController."

    .line 575
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    new-instance v2, Lcom/sec/internal/ims/core/GeolocationController;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-direct {v2, v3, v0, v4}, Lcom/sec/internal/ims/core/GeolocationController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/core/RegistrationManagerBase;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    .line 577
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v2, Lcom/sec/internal/ims/imsservice/CallStateTracker;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/ims/imsservice/CallStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCallStateTracker:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 580
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating ImsDiagnosticMonitorNotificationManager."

    .line 582
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    new-instance v2, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 584
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating NtpTimeController."

    .line 586
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    new-instance v1, Lcom/sec/internal/ims/core/NtpTimeController;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/core/NtpTimeController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    .line 588
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance v1, Lcom/sec/internal/ims/core/RawSipManager;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/core/RawSipManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRawSipManager:Lcom/sec/internal/ims/core/RawSipManager;

    .line 593
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    .line 594
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setGeolocationController(Lcom/sec/internal/ims/core/GeolocationController;)V

    .line 595
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getRegistrationStackAdaptor()Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setStackInterface(Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;)V

    .line 596
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->setRegistrationManager(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    .line 597
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/settings/DmConfigModule;->setRegistrationManager(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    .line 599
    new-instance v1, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 19

    move-object/from16 v0, p0

    .line 790
    invoke-static {}, Lcom/sec/internal/log/CriticalLogger;->getInstance()Lcom/sec/internal/log/CriticalLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/log/CriticalLogger;->flush()V

    .line 792
    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump ims from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    .line 792
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v2, p1

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->prepareDump(Landroid/content/Context;Ljava/io/PrintWriter;)V

    .line 798
    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDumpExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_42

    .line 799
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDumpExecutor:Ljava/util/concurrent/ExecutorService;

    .line 802
    :cond_42
    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimMobility Feature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_57

    const-string v4, "Enabled"

    goto :goto_59

    :cond_57
    const-string v4, "Disabled"

    :goto_59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 804
    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda11;

    invoke-direct {v3, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda11;-><init>(Lcom/sec/internal/helper/SimpleEventLog;)V

    new-instance v4, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda18;

    invoke-direct {v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda18;-><init>()V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda19;

    invoke-direct {v5, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda19;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerBase;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda20;

    invoke-direct {v6, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda20;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    .line 805
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda21;

    invoke-direct {v7, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda21;-><init>(Lcom/sec/internal/ims/config/ConfigModule;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda22;

    invoke-direct {v8, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda22;-><init>(Lcom/sec/internal/ims/settings/DmConfigModule;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda23;

    invoke-direct {v9, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda23;-><init>(Lcom/sec/internal/interfaces/ims/aec/IAECModule;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda24;

    invoke-direct {v10, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda24;-><init>(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 806
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda25;

    invoke-direct {v11, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda25;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda26;

    invoke-direct {v12, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda26;-><init>(Lcom/sec/internal/ims/core/GeolocationController;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 807
    invoke-static {v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda12;

    invoke-direct {v13, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda12;-><init>(Lcom/sec/internal/helper/PreciseAlarmManager;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    .line 808
    invoke-static {v1, v14}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda13;

    invoke-direct {v14, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda13;-><init>(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    .line 809
    invoke-static {v1, v15}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda13;

    invoke-direct {v15, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda13;-><init>(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 810
    invoke-static {v1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda14;-><init>(Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;)V

    move-object/from16 v16, v2

    filled-new-array/range {v3 .. v16}, [Ljava/lang/Runnable;

    move-result-object v1

    .line 804
    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda15;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    .line 811
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 813
    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda16;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda16;-><init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V

    const-wide/16 v3, 0x7d0

    invoke-direct {v0, v2, v3, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/lang/Runnable;J)V

    .line 815
    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda17;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda17;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/lang/Runnable;J)V

    .line 817
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/log/IMSLog;->postDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/lang/Runnable;J)V
    .registers 5

    const/4 v0, 0x0

    .line 823
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDumpExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 824
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, p0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_c} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_c} :catch_d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_c} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_36

    :catch_d
    move-exception p0

    .line 826
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda28;

    invoke-direct {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda28;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 827
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dump: Exception occurs! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 828
    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_36
    return-void
.end method

.method private enableRcsMainSwitchByPhoneId(ZI)V
    .registers 8

    .line 768
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 770
    :goto_e
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRcsMainSwitchByPhoneId: oldValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", newValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 771
    invoke-direct {p0, v2, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeOpModeByRcsSwtich(ZZI)V

    .line 776
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 777
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_3f

    if-nez p1, :cond_3f

    const-string p0, "enableRcs: Ignore RCS disable for SKT until server responds"

    .line 778
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 781
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 783
    :try_start_43
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_4c

    .line 785
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4c
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 786
    throw p0
.end method

.method private static explicitGC()V
    .registers 2

    .line 334
    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    if-eqz v0, :cond_1e

    .line 335
    :cond_e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 338
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 340
    sput-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    :cond_1e
    return-void
.end method

.method private factoryReset(I)V
    .registers 8

    if-ltz p1, :cond_5f

    .line 846
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_5f

    .line 852
    :cond_9
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 853
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_57

    .line 857
    :cond_16
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "factoryReset"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "volte_domestic_default_enabled"

    const/4 v2, 0x1

    .line 860
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "vt_default_enabled"

    .line 861
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result v3

    .line 862
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reset to default] Volte : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Video : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    xor-int/2addr v1, v2

    invoke-static {v0, v1, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 866
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    xor-int/lit8 v0, v3, 0x1

    invoke-static {p0, v0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVideoCallType(Landroid/content/Context;II)V

    return-void

    .line 854
    :cond_57
    :goto_57
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "factoryReset : skip reset due to no SIM"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 847
    :cond_5f
    :goto_5f
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "factoryReset : invalid phoneId"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .registers 2

    .line 291
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    if-nez v0, :cond_18

    .line 292
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "instance is null..."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 296
    :try_start_f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_0

    :catch_13
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 301
    :cond_18
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .registers 2

    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    monitor-enter v0

    .line 312
    :try_start_3
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSmkVersion()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 483
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.ims.smk"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 484
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 485
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get SMK version Success : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    goto :goto_2e

    .line 487
    :catch_27
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "fail to get versionName"

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-object v0
.end method

.method protected static getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 305
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_14

    const-string p0, "null"

    goto :goto_1c

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "$"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasVoImsFeature(Ljava/lang/String;II)Z
    .registers 12

    .line 666
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_f

    .line 670
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVolteFeature - no simMgr"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    :cond_f
    const-string v1, "mmtel"

    .line 682
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    move p1, v0

    move v1, v2

    move v3, v1

    goto :goto_34

    :cond_1c
    const-string/jumbo v1, "smsip"

    .line 684
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    move v1, v0

    move p1, v2

    move v3, p1

    goto :goto_34

    :cond_29
    const-string v1, "mmtel-video"

    .line 686
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11c

    move v3, v0

    move p1, v2

    move v1, p1

    :goto_34
    const/16 v4, 0x12

    if-ne p2, v4, :cond_3b

    move p2, v0

    move p1, v2

    goto :goto_3c

    :cond_3b
    move p2, v2

    .line 701
    :goto_3c
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMnoInfo()Landroid/content/ContentValues;

    move-result-object p0

    .line 702
    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-nez v4, :cond_4e

    .line 703
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVoImsFeature - mnoInfo\'s size is 0"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_4e
    const-string v4, "imsSwitchType"

    const/4 v5, -0x1

    .line 707
    invoke-static {p0, v4, v5}, Lcom/sec/internal/helper/CollectionUtils;->getIntValue(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_5f

    .line 709
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVoImsFeature - imsswitchType not exist"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_5f
    if-eqz v4, :cond_114

    const/4 v5, 0x2

    if-ne v4, v5, :cond_66

    goto/16 :goto_114

    :cond_66
    const-string v4, "enableIms"

    .line 724
    invoke-static {p0, v4, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, " false"

    const-string v7, "hasVoImsFeature - "

    if-nez v5, :cond_8a

    .line 726
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_8a
    if-eqz p2, :cond_ac

    const-string p2, "enableServiceVowifi"

    .line 730
    invoke-static {p0, p2, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_ac

    .line 731
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_ac
    if-eqz p1, :cond_cf

    const-string p1, "enableServiceVolte"

    .line 735
    invoke-static {p0, p1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_cf

    .line 736
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :goto_cd
    move v0, v2

    goto :goto_113

    :cond_cf
    if-eqz v1, :cond_f1

    const-string p1, "enableServiceSmsip"

    .line 738
    invoke-static {p0, p1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_f1

    .line 739
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_cd

    :cond_f1
    if-eqz v3, :cond_113

    const-string p1, "enableServiceVilte"

    .line 741
    invoke-static {p0, p1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_113

    .line 742
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_cd

    :cond_113
    :goto_113
    return v0

    .line 714
    :cond_114
    :goto_114
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVoImsFeature - No SIM or GCF or LABSIM or Softphone or Default ImsSwitch"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 689
    :cond_11c
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "no VoLTE feature, no need to check mnoInfo"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method private init()V
    .registers 3

    .line 603
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init started"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/cmstore/CloudMessageService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/CloudMessageService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 607
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 610
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    .line 613
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->initInstances()V

    .line 615
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRawSipManager:Lcom/sec/internal/ims/core/RawSipManager;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->getRawSipHandler()Lcom/sec/internal/ims/core/handler/RawSipHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RawSipManager;->init(Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;)V

    .line 617
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerFactoryResetReceiver()V

    .line 619
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->isTapiAuthorisationSupports()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 620
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceExtensionManager:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    .line 621
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->start()V

    .line 626
    :cond_43
    :try_start_43
    sget v0, Landroid/os/Build$VERSION;->SEM_INT:I

    const/16 v1, 0xa9c

    if-lt v0, v1, :cond_59

    .line 627
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->makeSemImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4e} :catch_4f

    goto :goto_59

    :catch_4f
    move-exception v0

    .line 630
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_59
    :goto_59
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerDefaultSmsPackageChangeReceiver()V

    .line 634
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerPackageManagerReceiver()V

    .line 635
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerUserUnlockReceiver()V

    .line 636
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->linkToPhoneDeath()V

    .line 637
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->checkGrantAppOpsPermission()V

    return-void
.end method

.method public static isImsAvailable()Z
    .registers 1

    .line 345
    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return v0
.end method

.method private isPermissionGranted()Z
    .registers 3

    .line 835
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.imsservice.PERMISSION"

    .line 837
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private isPreloadedSmk(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_d

    const-string p0, "1.3.31"

    .line 493
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private synthetic lambda$dump$2(Ljava/lang/Runnable;)V
    .registers 4

    const-wide/16 v0, 0x3e8

    .line 811
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$dump$3()V
    .registers 4

    .line 815
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.sec.ims.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "dump"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private static synthetic lambda$dump$4(Ljava/util/concurrent/Future;)V
    .registers 2

    const/4 v0, 0x1

    .line 826
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method private static synthetic lambda$explicitGC$0()V
    .registers 2

    .line 336
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Call explicit GC"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/sec/internal/helper/os/SystemWrapper;->explicitGc()V

    return-void
.end method

.method private synthetic lambda$getRcsProfileType$6(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .registers 3

    .line 1200
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getRcsProfileType$7(Ljava/lang/String;)Z
    .registers 1

    .line 1200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$hasCrossSimImsService$11(ILjava/lang/String;)Z
    .registers 4

    const/16 v0, 0x12

    .line 1547
    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$isServiceAvailable$12(Ljava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Z
    .registers 4

    if-eqz p2, :cond_10

    .line 1625
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p2, p0, p1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private synthetic lambda$linkToPhoneDeath$14()V
    .registers 3

    .line 2265
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Phone Crashed. Cleanup IMS"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 2266
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(I)V

    .line 2267
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->cleanUpModules()V

    .line 2268
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "Restart service"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x1

    const v1, -0xfffffff

    .line 2269
    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    const/4 p0, 0x0

    .line 2270
    invoke-static {p0}, Lcom/sec/internal/helper/os/SystemWrapper;->exit(I)V

    return-void
.end method

.method private synthetic lambda$registerImsRegistrationListener$13(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 3

    .line 2164
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$registerImsRegistrationListener$8(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 3

    .line 1338
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$registerSimMobilityStatusListener$1(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 3

    .line 648
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    return-void
.end method

.method private synthetic lambda$unregisterImsRegistrationListener$9(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 3

    .line 1347
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$unregisterImsRegistrationListenerForSlot$10(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 3

    .line 1372
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$unregisterSimMobilityStatusListenerByPhoneId$5(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .registers 3

    .line 1129
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    return-void
.end method

.method private linkToPhoneDeath()V
    .registers 4

    .line 2260
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->tryGet()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2263
    :try_start_e
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "Link to Phone Binder Death"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 2264
    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    const/4 p0, 0x0

    invoke-interface {v0, v1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p0

    .line 2273
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_23
    :goto_23
    return-void
.end method

.method public static declared-synchronized makeImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .registers 4

    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    monitor-enter v0

    .line 316
    :try_start_3
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    if-eqz v1, :cond_12

    .line 317
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Already created."

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_4f

    monitor-exit v0

    return-object p0

    .line 321
    :cond_12
    :try_start_12
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating IMSService"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 322
    invoke-static {v2}, Lcom/sec/internal/log/IMSLogTimer;->setLatchStartTime(I)V

    .line 323
    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 324
    invoke-direct {v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->createModules()V

    .line 325
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->init()V

    const-string p0, "Done."

    .line 327
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PID:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/high16 v1, -0x10000000

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 330
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_4d
    .catchall {:try_start_12 .. :try_end_4d} :catchall_4f

    monitor-exit v0

    return-object p0

    :catchall_4f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private registerFactoryResetReceiver()V
    .registers 7

    .line 375
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 376
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    .line 377
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.sec.android.settings.permission.SOFT_RESET"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerPackageManagerReceiver()V
    .registers 4

    .line 408
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerPackageMgrListener"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 410
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.ims.smk"

    const/4 v2, 0x0

    .line 411
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v1, "com.samsung.android.messaging"

    .line 412
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v1, "package"

    .line 413
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getSmkVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 418
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->writeSmkVerData(Ljava/lang/String;)V

    .line 421
    :cond_2b
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeCallback(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2380
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    if-eqz p0, :cond_27

    .line 2382
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->reset()V

    .line 2384
    :try_start_d
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->mListener:Landroid/os/IInterface;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    .line 2386
    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to removeCallback by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method private startDeviceConfigService()V
    .registers 4

    .line 497
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "call SMK start"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 498
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.ims.smk"

    const-string v2, "com.samsung.ims.smk.DeviceUpdateService"

    .line 499
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private writeSmkVerData(Ljava/lang/String;)V
    .registers 5

    .line 473
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 474
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "send_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 475
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "overwrite_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "SMKV"

    .line 476
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "DRPT"

    invoke-static {p1, p0, v1, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public changeAudioPath(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1829
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeAudioPathForSlot(II)V

    return-void
.end method

.method public changeAudioPathForSlot(II)V
    .registers 6

    .line 1834
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-nez p0, :cond_17

    const-string p0, "VolteServiceModule is not ready"

    .line 1838
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1842
    :cond_17
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->updateAudioInterface(II)V

    return-void
.end method

.method public checkGrantAppOpsPermission()V
    .registers 11

    const-string v0, "com.sec.imsservice"

    .line 2444
    const-class v1, Ljava/lang/String;

    :try_start_4
    const-string v2, "android.app.AppOpsManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2445
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v3, "appops"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const-string/jumbo v3, "semCheckOpWriteSms"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 2447
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v8, 0x1

    aput-object v1, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    .line 2448
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v7

    aput-object v0, v5, v8

    invoke-static {v3, p0, v5}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_48

    .line 2451
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "checkGrantAppOpsPermission already allowed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    :cond_48
    const-string/jumbo v3, "semSetModeWriteSms"

    const/4 v5, 0x3

    new-array v9, v5, [Ljava/lang/Class;

    aput-object v6, v9, v7

    aput-object v1, v9, v8

    aput-object v6, v9, v4

    .line 2453
    invoke-virtual {v2, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 2454
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_6f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_6f} :catch_70
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_6f} :catch_70
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_6f} :catch_70
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_6f} :catch_70

    goto :goto_87

    :catch_70
    move-exception p0

    .line 2458
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call cloud message service exception. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_87
    return-void
.end method

.method public deregisterAdhocProfile(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1219
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->deregisterAdhocProfileByPhoneId(II)V

    return-void
.end method

.method public deregisterAdhocProfileByPhoneId(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1224
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregisterProfile(II)V

    return-void
.end method

.method public deregisterProfile(Ljava/util/List;Z)V
    .registers 4

    .line 1243
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->deregisterProfileByPhoneId(Ljava/util/List;ZI)V

    return-void
.end method

.method public deregisterProfileByPhoneId(Ljava/util/List;ZI)V
    .registers 7

    .line 1248
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregisterProfile(Ljava/util/List;ZI)V

    return-void
.end method

.method public dump()V
    .registers 2

    const/4 v0, 0x0

    .line 2041
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 2049
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableRcs(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 1704
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableRcsByPhoneId(ZI)V

    return-void
.end method

.method public enableRcsByPhoneId(ZI)V
    .registers 7

    .line 1709
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_19

    .line 1710
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->checkMdmRcsStatus(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_19

    const-string p0, "RCS isn\'t allowed by MDM. Don\'t enable RCS"

    .line 1711
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1719
    :cond_19
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.advp.imssettings"

    .line 1721
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "Called by ImsSettings app. Change main switch value."

    .line 1722
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1723
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableRcsMainSwitchByPhoneId(ZI)V

    return-void

    .line 1727
    :cond_36
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v2, :cond_40

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    .line 1729
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableRcs: oldValue: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", newValue: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1730
    invoke-direct {p0, v2, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeOpModeByRcsSwtich(ZZI)V

    .line 1735
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_70

    if-nez p1, :cond_70

    const-string p0, "enableRcs: Ignore RCS disable for SKT until server responds"

    .line 1736
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1742
    :cond_70
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    return-void
.end method

.method public enableService(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 1662
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableServiceByPhoneId(Ljava/lang/String;ZI)V

    return-void
.end method

.method public enableServiceByPhoneId(Ljava/lang/String;ZI)V
    .registers 9

    .line 1667
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.advp.imssettings"

    .line 1670
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "com.android.phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1671
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deprecated] enableService is called by "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_80

    .line 1673
    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1675
    :try_start_3e
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_74

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 1676
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_59

    goto :goto_74

    .line 1679
    :cond_59
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1680
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_6a

    move v3, v4

    :cond_6a
    invoke-static {p0, p1, v3, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_7d

    .line 1683
    :cond_6e
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_7d

    .line 1677
    :cond_74
    :goto_74
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_79

    goto :goto_7a

    :cond_79
    move v3, v4

    :goto_7a
    invoke-static {p0, p1, v3, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V
    :try_end_7d
    .catchall {:try_start_3e .. :try_end_7d} :catchall_81

    .line 1686
    :goto_7d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_80
    return-void

    :catchall_81
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1687
    throw p0
.end method

.method public enableVoLte(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 1693
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableVoLteByPhoneId(ZI)V

    return-void
.end method

.method public enableVoLteByPhoneId(ZI)V
    .registers 6

    .line 1698
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "volte"

    invoke-static {p0, v0, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public finishDmConfig(II)V
    .registers 6

    .line 1904
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->sendDmState(IZ)V

    .line 1906
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->finishDmConfig(II)V

    return-void
.end method

.method public forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;)V
    .registers 3

    .line 1270
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V

    return-void
.end method

.method public forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V
    .registers 6

    .line 1274
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    return-void
.end method

.method public getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    .registers 1

    .line 2090
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    return-object p0
.end method

.method public getAllServiceModules()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation

    .line 2131
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getAllServiceModules()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 965
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .registers 5

    .line 2183
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .registers 6

    .line 2189
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .registers 4

    .line 2022
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCallCount(I)[I
    .registers 5

    .line 1751
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1756
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTotalCallCount(I)I

    move-result v0

    .line 1757
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getVideoCallCount(I)I

    move-result v1

    .line 1758
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getDowngradedCallCount(I)I

    move-result v2

    .line 1759
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getE911CallCount(I)I

    move-result p0

    filled-new-array {v0, v1, v2, p0}, [I

    move-result-object p0

    return-object p0

    .line 1752
    :cond_33
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .registers 1

    .line 2060
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    return-object p0
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .registers 4

    .line 2287
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 2290
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;
    .registers 1

    .line 2095
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    return-object p0
.end method

.method public getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .registers 1

    .line 2080
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    return-object p0
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .registers 6

    .line 1880
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1883
    :try_start_d
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 1885
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1886
    throw p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 2146
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile;
    .registers 2

    .line 1187
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;
    .registers 5

    .line 1192
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method public getEpsFbCallCount(I)I
    .registers 3

    .line 1765
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1768
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getEpsFbCallCount(I)I

    move-result p0

    return p0

    .line 1766
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;
    .registers 3

    .line 2115
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

    if-nez v0, :cond_d

    .line 2116
    new-instance v0, Lcom/sec/internal/ims/fcm/FcmHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/fcm/FcmHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

    .line 2118
    :cond_d
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

    return-object p0
.end method

.method public getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    .registers 1

    .line 2100
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    return-object p0
.end method

.method public getGlobalSettingsValueToBoolean(Ljava/lang/String;IZ)Z
    .registers 7

    .line 2011
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getGlobalSettingsValueToInteger(Ljava/lang/String;II)I
    .registers 7

    .line 2005
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getGlobalSettingsValueToString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1999
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .registers 1

    .line 2085
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    return-object p0
.end method

.method public getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;
    .registers 3

    .line 2123
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 2126
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    return-object p0
.end method

.method public getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
    .registers 1

    .line 2110
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    return-object p0
.end method

.method public getInt(ILjava/lang/String;I)I
    .registers 4

    .line 2017
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;
    .registers 5

    .line 1447
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object p0

    return-object p0
.end method

.method public getMasterStringValue(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1461
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string p1, "com.sec.imsservice.PERMISSION"

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getMasterValue(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1455
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string p1, "com.sec.imsservice.PERMISSION"

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getNetworkType(I)I
    .registers 5

    .line 950
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCurrentNetwork(I)I

    move-result p0

    const/4 p1, 0x1

    if-lt p0, p1, :cond_17

    const/16 v0, 0x11

    if-gt p0, v0, :cond_17

    return p1

    :cond_17
    const/16 p1, 0x12

    if-ne p0, p1, :cond_1d

    const/4 p0, 0x2

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public getNrSaCallCount(I)I
    .registers 3

    .line 1773
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1776
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getNrSaCallCount(I)I

    move-result p0

    return p0

    .line 1774
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
    .registers 1

    .line 2105
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    return-object p0
.end method

.method public getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .registers 1

    .line 2055
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    return-object p0
.end method

.method public getPhoneCount()I
    .registers 3

    .line 881
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.imsservice.PERMISSION"

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p0

    return p0
.end method

.method public getRawSipSender()Lcom/sec/internal/interfaces/ims/core/IRawSipSender;
    .registers 1

    .line 2141
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRawSipManager:Lcom/sec/internal/ims/core/RawSipManager;

    return-object p0
.end method

.method public getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;
    .registers 1

    .line 2065
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    return-object p0
.end method

.method public getRcsProfileType(I)Ljava/lang/String;
    .registers 5

    .line 1198
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda9;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V

    .line 1200
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRcsProfileType: rcsProfile = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method public getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1160
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1164
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 1161
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .registers 4

    .line 1169
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1173
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 1170
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;
    .registers 4

    .line 1178
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1182
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 1179
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .registers 1

    .line 2075
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    return-object p0
.end method

.method public getRttMode(I)I
    .registers 5

    .line 1937
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getRttMode"

    .line 1938
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1939
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getRttMode()I

    move-result p0

    return p0
.end method

.method public getSemBinder()Landroid/os/Binder;
    .registers 4

    .line 2194
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getSemBinder()Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .registers 1

    .line 2070
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    return-object p0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2027
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 2031
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideocallType()I
    .registers 3

    .line 1856
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1859
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 1857
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;
    .registers 1

    .line 2136
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 3

    if-eqz p1, :cond_e

    .line 504
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_e

    .line 507
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->handleIntent(Landroid/content/Intent;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public hasCrossSimImsService(I)Z
    .registers 9

    .line 1535
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1536
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1537
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_37

    aget-object v4, v1, v3

    if-eqz v4, :cond_34

    .line 1538
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_34

    const/16 v0, 0x12

    .line 1539
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 1540
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationGovernorByProfileId(II)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 1542
    invoke-interface {v1, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->applyDataSimPolicyForCrossSim(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    goto :goto_37

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1547
    :cond_37
    :goto_37
    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1549
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasVoLteSim()Z
    .registers 2

    .line 1647
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->hasVoLteSimByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public hasVoLteSimByPhoneId(I)Z
    .registers 5

    .line 1652
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-eqz p0, :cond_12

    .line 1654
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->hasVoLteSim(I)Z

    move-result p0

    return p0

    :cond_12
    const-string p0, "hasVoLteSimByPhoneId - no mRegistrationManager"

    .line 1656
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public isCmcEmergencyCallSupported(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2305
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "com.sec.imsservice.PERMISSION"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isCmcEmergencyCallSupported"

    .line 2306
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p1

    if-nez p1, :cond_16

    const/4 p0, 0x0

    return p0

    .line 2310
    :cond_16
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isEmergencyCallSupported()Z

    move-result p0

    return p0
.end method

.method public isCmcEmergencyNumber(Ljava/lang/String;I)Z
    .registers 6

    .line 2315
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isCmcEmergencyNumber"

    .line 2316
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 2320
    :cond_16
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isCmcPotentialEmergencyNumber(Ljava/lang/String;I)Z
    .registers 6

    .line 2325
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isCmcPotentialEmergencyNumber"

    .line 2326
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 2330
    :cond_16
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isPotentialEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isCrossSimCallingRegistered(I)Z
    .registers 8

    .line 1582
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 1587
    :cond_8
    array-length v1, p0

    move v2, v0

    :goto_a
    if-ge v2, v1, :cond_3c

    aget-object v3, p0, v2

    if-eqz v3, :cond_39

    .line 1588
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_39

    .line 1589
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_39

    .line 1590
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isCrossSimCallingRegistered true"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1594
    :cond_3c
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isCrossSimCallingRegistered false"

    invoke-static {p0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public isCrossSimCallingSupported()Z
    .registers 5

    .line 1570
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1573
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_24

    .line 1575
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cross_sim_menu_enable"

    const/4 v3, -0x1

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_24

    move v1, v2

    :cond_24
    return v1

    .line 1571
    :cond_25
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCrossSimCallingSupportedByPhoneId(I)Z
    .registers 5

    .line 1554
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1557
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isCrossSimCallingSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1561
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "cross_sim_menu_enable"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_20

    return v0

    :cond_20
    return v1

    .line 1555
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCrossSimPermanentBlocked(I)Z
    .registers 4

    .line 2358
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2361
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_f

    .line 2362
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isCrossSimPermanentBlocked(I)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0

    .line 2359
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDefaultDmValue(Ljava/lang/String;I)Z
    .registers 8

    .line 2200
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OMADM_VALUE"

    .line 2201
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6d

    const-string p1, "93"

    const-string v0, "94"

    const-string v3, "31"

    .line 2202
    filled-new-array {p1, v0, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 2203
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, v4, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    .line 2204
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 2205
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2206
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    .line 2208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADM Default Value [VoLTE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", LVC : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", EAB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_6c

    if-eqz v0, :cond_6c

    if-eqz p0, :cond_6c

    const/4 v2, 0x1

    :cond_6c
    return v2

    :cond_6d
    const-string v0, "SMS_SETTING"

    .line 2210
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    const-string p1, "9"

    .line 2211
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    .line 2212
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    .line 2213
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SMS Setting Default Value : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "3GPP2"

    .line 2216
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2218
    :cond_a0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is wrong value on isDefaultDmValue"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method public isForbidden()Z
    .registers 3

    .line 1781
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1784
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->isInvite403DisabledService(I)Z

    move-result p0

    return p0

    .line 1782
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isForbiddenByPhoneId(I)Z
    .registers 3

    .line 1789
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1792
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->isInvite403DisabledService(I)Z

    move-result p0

    return p0

    .line 1790
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isImsEnabled()Z
    .registers 2

    const/4 v0, 0x0

    .line 1479
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isImsEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isImsEnabledByPhoneId(I)Z
    .registers 5

    .line 1484
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "ims"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method public isQSSSuccessAuthAndLogin(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1298
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isQSSSuccessAuthAndLogin(I)Z

    move-result p0

    return p0
.end method

.method public isRcsEnabled()Z
    .registers 2

    .line 1525
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isRcsEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isRcsEnabledByPhoneId(I)Z
    .registers 5

    .line 2175
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isRcsEnabled:"

    .line 2176
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2178
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->isValidAcsVersion(I)Z

    move-result p0

    return p0
.end method

.method public isRegistered()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1149
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1153
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-eqz v0, :cond_1b

    .line 1154
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1155
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0

    .line 1150
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isRttCall(I)Z
    .registers 5

    .line 1913
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isRttCall"

    .line 1914
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isRttCall(I)Z

    move-result p0

    return p0
.end method

.method public isServiceAvailable(Ljava/lang/String;II)Z
    .registers 11

    .line 1600
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->hasVoImsFeature(Ljava/lang/String;II)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2a

    .line 1602
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isServiceAvailable: VoImsFeature : ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1607
    :cond_2a
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->isRcsService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1608
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isLGTOmcCode()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1609
    :cond_42
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1611
    array-length v1, v0

    move v3, v2

    move v4, v3

    :goto_49
    if-ge v3, v1, :cond_5c

    aget-object v5, v0, v3

    if-eqz v5, :cond_59

    .line 1612
    invoke-static {v5}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 1613
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getSupportRcsAcrossSalesCode()Z

    move-result v4

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 1616
    :cond_5c
    invoke-static {p3}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1617
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1618
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_89

    invoke-virtual {v1, v1, v0}, Lcom/sec/internal/constants/Mno;->equalsWithSalesCode(Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    if-nez v4, :cond_89

    .line 1619
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isServiceAvailable: not matched with SIM :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1624
    :cond_89
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1626
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result p0

    .line 1628
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rat: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", profileFind:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", Enabled:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v0, :cond_d1

    if-eqz p0, :cond_d1

    const/4 v2, 0x1

    :cond_d1
    return v2
.end method

.method public isServiceEnabled(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1530
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .registers 6

    .line 1636
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1639
    :try_start_d
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_1c

    const/4 p1, 0x1

    if-ne p0, p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 1641
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1642
    throw p0
.end method

.method public isSimMobilityActivated(I)Z
    .registers 2

    .line 658
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result p0

    return p0
.end method

.method public isSimMobilityActivatedForRcs(I)Z
    .registers 3

    .line 662
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForRcs(I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForAmRcs(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public isSupportVoWiFiDisable5GSA(I)Z
    .registers 4

    .line 2335
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2338
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isSupportVoWiFiDisable5GSA"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2339
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return p0

    .line 2342
    :cond_13
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isSupportVoWiFiDisable5GSA(I)Z

    move-result p0

    return p0

    .line 2336
    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVoLteEnabled()Z
    .registers 2

    const/4 v0, 0x0

    .line 1490
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isVoLteEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isVoLteEnabledByPhoneId(I)Z
    .registers 5

    .line 1495
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "volte"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public isVolteEnabledFromNetwork(I)Z
    .registers 3

    .line 1501
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1504
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteServiceStatus(I)Z

    move-result p0

    return p0

    .line 1502
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVolteSupportECT()Z
    .registers 3

    .line 1509
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1512
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteSupportECT()Z

    move-result p0

    return p0

    .line 1510
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVolteSupportEctByPhoneId(I)Z
    .registers 3

    .line 1517
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1520
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteSupportECT(I)Z

    move-result p0

    return p0

    .line 1518
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyImsReady(ZI)V
    .registers 6

    .line 2244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_a

    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    goto :goto_c

    :cond_a
    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    .line 2245
    :goto_c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android:phone_id"

    .line 2246
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SIMMO"

    .line 2247
    invoke-static {p2}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 2248
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2249
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 2251
    sput-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    .line 2253
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3d

    .line 2254
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;->notifyImsReady(Z)V

    .line 2256
    :cond_3d
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->explicitGC()V

    return-void
.end method

.method public registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)I
    .registers 3

    .line 1208
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    return p0
.end method

.method public registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I
    .registers 6

    .line 1213
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    return p0
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;
    .registers 6

    .line 1087
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerAutoConfigurationListener"

    .line 1088
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V

    .line 1090
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 1091
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public registerCallback(Lcom/sec/ims/ImsEventListener;Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V
    .registers 5

    .line 2296
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerCmcRecordingListener"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2297
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 2299
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V

    :cond_13
    return-void
.end method

.method public registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;
    .registers 5

    .line 1381
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1384
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerCmcRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 1386
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 1387
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 1382
    :cond_22
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerCmsRegistrationListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreService;I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerDefaultSmsPackageChangeReceiver()V
    .registers 3

    .line 364
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1410
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerDialogEventListener"

    .line 1411
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1412
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1424
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerDialogEventListener"

    .line 1425
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 1427
    invoke-static {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p1

    .line 1428
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .registers 5

    .line 1866
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerDmValueListener:"

    .line 1867
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerDmListener(Lcom/sec/ims/IImsDmConfigListener;)V

    return-void
.end method

.method public registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;
    .registers 5

    .line 1310
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEpdgListener"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz v0, :cond_16

    .line 1313
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->registerEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    .line 1315
    :cond_16
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 1316
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;
    .registers 5

    .line 971
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerImSessionListener:"

    .line 972
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 975
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    .line 977
    :cond_1a
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 978
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)Ljava/lang/String;
    .registers 6

    .line 984
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerImSessionListenerByPhoneId"

    .line 985
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 988
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    .line 990
    :cond_1a
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 991
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;
    .registers 5

    .line 1029
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerImsOngoingFtListener"

    .line 1030
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 1035
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    :cond_28
    return-object v0
.end method

.method public registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)Ljava/lang/String;
    .registers 7

    .line 1042
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerImsOngoingFtListenerByPhoneId"

    .line 1043
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 1045
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v1

    .line 1046
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v3, p0, p1, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_28

    .line 1048
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    :cond_28
    return-object v1
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;
    .registers 7

    .line 2156
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2160
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerImsRegistrationListener: broadcast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, -0x1

    if-ne p3, v1, :cond_30

    const-string p2, "Requested registerListener without phoneId. register it by all phoneId."

    .line 2163
    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance p3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_35

    .line 2166
    :cond_30
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V

    .line 2168
    :goto_35
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 2169
    iget-object p3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 2157
    :cond_44
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .registers 4

    .line 1334
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1337
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Requested registerListener without phoneId. register it by all phoneId."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1335
    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;
    .registers 5

    .line 1352
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1355
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerImsRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 1356
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1353
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerProfile(Ljava/util/List;)V
    .registers 3

    .line 1231
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerProfileByPhoneId(Ljava/util/List;I)V

    return-void
.end method

.method public registerProfileByPhoneId(Ljava/util/List;I)V
    .registers 6

    .line 1236
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerProfile(Ljava/util/List;I)V

    return-void
.end method

.method public registerRttEventListener(ILcom/sec/ims/IRttEventListener;)Ljava/lang/String;
    .registers 6

    .line 1965
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerRttEventListener"

    .line 1966
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1967
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 1968
    invoke-static {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p1

    .line 1969
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)Ljava/lang/String;
    .registers 7

    .line 641
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 645
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSimMobilityStatusListener: broadcast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, -0x1

    if-ne p3, v1, :cond_30

    const-string p2, "Requested registerSimMobilityStatusListener without phoneId. register it by all phoneId."

    .line 647
    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance p3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_35

    .line 650
    :cond_30
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)V

    .line 652
    :goto_35
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 653
    iget-object p3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 642
    :cond_44
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)Ljava/lang/String;
    .registers 5

    .line 1110
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1113
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerSimMobilityStatusListenerByPhoneId"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 1114
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1111
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerUserUnlockReceiver()V
    .registers 3

    .line 370
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V
    .registers 4

    .line 2279
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 2281
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V

    :cond_b
    return-void
.end method

.method public sendDeregister(II)V
    .registers 6

    .line 1280
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    return-void
.end method

.method public sendIidToken(Ljava/lang/String;I)V
    .registers 6

    .line 944
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->sendIidToken(Ljava/lang/String;I)V

    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;I)V
    .registers 6

    .line 938
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->sendMsisdnNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .registers 5

    .line 1944
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRttMessage, mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttMessage(Ljava/lang/String;)V

    return-void
.end method

.method public sendRttSessionModifyRequest(IZ)V
    .registers 6

    .line 1958
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sendRttSessionModifyRequest"

    .line 1959
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyRequest(IZ)I

    return-void
.end method

.method public sendRttSessionModifyResponse(IZ)V
    .registers 6

    .line 1951
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRttSessionModifyResponse, accept="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyResponse(IZ)V

    return-void
.end method

.method public sendTryRegister()V
    .registers 2

    .line 1254
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendTryRegisterByPhoneId(I)V

    return-void
.end method

.method public sendTryRegisterByPhoneId(I)V
    .registers 5

    .line 1259
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->setRegisterFromApp(ZI)V

    return-void
.end method

.method public sendTryRegisterCms(I)V
    .registers 5

    .line 1265
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->setRegisterFromApp(ZI)V

    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;I)V
    .registers 6

    .line 932
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->sendVerificationCode(Ljava/lang/String;I)V

    return-void
.end method

.method public setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveImpu: impu "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " to phoneId"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p1, p3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 902
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setActiveImpu(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setActiveMsisdn(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveMsisdn: msisdn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 911
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 p0, -0x1

    return p0

    .line 915
    :cond_32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string/jumbo p2, "setActiveMsisdn: unset activeMsisdn."

    .line 916
    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x0

    .line 917
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 920
    :cond_44
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getNormalizedUri(ILjava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    if-nez p2, :cond_58

    const-string/jumbo p0, "setActiveMsisdn: not found!"

    .line 923
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, -0x2

    return p0

    .line 927
    :cond_58
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setAutomaticMode(IZ)V
    .registers 6

    .line 1920
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutomaticMode, mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1922
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setAutomaticMode(IZ)V

    return-void
.end method

.method public setCrossSimPermanentBlocked(IZ)V
    .registers 4

    .line 2348
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2351
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_d

    .line 2352
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->setCrossSimPermanentBlocked(IZ)V

    :cond_d
    return-void

    .line 2349
    :cond_e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDefaultDmValue(Ljava/lang/String;I)Z
    .registers 7

    .line 2226
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OMADM_VALUE"

    .line 2227
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2228
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2229
    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    const-string v2, "93"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    const-string v3, "94"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    const-string v3, "31"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2234
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isDefaultDmValue(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 2236
    :cond_67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is wrong value on setDefaultDmValue"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setEmergencyPdnInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 1304
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ePDN setup failure was changed to onPreciseDataConnectionStateChanged"

    .line 1305
    invoke-static {p1, p4, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setIsimLoaded()V
    .registers 4

    .line 887
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setIsimLoaded()V

    return-void
.end method

.method public setNrInterworkingMode(II)V
    .registers 4

    .line 2369
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2372
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_d

    .line 2373
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->setNrInterworkingMode(II)V

    :cond_d
    return-void

    .line 2370
    :cond_e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)V
    .registers 3

    .line 1472
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string p1, "com.sec.imsservice.PERMISSION"

    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProvisionedValue(II)V
    .registers 3

    .line 1467
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string p1, "com.sec.imsservice.PERMISSION"

    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRttMode(II)V
    .registers 6

    .line 1927
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRttMode, mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1929
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setRttMode(II)V

    return-void
.end method

.method public setSimRefreshed()V
    .registers 4

    .line 893
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setSimRefreshed()V

    return-void
.end method

.method public setVideocallType(I)Z
    .registers 3

    .line 1847
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1850
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    const/4 p0, 0x1

    return p0

    .line 1848
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startAutoConfig(ZLandroid/os/Message;)V
    .registers 4

    .line 2151
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/config/ConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    return-void
.end method

.method public startDmConfig(I)I
    .registers 5

    .line 1897
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->sendDmState(IZ)V

    .line 1899
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/DmConfigModule;->startDmConfig(I)I

    move-result p0

    return p0
.end method

.method public startLocalRingBackTone(III)I
    .registers 7

    .line 1803
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-nez p0, :cond_18

    const-string p0, "VolteServiceModule is not ready"

    .line 1807
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1811
    :cond_18
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->startLocalRingBackTone(III)I

    move-result p0

    return p0
.end method

.method public stopLocalRingBackTone()I
    .registers 4

    .line 1816
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-nez p0, :cond_18

    const-string p0, "VolteServiceModule is not ready"

    .line 1820
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1824
    :cond_18
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->stopLocalRingBackTone()I

    move-result p0

    return p0
.end method

.method public suspendRegister(ZI)V
    .registers 6

    .line 1286
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->suspendRegister(ZI)V

    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1797
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public triggerAutoConfigurationForApp(I)V
    .registers 5

    .line 1990
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    if-eqz p0, :cond_10

    .line 1992
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->triggerAutoConfigForApp(I)V

    :cond_10
    return-void
.end method

.method public unRegisterEpdgListener(Ljava/lang/String;)V
    .registers 5

    .line 1322
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 1326
    :cond_10
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IEpdgListener;

    if-eqz p1, :cond_1f

    .line 1327
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_1f

    .line 1328
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->unRegisterEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    :cond_1f
    return-void
.end method

.method public unregisterAutoConfigurationListener(Ljava/lang/String;I)V
    .registers 6

    .line 1097
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1100
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "unregisterAutoConfigurationListener"

    .line 1101
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1102
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IAutoConfigurationListener;

    if-eqz p1, :cond_23

    .line 1104
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V

    :cond_23
    return-void
.end method

.method public unregisterCallback(Lcom/sec/ims/ImsEventListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterCmcRegistrationListenerForSlot(Ljava/lang/String;I)V
    .registers 5

    .line 1393
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 1399
    :cond_d
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterCmcRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1400
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IImsRegistrationListener;

    if-eqz p1, :cond_22

    .line 1402
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    :cond_22
    return-void

    .line 1394
    :cond_23
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterCmsRegistrationListenerByPhoneId(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1417
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "unregisterDialogEventListener"

    .line 1418
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1419
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public unregisterDialogEventListenerByToken(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1434
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    const-string/jumbo v0, "unregisterDialogEventListener"

    .line 1438
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1439
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/IDialogEventListener;

    if-eqz p2, :cond_27

    .line 1441
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    :cond_27
    return-void
.end method

.method public unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .registers 5

    .line 1873
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "unregisterDmValueListener:"

    .line 1874
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->unregisterDmListener(Lcom/sec/ims/IImsDmConfigListener;)V

    return-void
.end method

.method public unregisterImSessionListener(Ljava/lang/String;)V
    .registers 5

    .line 997
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    const-string/jumbo v0, "unregisterImSessionListener:"

    .line 1001
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/im/IImSessionListener;

    if-eqz p1, :cond_29

    .line 1004
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 1006
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    :cond_29
    return-void
.end method

.method public unregisterImSessionListenerByPhoneId(Ljava/lang/String;I)V
    .registers 6

    .line 1013
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    const-string/jumbo v0, "unregisterImSessionListenerByPhoneId"

    .line 1017
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1018
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/im/IImSessionListener;

    if-eqz p1, :cond_29

    .line 1020
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 1022
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    :cond_29
    return-void
.end method

.method public unregisterImsOngoingFtListener(Ljava/lang/String;)V
    .registers 5

    .line 1055
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    const-string/jumbo v0, "unregisterImsOngoingFtListener"

    .line 1059
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    if-eqz p1, :cond_29

    .line 1062
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 1064
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImsOngoingListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    :cond_29
    return-void
.end method

.method public unregisterImsOngoingFtListenerByPhoneId(Ljava/lang/String;I)V
    .registers 6

    .line 1071
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    const-string/jumbo v0, "unregisterImsOngoingFtListenerByPhoneId"

    .line 1075
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 1077
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    if-eqz p0, :cond_29

    if-eqz v0, :cond_29

    .line 1080
    invoke-interface {v0, p0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    :cond_29
    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1343
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1346
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Requested unregisterListener without phoneId. unregister it by all phoneId."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1344
    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V
    .registers 5

    .line 1361
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 1367
    :cond_d
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterImsRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1368
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IImsRegistrationListener;

    if-eqz p1, :cond_35

    const/4 v1, -0x1

    if-ne p2, v1, :cond_30

    const-string p2, "Requested unRegisterListener without phoneId. register it by all phoneId."

    .line 1371
    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda27;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_35

    .line 1374
    :cond_30
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    :cond_35
    :goto_35
    return-void

    .line 1362
    :cond_36
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterRttEventListener(ILjava/lang/String;)V
    .registers 6

    .line 1975
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    const-string/jumbo v0, "unregisterRttEventListener"

    .line 1979
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1980
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/IRttEventListener;

    if-eqz p2, :cond_27

    .line 1982
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    :cond_27
    return-void
.end method

.method public unregisterSimMobilityStatusListenerByPhoneId(Ljava/lang/String;I)V
    .registers 5

    .line 1119
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 1125
    :cond_d
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterSimMobilityStatusListenerByPhoneId"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1126
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ISimMobilityStatusListener;

    if-eqz p1, :cond_30

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2b

    .line 1129
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda8;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_30

    .line 1131
    :cond_2b
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    :cond_30
    :goto_30
    return-void

    .line 1120
    :cond_31
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateConfigValues(Landroid/content/ContentValues;II)Z
    .registers 7

    .line 1891
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/settings/DmConfigModule;->updateConfigValues(Landroid/content/ContentValues;II)Z

    move-result p0

    return p0
.end method

.method public updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1292
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    return p0
.end method
