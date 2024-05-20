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

.field private mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

.field private mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

.field private mContext:Landroid/content/Context;

.field private mCoreHandler:Landroid/os/Handler;

.field private final mCoreThread:Landroid/os/HandlerThread;

.field private mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

.field private mDumpExecutor:Ljava/util/concurrent/ExecutorService;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mFcmHandler:Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;

.field private mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

.field private mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

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

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

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
.method public static synthetic $r8$lambda$5jblg67R4-uwI1nnoV3AFjNb_5s(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$linkToPhoneDeath$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$6QkV2mi-2JfMyF_SG5FoU9PqJX0(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$registerSimMobilityStatusListener$1(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7EzZ0PM7qW3iL3jYxkxKcztMtDg(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$getRcsProfileType$7(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7SUBylHDnkZuK-CP80KMfxK2j2c(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$unregisterImsRegistrationListenerForSlot$10(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7k69bXMQbPJC4wTxvzOkbSxBZWk(Lcom/sec/internal/ims/imsservice/ImsServiceStub;ILjava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$hasCrossSimImsService$11(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DlPlIM-2ok6O1H0wNnT7syplkfQ(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$unregisterImsRegistrationListener$9(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G1qvoqcG5N-g-tScdAktmVbciro(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$dump$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ISo70ENkCeBGIhau8O80TfdX4CE(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$registerImsRegistrationListener$8(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U8YA4aJ83K6bVQhe_rd4OgBZqxg(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$unregisterSimMobilityStatusListenerByPhoneId$5(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UIs4BnknkbdJEyIw4ixp7RdECcM(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$registerImsRegistrationListener$13(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c8ZVTRfNPDtrh8ujdUqNxZYZv_g(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$dump$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$nNqSSMJzjXK5jmc25DFQoPOZu4U(Ljava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$isServiceAvailable$12(Ljava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$u_f4NwtG8K7RsXIUIVFSrgewGYA(Ljava/util/concurrent/Future;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$dump$4(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x2gzH3TCNb6Cv0Wpg4MRCyxUXg4()V
    .locals 0

    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$explicitGC$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ymQb_ifWpXxvoZZmpDirYlA06jE(Lcom/sec/internal/ims/imsservice/ImsServiceStub;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$getRcsProfileType$6(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfigModule(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/config/ConfigModule;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerTokenMap(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/RegistrationManagerBase;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceModuleManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcEpdgManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/WfcEpdgManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfactoryReset(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->factoryReset(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSmkVersion(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getSmkVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misPreloadedSmk(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPreloadedSmk(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartDeviceConfigService(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->startDeviceConfigService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteSmkVerData(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->writeSmkVerData(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsImsAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmUserUnlocked(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smexplicitGC()V
    .locals 0

    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->explicitGC()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 185
    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 191
    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 192
    sput-boolean v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    .line 193
    sput-boolean v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    .line 194
    sput-boolean v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 274
    invoke-direct {p0}, Lcom/sec/ims/IImsService$Stub;-><init>()V

    .line 197
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    .line 203
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    .line 204
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    .line 205
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 206
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    .line 209
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 210
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    .line 211
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    .line 212
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    .line 213
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceExtensionManager:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    .line 214
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    .line 215
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    .line 216
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCallStateTracker:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 217
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    .line 218
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;

    .line 219
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 220
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 221
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    .line 226
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 227
    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 275
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 276
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    .line 277
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x12c

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 278
    new-instance v0, Lcom/sec/internal/ims/ImsFramework;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/ImsFramework;-><init>(Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 281
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->checkUt(Landroid/content/Context;)V

    return-void
.end method

.method private changeOpModeByRcsSwtich(ZZI)V
    .locals 2

    if-eq p1, p2, :cond_1

    .line 756
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "info/tc_popup_user_accept"

    .line 757
    invoke-static {v0, p3}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-static {p1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 761
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 763
    :catch_0
    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error while parsing integer in getIntValue() - NumberFormatException"

    invoke-static {p1, p3, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 767
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p2, p3, v0}, Lcom/sec/internal/ims/config/ConfigModule;->changeOpMode(ZII)V

    :cond_1
    return-void
.end method

.method private static checkUt(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.salab.issuetracker"

    .line 348
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 349
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 350
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "issueTracker found should be UT device"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 351
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->setIsUt(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "issueTracker not found"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private createModules()V
    .locals 12

    .line 513
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "createModules started"

    .line 515
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 518
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreHandler:Landroid/os/Handler;

    const-string v2, "Creating SimManagers."

    .line 520
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->createInstance(Landroid/os/Looper;Landroid/content/Context;)V

    .line 522
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 523
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 524
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 525
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 527
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isWifiOnlyModel()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 528
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v2

    .line 529
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating IIilManager: count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-ge v3, v2, :cond_1

    .line 531
    new-instance v1, Lcom/sec/internal/ims/core/iil/IilManager;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v3, p0}, Lcom/sec/internal/ims/core/iil/IilManager;-><init>(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 532
    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v4, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 535
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating WfcEpdgManager."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    new-instance v2, Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 537
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating PdnController."

    .line 539
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    new-instance v2, Lcom/sec/internal/ims/core/PdnController;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p0}, Lcom/sec/internal/ims/core/PdnController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 541
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating DmConfigModule."

    .line 543
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance v2, Lcom/sec/internal/ims/settings/DmConfigModule;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p0}, Lcom/sec/internal/ims/settings/DmConfigModule;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    .line 545
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating CmcAccountManager."

    .line 547
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v2, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 549
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating RcsPolicyManager."

    .line 551
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v2, Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    .line 553
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating RegistrationManager."

    .line 555
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance v11, Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v7, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    .line 557
    invoke-static {v5}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object v10, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    move-object v2, v11

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/internal/ims/core/RegistrationManagerBase;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;)V

    iput-object v11, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 558
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating ConfigModule."

    .line 560
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v2, Lcom/sec/internal/ims/config/ConfigModule;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/internal/ims/config/ConfigModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    .line 562
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating HandlerFactory."

    .line 564
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p0}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->createStackHandler(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)Lcom/sec/internal/ims/core/handler/HandlerFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    .line 566
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating ServiceModuleManager."

    .line 568
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
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

    .line 571
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating AECModule."

    .line 573
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    new-instance v2, Lcom/sec/internal/ims/aec/AECModule;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v3}, Lcom/sec/internal/ims/aec/AECModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    .line 575
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating GeolocationController."

    .line 577
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    new-instance v2, Lcom/sec/internal/ims/core/GeolocationController;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-direct {v2, v3, v0, v4}, Lcom/sec/internal/ims/core/GeolocationController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/core/RegistrationManagerBase;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    .line 579
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v2, Lcom/sec/internal/ims/imsservice/CallStateTracker;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/ims/imsservice/CallStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCallStateTracker:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 582
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating ImsDiagnosticMonitorNotificationManager."

    .line 584
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    new-instance v2, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 586
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating NtpTimeController."

    .line 588
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    new-instance v1, Lcom/sec/internal/ims/core/NtpTimeController;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/core/NtpTimeController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    .line 590
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 600
    new-instance v1, Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 795
    invoke-static {}, Lcom/sec/internal/log/CriticalLogger;->getInstance()Lcom/sec/internal/log/CriticalLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/log/CriticalLogger;->flush()V

    .line 797
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump ims from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.DUMP"

    .line 797
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->prepareDump(Ljava/io/PrintWriter;)V

    .line 803
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDumpExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 804
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDumpExecutor:Ljava/util/concurrent/ExecutorService;

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimMobility Feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Enabled"

    goto :goto_0

    :cond_1
    const-string v2, "Disabled"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Runnable;

    .line 809
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda11;-><init>(Lcom/sec/internal/helper/SimpleEventLog;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda19;

    invoke-direct {v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda19;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda20;

    invoke-direct {v5, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda20;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerBase;)V

    aput-object v5, v0, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda21;

    invoke-direct {v5, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda21;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    aput-object v5, v0, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    .line 810
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda22;

    invoke-direct {v5, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda22;-><init>(Lcom/sec/internal/ims/config/ConfigModule;)V

    aput-object v5, v0, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda23;

    invoke-direct {v5, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda23;-><init>(Lcom/sec/internal/ims/settings/DmConfigModule;)V

    aput-object v5, v0, v2

    const/4 v2, 0x6

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda24;

    invoke-direct {v5, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda24;-><init>(Lcom/sec/internal/interfaces/ims/aec/IAECModule;)V

    aput-object v5, v0, v2

    const/4 v2, 0x7

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda25;

    invoke-direct {v5, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda25;-><init>(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    aput-object v5, v0, v2

    const/16 v2, 0x8

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 811
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda26;

    invoke-direct {v5, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda26;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    aput-object v5, v0, v2

    const/16 v2, 0x9

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda27;

    invoke-direct {v5, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda27;-><init>(Lcom/sec/internal/ims/core/GeolocationController;)V

    aput-object v5, v0, v2

    const/16 v2, 0xa

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda12;

    invoke-direct {v5, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda12;-><init>(Lcom/sec/internal/google/GoogleImsService;)V

    aput-object v5, v0, v2

    const/16 v2, 0xb

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 812
    invoke-static {v4}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda13;

    invoke-direct {v5, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda13;-><init>(Lcom/sec/internal/helper/PreciseAlarmManager;)V

    aput-object v5, v0, v2

    const/16 v2, 0xc

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 813
    invoke-static {v4, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda14;

    invoke-direct {v4, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda14;-><init>(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    aput-object v4, v0, v2

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 814
    invoke-static {v2, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda14;

    invoke-direct {v3, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda14;-><init>(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    aput-object v3, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 815
    invoke-static {v2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda15;

    invoke-direct {v3, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda15;-><init>(Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;)V

    aput-object v3, v0, v1

    .line 809
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda16;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    .line 816
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 818
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda17;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda17;-><init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V

    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/lang/Runnable;J)V

    .line 820
    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda18;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/lang/Runnable;J)V

    .line 822
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->postDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x0

    .line 828
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDumpExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 829
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, p0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 831
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda29;

    invoke-direct {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 832
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dump: Exception occurs! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 833
    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private enableRcsMainSwitchByPhoneId(ZI)V
    .locals 5

    .line 773
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "rcs"

    invoke-static {v0, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 775
    :goto_0
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

    .line 776
    invoke-direct {p0, v2, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeOpModeByRcsSwtich(ZZI)V

    .line 781
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 782
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_1

    const-string p0, "enableRcs: Ignore RCS disable for SKT until server responds"

    .line 783
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 786
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 788
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 791
    throw p0
.end method

.method private static explicitGC()V
    .locals 2

    .line 328
    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 333
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 335
    sput-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    :cond_1
    return-void
.end method

.method private factoryReset(I)V
    .locals 6

    if-ltz p1, :cond_3

    .line 851
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 857
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 858
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 862
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "factoryReset"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "volte_domestic_default_enabled"

    const/4 v2, 0x1

    .line 865
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "vt_default_enabled"

    .line 866
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result v3

    .line 867
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reset to default] Volte : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Video : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    xor-int/2addr v1, v2

    invoke-static {v0, v1, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 871
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    xor-int/lit8 v0, v3, 0x1

    invoke-static {p0, v0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVideoCallType(Landroid/content/Context;II)V

    return-void

    .line 859
    :cond_2
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "factoryReset : skip reset due to no SIM"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 852
    :cond_3
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "factoryReset : invalid phoneId"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .locals 2

    .line 285
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    if-nez v0, :cond_0

    .line 286
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "instance is null..."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 290
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 295
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    monitor-enter v0

    .line 306
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSmkVersion()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 478
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.ims.smk"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 479
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 480
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get SMK version Success : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "fail to get versionName"

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected static getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
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
    .locals 12

    .line 671
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 675
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVolteFeature - no simMgr"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    :cond_0
    const-string v1, "mmtel"

    .line 687
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move p1, v0

    move v1, v2

    move v3, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "smsip"

    .line 689
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    move p1, v2

    move v3, p1

    goto :goto_0

    :cond_2
    const-string v1, "mmtel-video"

    .line 691
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    move v3, v0

    move p1, v2

    move v1, p1

    :goto_0
    const/16 v4, 0x12

    if-ne p2, v4, :cond_3

    move p2, v0

    move p1, v2

    goto :goto_1

    :cond_3
    move p2, v2

    .line 706
    :goto_1
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMnoInfo()Landroid/content/ContentValues;

    move-result-object p0

    .line 707
    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 708
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVoImsFeature - mnoInfo\'s size is 0"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_4
    const-string v4, "imsSwitchType"

    const/4 v5, -0x1

    .line 712
    invoke-static {p0, v4, v5}, Lcom/sec/internal/helper/CollectionUtils;->getIntValue(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 714
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVoImsFeature - mnoInfo not available"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_5
    if-eqz v4, :cond_c

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    goto/16 :goto_4

    :cond_6
    const-string v4, "enableIms"

    const-string v5, "enableServiceVolte"

    const-string v6, "enableServiceVowifi"

    const-string v7, "enableServiceSmsip"

    const-string v8, "enableServiceVilte"

    .line 729
    invoke-static {p0, v4, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, " false"

    const-string v11, "hasVoImsFeature - "

    if-nez v9, :cond_7

    .line 731
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_7
    if-eqz p2, :cond_8

    .line 735
    invoke-static {p0, v6, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_8

    .line 736
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_8
    if-eqz p1, :cond_9

    .line 740
    invoke-static {p0, v5, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_9

    .line 741
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    .line 743
    invoke-static {p0, v7, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_a

    .line 744
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_a
    if-eqz v3, :cond_b

    .line 746
    invoke-static {p0, v8, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_b

    .line 747
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_b
    :goto_3
    return v0

    .line 719
    :cond_c
    :goto_4
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVoImsFeature - No SIM or GCF or LABSIM or Softphone or Default ImsSwitch"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 694
    :cond_d
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "no VoLTE feature, no need to check mnoInfo"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method private init()V
    .locals 4

    .line 604
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init started"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/cmstore/CloudMessageService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/CloudMessageService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 608
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 611
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    .line 614
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->initInstances()V

    .line 617
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->getRawSipHandler()Lcom/sec/internal/ims/core/handler/RawSipHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/google/GoogleImsService;->getInstance(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Lcom/sec/internal/google/GoogleImsService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    .line 620
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->setConnectivityController(Lcom/sec/internal/google/cmc/CmcConnectivityController;)V

    .line 622
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerFactoryResetReceiver()V

    .line 624
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->isTapiAuthorisationSupports()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceExtensionManager:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    .line 626
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->start()V

    .line 631
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SEM_INT:I

    const/16 v1, 0xa9c

    if-lt v0, v1, :cond_1

    .line 632
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->makeSemImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 635
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerDefaultSmsPackageChangeReceiver()V

    .line 639
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerPackageManagerReceiver()V

    .line 640
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerUserUnlockReceiver()V

    .line 641
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->linkToPhoneDeath()V

    .line 642
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->checkGrantAppOpsPermission()V

    return-void
.end method

.method public static isImsAvailable()Z
    .locals 1

    .line 340
    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return v0
.end method

.method private isPermissionGranted()Z
    .locals 2

    .line 840
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.imsservice.PERMISSION"

    .line 842
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isPreloadedSmk(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    const-string p0, "1.3.31"

    .line 488
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$dump$2(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 816
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$dump$3()V
    .locals 3

    .line 820
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
    .locals 1

    const/4 v0, 0x1

    .line 831
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method private static synthetic lambda$explicitGC$0()V
    .locals 2

    .line 330
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Call explicit GC"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 332
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    return-void
.end method

.method private synthetic lambda$getRcsProfileType$6(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    .line 1196
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getRcsProfileType$7(Ljava/lang/String;)Z
    .locals 0

    .line 1196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$hasCrossSimImsService$11(ILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0x12

    .line 1531
    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$isServiceAvailable$12(Ljava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 1609
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$linkToPhoneDeath$14()V
    .locals 2

    .line 2259
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Phone Crashed. Cleanup IMS"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 2260
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(I)V

    .line 2261
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->cleanUpModules()V

    .line 2262
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "Restart service"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const p0, -0xfffffff

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2263
    invoke-static {p0, v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    const/4 p0, 0x0

    .line 2264
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private synthetic lambda$registerImsRegistrationListener$13(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 2158
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$registerImsRegistrationListener$8(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 1322
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$registerSimMobilityStatusListener$1(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 653
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    return-void
.end method

.method private synthetic lambda$unregisterImsRegistrationListener$9(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 1331
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$unregisterImsRegistrationListenerForSlot$10(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 1356
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$unregisterSimMobilityStatusListenerByPhoneId$5(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 1134
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    return-void
.end method

.method private linkToPhoneDeath()V
    .locals 3

    .line 2254
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->tryGet()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2257
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "Link to Phone Binder Death"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 2258
    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    const/4 p0, 0x0

    invoke-interface {v0, v1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2267
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized makeImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .locals 3

    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    monitor-enter v0

    .line 310
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    if-eqz v1, :cond_0

    .line 311
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Already created."

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 315
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating IMSService"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 316
    invoke-static {v2}, Lcom/sec/internal/log/IMSLogTimer;->setLatchStartTime(I)V

    .line 317
    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 318
    invoke-direct {v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->createModules()V

    .line 319
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->init()V

    const-string p0, "Done."

    .line 321
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x10000000

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 324
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private registerFactoryResetReceiver()V
    .locals 6

    .line 370
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 371
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    .line 372
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
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
    .locals 3

    .line 403
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerPackageMgrListener"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 405
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.ims.smk"

    const/4 v2, 0x0

    .line 406
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v1, "com.samsung.android.messaging"

    .line 407
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v1, "package"

    .line 408
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getSmkVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 413
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->writeSmkVerData(Ljava/lang/String;)V

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeCallback(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2374
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    if-eqz p0, :cond_0

    .line 2376
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->reset()V

    .line 2378
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->mListener:Landroid/os/IInterface;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2380
    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to removeCallback by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private startDeviceConfigService()V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "call SMK start"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 493
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.ims.smk"

    const-string v2, "com.samsung.ims.smk.DeviceUpdateService"

    .line 494
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private writeSmkVerData(Ljava/lang/String;)V
    .locals 3

    .line 468
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "send_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 470
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "overwrite_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "SMKV"

    .line 471
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "DRPT"

    invoke-static {p1, p0, v1, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public changeAudioPath(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1813
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeAudioPathForSlot(II)V

    return-void
.end method

.method public changeAudioPathForSlot(II)V
    .locals 3

    .line 1818
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "VolteServiceModule is not ready"

    .line 1822
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1826
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->updateAudioInterface(II)V

    return-void
.end method

.method public checkGrantAppOpsPermission()V
    .locals 10

    const-string v0, "com.sec.imsservice"

    .line 2439
    const-class v1, Ljava/lang/String;

    :try_start_0
    const-string v2, "android.app.AppOpsManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2440
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v3, "appops"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const-string v3, "semCheckOpWriteSms"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 2442
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v8, 0x1

    aput-object v1, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    .line 2443
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

    if-nez v3, :cond_0

    .line 2446
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "checkGrantAppOpsPermission already allowed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v3, "semSetModeWriteSms"

    const/4 v5, 0x3

    new-array v9, v5, [Ljava/lang/Class;

    aput-object v6, v9, v7

    aput-object v1, v9, v8

    aput-object v6, v9, v4

    .line 2448
    invoke-virtual {v2, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 2449
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
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2455
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 2453
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call cloud message service exception. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public deregisterAdhocProfile(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1215
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->deregisterAdhocProfileByPhoneId(II)V

    return-void
.end method

.method public deregisterAdhocProfileByPhoneId(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1220
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregisterProfile(II)V

    return-void
.end method

.method public deregisterProfile(Ljava/util/List;Z)V
    .locals 1

    .line 1239
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->deregisterProfileByPhoneId(Ljava/util/List;ZI)V

    return-void
.end method

.method public deregisterProfileByPhoneId(Ljava/util/List;ZI)V
    .locals 3

    .line 1244
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregisterProfile(Ljava/util/List;ZI)V

    return-void
.end method

.method public dump()V
    .locals 1

    const/4 v0, 0x0

    .line 2025
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 2033
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableRcs(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1688
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableRcsByPhoneId(ZI)V

    return-void
.end method

.method public enableRcsByPhoneId(ZI)V
    .locals 4

    .line 1693
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->checkMdmRcsStatus(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "RCS isn\'t allowed by MDM. Don\'t enable RCS"

    .line 1695
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1703
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.advp.imssettings"

    .line 1705
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Called by ImsSettings app. Change main switch value."

    .line 1706
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1707
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableRcsMainSwitchByPhoneId(ZI)V

    return-void

    .line 1711
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1713
    :goto_0
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

    .line 1714
    invoke-direct {p0, v2, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeOpModeByRcsSwtich(ZZI)V

    .line 1719
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_3

    if-nez p1, :cond_3

    const-string p0, "enableRcs: Ignore RCS disable for SKT until server responds"

    .line 1720
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1726
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    return-void
.end method

.method public enableService(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1646
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableServiceByPhoneId(Ljava/lang/String;ZI)V

    return-void
.end method

.method public enableServiceByPhoneId(Ljava/lang/String;ZI)V
    .locals 5

    .line 1651
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.advp.imssettings"

    .line 1654
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1655
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deprecated] enableService is called by "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 1657
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1659
    :try_start_0
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 1660
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1663
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1664
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    move v3, v4

    :cond_2
    invoke-static {p0, p1, v3, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_2

    .line 1667
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_2

    .line 1661
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    invoke-static {p0, p1, v3, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1670
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3
    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1671
    throw p0
.end method

.method public enableVoLte(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1677
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableVoLteByPhoneId(ZI)V

    return-void
.end method

.method public enableVoLteByPhoneId(ZI)V
    .locals 3

    .line 1682
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "volte"

    invoke-static {p0, v0, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public finishDmConfig(II)V
    .locals 3

    .line 1888
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->sendDmState(IZ)V

    .line 1890
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->finishDmConfig(II)V

    return-void
.end method

.method public forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 1

    .line 1260
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V

    return-void
.end method

.method public forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V
    .locals 3

    .line 1264
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    return-void
.end method

.method public getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    .locals 0

    .line 2084
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    return-object p0
.end method

.method public getAllServiceModules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation

    .line 2124
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getAllServiceModules()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 970
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .locals 3

    .line 2177
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .locals 3

    .line 2183
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .locals 0

    .line 2006
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCallCount(I)[I
    .locals 3

    .line 1735
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1740
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTotalCallCount(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 1741
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getVideoCallCount(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 1742
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getDowngradedCallCount(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 1743
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getE911CallCount(I)I

    move-result p0

    aput p0, v0, v1

    return-object v0

    .line 1736
    :cond_0
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
    .locals 0

    .line 2044
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    return-object p0
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 3

    .line 2281
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2284
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .locals 0

    .line 2064
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    return-object p0
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 3

    .line 1864
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1867
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1869
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1870
    throw p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 2140
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile;
    .locals 1

    .line 1183
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;
    .locals 3

    .line 1188
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method public getEpsFbCallCount(I)I
    .locals 1

    .line 1749
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1752
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getEpsFbCallCount(I)I

    move-result p0

    return p0

    .line 1750
    :cond_0
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

.method public getFcmHandler()Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;
    .locals 2

    .line 2108
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;

    if-nez v0, :cond_0

    .line 2109
    new-instance v0, Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;

    .line 2111
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;

    return-object p0
.end method

.method public getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    .locals 0

    .line 2093
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    return-object p0
.end method

.method public getGlobalSettingsValueToBoolean(Ljava/lang/String;IZ)Z
    .locals 3

    .line 1995
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getGlobalSettingsValueToInteger(Ljava/lang/String;II)I
    .locals 3

    .line 1989
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getGlobalSettingsValueToString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1983
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;
    .locals 0

    .line 2074
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    return-object p0
.end method

.method public getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .locals 0

    .line 2069
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    return-object p0
.end method

.method public getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;
    .locals 1

    .line 2116
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2119
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    return-object p0
.end method

.method public getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
    .locals 0

    .line 2103
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    return-object p0
.end method

.method public getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;
    .locals 0

    .line 2079
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p0}, Lcom/sec/internal/google/GoogleImsService;->getImsNotifier()Lcom/sec/internal/google/ImsNotifier;

    move-result-object p0

    return-object p0
.end method

.method public getInt(ILjava/lang/String;I)I
    .locals 0

    .line 2001
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;
    .locals 3

    .line 1431
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object p0

    return-object p0
.end method

.method public getMasterStringValue(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1445
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "com.sec.imsservice.PERMISSION"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getMasterValue(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1439
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "com.sec.imsservice.PERMISSION"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getNetworkType(I)I
    .locals 3

    .line 955
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCurrentNetwork(I)I

    move-result p0

    const/4 p1, 0x1

    if-lt p0, p1, :cond_0

    const/16 v0, 0x11

    if-gt p0, v0, :cond_0

    return p1

    :cond_0
    const/16 p1, 0x12

    if-ne p0, p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getNrSaCallCount(I)I
    .locals 1

    .line 1757
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1760
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getNrSaCallCount(I)I

    move-result p0

    return p0

    .line 1758
    :cond_0
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
    .locals 0

    .line 2098
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    return-object p0
.end method

.method public getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;
    .locals 0

    .line 2088
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    return-object p0
.end method

.method public getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 0

    .line 2039
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    return-object p0
.end method

.method public getPhoneCount()I
    .locals 2

    .line 886
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "com.sec.imsservice.PERMISSION"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p0

    return p0
.end method

.method public getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;
    .locals 0

    .line 2049
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    return-object p0
.end method

.method public getRcsProfileType(I)Ljava/lang/String;
    .locals 3

    .line 1194
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
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

    .line 1196
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

    .line 1198
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1156
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 1157
    :cond_0
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
    .locals 2

    .line 1165
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 1166
    :cond_0
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
    .locals 1

    .line 1174
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 1175
    :cond_0
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
    .locals 0

    .line 2059
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    return-object p0
.end method

.method public getRttMode(I)I
    .locals 3

    .line 1921
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getRttMode"

    .line 1922
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1923
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getRttMode()I

    move-result p0

    return p0
.end method

.method public getSemBinder()Landroid/os/Binder;
    .locals 3

    .line 2188
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getSemBinder()Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .locals 0

    .line 2054
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    return-object p0
.end method

.method public getSipNotifier()Lcom/sec/internal/interfaces/google/ISipTransportNotifier;
    .locals 0

    .line 2129
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p0}, Lcom/sec/internal/google/GoogleImsService;->getSipNotifier()Lcom/sec/internal/google/SipTransportNotifier;

    move-result-object p0

    return-object p0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2011
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 2015
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideocallType()I
    .locals 2

    .line 1840
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1843
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 1841
    :cond_0
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
    .locals 0

    .line 2134
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 499
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 503
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.GRANT_FILE_PERMISSION"

    if-eq v0, v1, :cond_2

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.MOVE_FILE_COMPLETE"

    if-eq v0, v1, :cond_2

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.MOVE_FILE_FINAL_COMPLETE"

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 509
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->handleIntent(Landroid/content/Intent;)V

    return-void

    .line 505
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/imsservice/RcsFileProviderManager;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public hasCrossSimImsService(I)Z
    .locals 7

    .line 1519
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1520
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1521
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 1522
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_0

    const/16 v0, 0x12

    .line 1523
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 1524
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationGovernorByProfileId(II)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1525
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationGovernorByProfileId(II)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    .line 1526
    invoke-interface {v1, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->applyDataSimPolicyForCrossSim(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1531
    :cond_1
    :goto_1
    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1533
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasVoLteSim()Z
    .locals 1

    .line 1631
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->hasVoLteSimByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public hasVoLteSimByPhoneId(I)Z
    .locals 3

    .line 1636
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-eqz p0, :cond_0

    .line 1638
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->hasVoLteSim(I)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "hasVoLteSimByPhoneId - no mRegistrationManager"

    .line 1640
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public isCmcEmergencyCallSupported(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2299
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "com.sec.imsservice.PERMISSION"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isCmcEmergencyCallSupported"

    .line 2300
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2304
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isEmergencyCallSupported()Z

    move-result p0

    return p0
.end method

.method public isCmcEmergencyNumber(Ljava/lang/String;I)Z
    .locals 3

    .line 2309
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isCmcEmergencyNumber"

    .line 2310
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2314
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isCmcPotentialEmergencyNumber(Ljava/lang/String;I)Z
    .locals 3

    .line 2319
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isCmcPotentialEmergencyNumber"

    .line 2320
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2324
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isPotentialEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isCrossSimCallingRegistered(I)Z
    .locals 6

    .line 1566
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1571
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 1572
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 1573
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    .line 1574
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isCrossSimCallingRegistered true"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1578
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isCrossSimCallingRegistered false"

    invoke-static {p0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public isCrossSimCallingSupported()Z
    .locals 4

    .line 1554
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1557
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1559
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    const-string v3, "cross_sim_menu_enable"

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1555
    :cond_1
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
    .locals 3

    .line 1538
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1541
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isCrossSimCallingSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1545
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "cross_sim_menu_enable"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1

    .line 1539
    :cond_2
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
    .locals 2

    .line 2352
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2355
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_0

    .line 2356
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isCrossSimPermanentBlocked(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2353
    :cond_1
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
    .locals 5

    .line 2194
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OMADM_VALUE"

    .line 2195
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string p1, "93"

    const-string v0, "94"

    const-string v3, "31"

    .line 2196
    filled-new-array {p1, v0, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 2197
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, v4, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    .line 2198
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 2199
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2200
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    .line 2202
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

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    const-string v0, "SMS_SETTING"

    .line 2204
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "9"

    .line 2205
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    .line 2206
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    .line 2207
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SMS Setting Default Value : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "3GPP2"

    .line 2210
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2212
    :cond_2
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
    .locals 2

    .line 1765
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1768
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->isInvite403DisabledService(I)Z

    move-result p0

    return p0

    .line 1766
    :cond_0
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
    .locals 1

    .line 1773
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->isInvite403DisabledService(I)Z

    move-result p0

    return p0

    .line 1774
    :cond_0
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
    .locals 1

    const/4 v0, 0x0

    .line 1463
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isImsEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isImsEnabledByPhoneId(I)Z
    .locals 3

    .line 1468
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "ims"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRcsEnabled()Z
    .locals 1

    .line 1509
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isRcsEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isRcsEnabledByPhoneId(I)Z
    .locals 3

    .line 2169
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isRcsEnabled:"

    .line 2170
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2172
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->isValidAcsVersion(I)Z

    move-result p0

    return p0
.end method

.method public isRegistered()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1145
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1151
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 1146
    :cond_1
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
    .locals 3

    .line 1897
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isRttCall"

    .line 1898
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isRttCall(I)Z

    move-result p0

    return p0
.end method

.method public isServiceAvailable(Ljava/lang/String;II)Z
    .locals 7

    .line 1584
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->hasVoImsFeature(Ljava/lang/String;II)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1586
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

    .line 1591
    :cond_0
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->isRcsService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1592
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isLGTOmcCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1593
    :cond_1
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1595
    array-length v1, v0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    if-eqz v5, :cond_2

    .line 1596
    invoke-static {v5}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1597
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getSupportRcsAcrossSalesCode()Z

    move-result v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1600
    :cond_3
    invoke-static {p3}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1601
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1602
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v1, v0}, Lcom/sec/internal/constants/Mno;->equalsWithSalesCode(Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v4, :cond_4

    .line 1603
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

    .line 1608
    :cond_4
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1610
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result p0

    .line 1612
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

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method public isServiceEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1514
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .locals 3

    .line 1620
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1623
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1625
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1626
    throw p0
.end method

.method public isSimMobilityActivated(I)Z
    .locals 0

    .line 663
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result p0

    return p0
.end method

.method public isSimMobilityActivatedForRcs(I)Z
    .locals 1

    .line 667
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForRcs(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForAmRcs(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSupportVoWiFiDisable5GSA(I)Z
    .locals 2

    .line 2329
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2332
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isSupportVoWiFiDisable5GSA"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2333
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2336
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isSupportVoWiFiDisable5GSA(I)Z

    move-result p0

    return p0

    .line 2330
    :cond_1
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
    .locals 1

    const/4 v0, 0x0

    .line 1474
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isVoLteEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isVoLteEnabledByPhoneId(I)Z
    .locals 3

    .line 1479
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "volte"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isVolteEnabledFromNetwork(I)Z
    .locals 1

    .line 1485
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1488
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteServiceStatus(I)Z

    move-result p0

    return p0

    .line 1486
    :cond_0
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
    .locals 2

    .line 1493
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteSupportECT()Z

    move-result p0

    return p0

    .line 1494
    :cond_0
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
    .locals 1

    .line 1501
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteSupportECT(I)Z

    move-result p0

    return p0

    .line 1502
    :cond_0
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
    .locals 3

    .line 2238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    goto :goto_0

    :cond_0
    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    .line 2239
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android:phone_id"

    .line 2240
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2241
    invoke-static {p2}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v1

    const-string v2, "SIMMO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 2242
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2243
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 2245
    sput-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    .line 2247
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2248
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;->notifyImsReady(Z)V

    .line 2250
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->explicitGC()V

    return-void
.end method

.method public registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)I
    .locals 1

    .line 1204
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    return p0
.end method

.method public registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 3

    .line 1209
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    return p0
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;
    .locals 3

    .line 1092
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "registerAutoConfigurationListener"

    .line 1093
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V

    .line 1095
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 1096
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public registerCallback(Lcom/sec/ims/ImsEventListener;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V
    .locals 2

    .line 2290
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerCmcRecordingListener"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2291
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2293
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V

    :cond_0
    return-void
.end method

.method public registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;
    .locals 2

    .line 1365
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerCmcRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 1370
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 1371
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 1366
    :cond_0
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

.method public registerDefaultSmsPackageChangeReceiver()V
    .locals 2

    .line 359
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 360
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1394
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "registerDialogEventListener"

    .line 1395
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1396
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1408
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "registerDialogEventListener"

    .line 1409
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 1411
    invoke-static {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p1

    .line 1412
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 3

    .line 1850
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "registerDmValueListener:"

    .line 1851
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerDmListener(Lcom/sec/ims/IImsDmConfigListener;)V

    return-void
.end method

.method public registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;
    .locals 3

    .line 1294
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerEpdgListener"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz v0, :cond_0

    .line 1297
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->registerEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    .line 1299
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 1300
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;
    .locals 3

    .line 976
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "registerImSessionListener:"

    .line 977
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 980
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    .line 982
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 983
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)Ljava/lang/String;
    .locals 3

    .line 989
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "registerImSessionListenerByPhoneId"

    .line 990
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 993
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    .line 995
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 996
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;
    .locals 3

    .line 1034
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "registerImsOngoingFtListener"

    .line 1035
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 1037
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1040
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    :cond_0
    return-object v0
.end method

.method public registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)Ljava/lang/String;
    .locals 4

    .line 1047
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "registerImsOngoingFtListenerByPhoneId"

    .line 1048
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 1050
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v1

    .line 1051
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v3, p0, p1, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1053
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    :cond_0
    return-object v1
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;
    .locals 3

    .line 2150
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2154
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerImsRegistrationListener: broadcast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    const-string p2, "Requested registerListener without phoneId. register it by all phoneId."

    .line 2157
    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance p3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 2160
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V

    .line 2162
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 2163
    iget-object p3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 2151
    :cond_1
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
    .locals 2

    .line 1318
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Requested registerListener without phoneId. register it by all phoneId."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1319
    :cond_0
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
    .locals 2

    .line 1336
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1339
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerImsRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 1340
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1337
    :cond_0
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
    .locals 1

    .line 1227
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerProfileByPhoneId(Ljava/util/List;I)V

    return-void
.end method

.method public registerProfileByPhoneId(Ljava/util/List;I)V
    .locals 3

    .line 1232
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerProfile(Ljava/util/List;I)V

    return-void
.end method

.method public registerRttEventListener(ILcom/sec/ims/IRttEventListener;)Ljava/lang/String;
    .locals 3

    .line 1949
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "registerRttEventListener"

    .line 1950
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1951
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 1952
    invoke-static {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p1

    .line 1953
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)Ljava/lang/String;
    .locals 3

    .line 646
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSimMobilityStatusListener: broadcast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    const-string p2, "Requested registerSimMobilityStatusListener without phoneId. register it by all phoneId."

    .line 652
    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance p3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)V

    .line 657
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 658
    iget-object p3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 647
    :cond_1
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
    .locals 2

    .line 1115
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerSimMobilityStatusListenerByPhoneId"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 1119
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1116
    :cond_0
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
    .locals 2

    .line 365
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V
    .locals 0

    .line 2273
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2275
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V

    :cond_0
    return-void
.end method

.method public sendDeregister(II)V
    .locals 3

    .line 1270
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    return-void
.end method

.method public sendIidToken(Ljava/lang/String;I)V
    .locals 3

    .line 949
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->sendIidToken(Ljava/lang/String;I)V

    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;I)V
    .locals 3

    .line 943
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->sendMsisdnNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3

    .line 1928
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRttMessage, mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttMessage(Ljava/lang/String;)V

    return-void
.end method

.method public sendRttSessionModifyRequest(IZ)V
    .locals 3

    .line 1942
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sendRttSessionModifyRequest"

    .line 1943
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyRequest(IZ)I

    return-void
.end method

.method public sendRttSessionModifyResponse(IZ)V
    .locals 3

    .line 1935
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRttSessionModifyResponse, accept="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyResponse(IZ)V

    return-void
.end method

.method public sendTryRegister()V
    .locals 1

    .line 1250
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendTryRegisterByPhoneId(I)V

    return-void
.end method

.method public sendTryRegisterByPhoneId(I)V
    .locals 3

    .line 1255
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->setRegisterFromApp(ZI)V

    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;I)V
    .locals 3

    .line 937
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->sendVerificationCode(Ljava/lang/String;I)V

    return-void
.end method

.method public setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveImpu: impu "

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

    .line 907
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setActiveImpu(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setActiveMsisdn(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveMsisdn: msisdn "

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

    .line 916
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 920
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "setActiveMsisdn: unset activeMsisdn."

    .line 921
    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x0

    .line 922
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getNormalizedUri(ILjava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p0, "setActiveMsisdn: not found!"

    .line 928
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, -0x2

    return p0

    .line 932
    :cond_2
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setAutomaticMode(IZ)V
    .locals 3

    .line 1904
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutomaticMode, mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1906
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setAutomaticMode(IZ)V

    return-void
.end method

.method public setCrossSimPermanentBlocked(IZ)V
    .locals 1

    .line 2342
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2345
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_0

    .line 2346
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->setCrossSimPermanentBlocked(IZ)V

    :cond_0
    return-void

    .line 2343
    :cond_1
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
    .locals 4

    .line 2220
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OMADM_VALUE"

    .line 2221
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2222
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2223
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

    .line 2224
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

    .line 2225
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

    .line 2226
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2228
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isDefaultDmValue(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 2230
    :cond_0
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
    .locals 0

    .line 1288
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ePDN setup failure was changed to onPreciseDataConnectionStateChanged"

    .line 1289
    invoke-static {p1, p4, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setIsimLoaded()V
    .locals 3

    .line 892
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setIsimLoaded()V

    return-void
.end method

.method public setNrInterworkingMode(II)V
    .locals 1

    .line 2363
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2366
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_0

    .line 2367
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->setNrInterworkingMode(II)V

    :cond_0
    return-void

    .line 2364
    :cond_1
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
    .locals 0

    .line 1456
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProvisionedValue(II)V
    .locals 0

    .line 1451
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRttMode(II)V
    .locals 3

    .line 1911
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRttMode, mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1913
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setRttMode(II)V

    return-void
.end method

.method public setSimRefreshed()V
    .locals 3

    .line 898
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setSimRefreshed()V

    return-void
.end method

.method public setVideocallType(I)Z
    .locals 1

    .line 1831
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1834
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    const/4 p0, 0x1

    return p0

    .line 1832
    :cond_0
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
    .locals 1

    .line 2145
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/config/ConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    return-void
.end method

.method public startDmConfig(I)I
    .locals 3

    .line 1881
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->sendDmState(IZ)V

    .line 1883
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/DmConfigModule;->startDmConfig(I)I

    move-result p0

    return p0
.end method

.method public startLocalRingBackTone(III)I
    .locals 3

    .line 1787
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "VolteServiceModule is not ready"

    .line 1791
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1795
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->startLocalRingBackTone(III)I

    move-result p0

    return p0
.end method

.method public stopLocalRingBackTone()I
    .locals 3

    .line 1800
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "VolteServiceModule is not ready"

    .line 1804
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1808
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->stopLocalRingBackTone()I

    move-result p0

    return p0
.end method

.method public suspendRegister(ZI)V
    .locals 3

    .line 1276
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->suspendRegister(ZI)V

    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1781
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public triggerAutoConfigurationForApp(I)V
    .locals 3

    .line 1974
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    if-eqz p0, :cond_0

    .line 1976
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->triggerAutoConfigForApp(I)V

    :cond_0
    return-void
.end method

.method public unRegisterEpdgListener(Ljava/lang/String;)V
    .locals 3

    .line 1306
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1310
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IEpdgListener;

    if-eqz p1, :cond_1

    .line 1311
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_1

    .line 1312
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->unRegisterEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    :cond_1
    return-void
.end method

.method public unregisterAutoConfigurationListener(Ljava/lang/String;I)V
    .locals 3

    .line 1102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "unregisterAutoConfigurationListener"

    .line 1106
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1107
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IAutoConfigurationListener;

    if-eqz p1, :cond_1

    .line 1109
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V

    :cond_1
    return-void
.end method

.method public unregisterCallback(Lcom/sec/ims/ImsEventListener;)V
    .locals 0

    return-void
.end method

.method public unregisterCmcRegistrationListenerForSlot(Ljava/lang/String;I)V
    .locals 2

    .line 1377
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1380
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1383
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterCmcRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1384
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IImsRegistrationListener;

    if-eqz p1, :cond_1

    .line 1386
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    :cond_1
    return-void

    .line 1378
    :cond_2
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

.method public unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1401
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "unregisterDialogEventListener"

    .line 1402
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1403
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public unregisterDialogEventListenerByToken(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1418
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregisterDialogEventListener"

    .line 1422
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1423
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/IDialogEventListener;

    if-eqz p2, :cond_1

    .line 1425
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    :cond_1
    return-void
.end method

.method public unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 3

    .line 1857
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "unregisterDmValueListener:"

    .line 1858
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->unregisterDmListener(Lcom/sec/ims/IImsDmConfigListener;)V

    return-void
.end method

.method public unregisterImSessionListener(Ljava/lang/String;)V
    .locals 3

    .line 1002
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregisterImSessionListener:"

    .line 1006
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/im/IImSessionListener;

    if-eqz p1, :cond_1

    .line 1009
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1011
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    :cond_1
    return-void
.end method

.method public unregisterImSessionListenerByPhoneId(Ljava/lang/String;I)V
    .locals 3

    .line 1018
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregisterImSessionListenerByPhoneId"

    .line 1022
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1023
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/im/IImSessionListener;

    if-eqz p1, :cond_1

    .line 1025
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1027
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    :cond_1
    return-void
.end method

.method public unregisterImsOngoingFtListener(Ljava/lang/String;)V
    .locals 3

    .line 1060
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregisterImsOngoingFtListener"

    .line 1064
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    if-eqz p1, :cond_1

    .line 1067
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1069
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImsOngoingListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    :cond_1
    return-void
.end method

.method public unregisterImsOngoingFtListenerByPhoneId(Ljava/lang/String;I)V
    .locals 3

    .line 1076
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregisterImsOngoingFtListenerByPhoneId"

    .line 1080
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 1082
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    .line 1085
    invoke-interface {v0, p0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    :cond_1
    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1327
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Requested unregisterListener without phoneId. unregister it by all phoneId."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1328
    :cond_0
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
    .locals 2

    .line 1345
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1348
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1351
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterImsRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1352
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IImsRegistrationListener;

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const-string p2, "Requested unRegisterListener without phoneId. register it by all phoneId."

    .line 1355
    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda28;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1358
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    :cond_2
    :goto_0
    return-void

    .line 1346
    :cond_3
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
    .locals 3

    .line 1959
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregisterRttEventListener"

    .line 1963
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1964
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/IRttEventListener;

    if-eqz p2, :cond_1

    .line 1966
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    :cond_1
    return-void
.end method

.method public unregisterSimMobilityStatusListenerByPhoneId(Ljava/lang/String;I)V
    .locals 2

    .line 1124
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1130
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterSimMobilityStatusListenerByPhoneId"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1131
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ISimMobilityStatusListener;

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1134
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda8;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1136
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    :cond_2
    :goto_0
    return-void

    .line 1125
    :cond_3
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
    .locals 3

    .line 1875
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/settings/DmConfigModule;->updateConfigValues(Landroid/content/ContentValues;II)Z

    move-result p0

    return p0
.end method

.method public updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1282
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    return p0
.end method
