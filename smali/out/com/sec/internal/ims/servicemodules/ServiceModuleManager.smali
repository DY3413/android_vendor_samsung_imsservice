.class public Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
.super Landroid/os/Handler;
.source "ServiceModuleManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;
    }
.end annotation


# static fields
.field private static final EVT_CONFIG_CHANGED:I = 0x2

.field private static final EVT_IMS_SWITCH_UPDATED:I = 0x1

.field private static final EVT_SIM_READY:I = 0x3

.field private static final IMS_SETTINGS_UPDATED:Ljava/lang/String; = "android.intent.action.IMS_SETTINGS_UPDATED"

.field private static final LOG_TAG:Ljava/lang/String; = "ServiceModuleManager"

.field private static OBSERVE_DM_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static OBSERVE_PREFIX_DM_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoConfigCompletedList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBinders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field private final mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mCmsModule:Lcom/sec/internal/ims/cmstore/CmsModule;

.field private mConfigObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field mEucModule:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

.field mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

.field mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

.field private final mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

.field mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field mImageShareModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field mImsStatusServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

.field private mLastImsServiceSwitches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;

.field mOpenApiServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

.field mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

.field mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

.field mQuantumEncryptionServiceModule:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

.field private final mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mSemBinder:Landroid/os/Binder;

.field private mServiceModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation
.end field

.field mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

.field private mSimEventListener:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;

.field private mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field mSmsServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

.field private mStarted:Z

.field mTapiServiceManager:Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

.field mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

.field mVideoShareModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

.field mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    .line 145
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "EAB_SETTING"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "LVC_ENABLED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "VOLTE_ENABLED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "CAP_CACHE_EXP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "CAP_POLL_INTERVAL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "SRC_THROTTLE_PUBLISH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "SUBSCRIBE_MAX_ENTRY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "AVAIL_CACHE_EXP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "POLL_LIST_SUB_EXP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "PUBLISH_TIMER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "PUBLISH_TIMER_EXTEND"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "PUBLISH_ERR_RETRY_TIMER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "CAP_DISCOVERY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/EAB_SETTING"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/LVC_ENABLED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/CAP_CACHE_EXP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/CAP_POLL_INTERVAL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/SRC_THROTTLE_PUBLISH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/SUBSCRIBE_MAX_ENTRY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/AVAIL_CACHE_EXP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/POLL_LIST_SUB_EXP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/PUBLISH_TIMER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/PUBLISH_TIMER_EXTEND"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/PUBLISH_ERR_RETRY_TIMER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/CAP_DISCOVERY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroid/content/Context;",
            "Lcom/sec/internal/interfaces/ims/IImsFramework;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;",
            ")V"
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 179
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 200
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    .line 202
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSemBinder:Landroid/os/Binder;

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mStarted:Z

    .line 206
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mAutoConfigCompletedList:Ljava/util/Map;

    .line 207
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    .line 208
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;-><init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;

    .line 209
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;

    invoke-direct {p1, p0, p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;-><init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mConfigObserver:Landroid/database/ContentObserver;

    const-string p1, "ServiceModuleManager"

    const-string v0, "created"

    .line 228
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    .line 230
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSimManagers:Ljava/util/List;

    .line 231
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 232
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 233
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    return-void
.end method

.method private createRcsServiceModulesAndStart(Lcom/sec/ims/settings/ImsProfile;I)V
    .registers 16

    const-string/jumbo v0, "vs"

    const-string v1, "options"

    .line 335
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 336
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 338
    :try_start_f
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "rcsswitch"

    invoke-static {v3, v4, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    .line 339
    :goto_1d
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    if-nez v4, :cond_3b

    .line 342
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v4

    if-eqz v4, :cond_1ec

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v4

    if-nez v4, :cond_1ec

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isUSOpenDevice()Z

    move-result v4

    if-nez v4, :cond_1ec

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v4

    if-eqz v4, :cond_1ec

    .line 343
    :cond_3b
    invoke-virtual {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v4
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_1f5

    const-string v5, "presence"

    if-nez v4, :cond_49

    :try_start_43
    invoke-virtual {p1, v5}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ec

    .line 344
    :cond_49
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    if-nez v4, :cond_68

    .line 345
    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)V

    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 346
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_68
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    if-nez v4, :cond_87

    .line 351
    new-instance v4, Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)V

    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    .line 352
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_87
    const-string v4, "gls"

    .line 356
    invoke-virtual {p1, v4}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_93

    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_ac

    .line 357
    :cond_93
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    if-nez v3, :cond_ac

    .line 358
    new-instance v3, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v6}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    .line 359
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ac
    const-string v3, "euc"

    .line 364
    invoke-virtual {p1, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 365
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mEucModule:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    if-nez v3, :cond_d3

    .line 366
    new-instance v3, Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getEucHandler()Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    move-result-object v7

    invoke-direct {v3, v4, v6, v7}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;)V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mEucModule:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    .line 367
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mEucModule:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d3
    const-string v3, "is"

    .line 372
    invoke-virtual {p1, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 373
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImageShareModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    if-nez v3, :cond_fa

    .line 374
    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getIshHandler()Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    move-result-object v7

    invoke-direct {v3, v4, v6, v7}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;)V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImageShareModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    .line 375
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImageShareModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_fa
    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12b

    .line 381
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVideoShareModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    if-nez p1, :cond_12b

    .line 382
    new-instance p1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getVshHandler()Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    move-result-object v6

    invoke-direct {p1, v3, v4, v6}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVideoShareModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 383
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVideoShareModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVideoShareModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_12b
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    if-nez p1, :cond_144

    .line 390
    new-instance p1, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v3}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_144
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    if-nez p1, :cond_15d

    .line 396
    new-instance p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 397
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_15d
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-nez p1, :cond_1a3

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    if-eqz p1, :cond_1a3

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    if-eqz p1, :cond_1a3

    .line 402
    new-instance p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/options/OptionsModule;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 404
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->setServiceModule(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    .line 407
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSemBinder:Landroid/os/Binder;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    .line 408
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 407
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->setServiceModule(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;)V

    .line 411
    :cond_1a3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p1, :cond_1b3

    .line 412
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceService;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceService;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_1b3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mTapiServiceManager:Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

    if-nez p1, :cond_1cc

    .line 416
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mTapiServiceManager:Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

    .line 417
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mTapiServiceManager:Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_1cc
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d0
    :goto_1d0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ec

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 422
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isReady()Z

    move-result v1

    if-nez v1, :cond_1d0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1d0

    .line 423
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V
    :try_end_1eb
    .catchall {:try_start_43 .. :try_end_1eb} :catchall_1f5

    goto :goto_1d0

    .line 428
    :cond_1ec
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 431
    invoke-direct {p0, v2, p2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->startRcsServiceModules(Ljava/util/List;I)V

    return-void

    :catchall_1f5
    move-exception p1

    .line 428
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 429
    throw p1
.end method

.method private getExtendedServices(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "services"

    const-string v0, ""

    .line 1147
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1d

    const-string v0, ","

    .line 1150
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1d
    return-object p1
.end method

.method private getRcsServiceModules(Lcom/sec/ims/settings/ImsProfile;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/settings/ImsProfile;",
            "I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation

    const-string v0, "ServiceModuleManager"

    const-string v1, "getRcsServiceModules is called"

    .line 1180
    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1181
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 1182
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1184
    :try_start_11
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "rcsswitch"

    invoke-static {v1, v2, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_11c

    const-string p2, "options"

    .line 1185
    invoke-virtual {p1, p2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_31

    const-string p2, "presence"

    invoke-virtual {p1, p2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11c

    .line 1186
    :cond_31
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    if-eqz p2, :cond_42

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_42

    .line 1187
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    :cond_42
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    if-eqz p2, :cond_53

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_53

    .line 1191
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    const-string p2, "gls"

    .line 1194
    invoke-virtual {p1, p2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6c

    .line 1195
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    if-eqz p2, :cond_6c

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6c

    .line 1196
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6c
    const-string p2, "euc"

    .line 1200
    invoke-virtual {p1, p2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_85

    .line 1201
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mEucModule:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    if-eqz p2, :cond_85

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_85

    .line 1202
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mEucModule:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_85
    const-string p2, "is"

    .line 1206
    invoke-virtual {p1, p2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 1207
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImageShareModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    if-eqz p2, :cond_9e

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 1208
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImageShareModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9e
    const-string/jumbo p2, "vs"

    .line 1212
    invoke-virtual {p1, p2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 1213
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVideoShareModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    if-eqz p1, :cond_b8

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 1214
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVideoShareModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    :cond_b8
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    if-eqz p1, :cond_c9

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c9

    .line 1219
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    :cond_c9
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    if-eqz p1, :cond_da

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_da

    .line 1223
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    :cond_da
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p1, :cond_eb

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_eb

    .line 1227
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    :cond_eb
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mTapiServiceManager:Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

    if-eqz p1, :cond_fc

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fc

    .line 1231
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mTapiServiceManager:Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1234
    :cond_fc
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_100
    :goto_100
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 1235
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isReady()Z

    move-result v1

    if-nez v1, :cond_100

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v1

    if-nez v1, :cond_100

    .line 1236
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V
    :try_end_11b
    .catchall {:try_start_11 .. :try_end_11b} :catchall_122

    goto :goto_100

    .line 1241
    :cond_11c
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_122
    move-exception p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1242
    throw p1
.end method

.method private isStartRequired(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .registers 14

    .line 1156
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->getServicesRequiring()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_9f

    aget-object v4, v0, v3

    .line 1157
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v4, v6, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v5

    const-string v7, "mmtel"

    .line 1158
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_33

    if-eqz p3, :cond_33

    .line 1159
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_33

    .line 1160
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    const-string v8, "omadm/./3GPP_IMS/VWF_ENABLED"

    .line 1162
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1160
    invoke-static {v7, v8, v9, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    or-int/2addr v5, v7

    .line 1164
    :cond_33
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47

    const-string/jumbo v8, "rcsswitch"

    goto :goto_48

    :cond_47
    move-object v8, v4

    :goto_48
    invoke-static {v7, v8, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "ServiceModuleManager"

    if-ne v7, v6, :cond_76

    if-eqz v5, :cond_76

    .line 1165
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v7

    if-nez v7, :cond_76

    .line 1166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isStartRequired: start "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " module"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 1169
    :cond_76
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isStartRequired: ImsSwitch not enabled for service: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", isDmOn: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v5, "mdmi"

    .line 1172
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9b

    return v6

    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_9f
    return v2
.end method

.method private needRegistrationNotification(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 548
    new-instance p0, Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->getServicesRequiring()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service not matched. Not notified to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceModuleManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {p2, p0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private onSimReady(I)V
    .registers 4

    const-string v0, "ServiceModuleManager"

    const-string v1, "ServiceModuleManager : onSimReady"

    .line 1067
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1068
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 1069
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1070
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onSimReady(I)V

    goto :goto_d

    :cond_23
    return-void
.end method

.method private declared-synchronized startRcsServiceModules(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 475
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 476
    invoke-direct {p0, v0, p2, v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->isStartRequired(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 477
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    goto :goto_5

    .line 480
    :cond_1c
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    .line 481
    invoke-static {v2, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p2

    .line 480
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 482
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public checkRcsServiceModules(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "checkRcsServiceModules is called"

    const-string v1, "ServiceModuleManager"

    .line 1248
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1249
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1251
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1252
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getRcsServiceModules(Lcom/sec/ims/settings/ImsProfile;I)Ljava/util/List;

    move-result-object v0

    .line 1253
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->startRcsServiceModules(Ljava/util/List;I)V

    goto :goto_15

    .line 1259
    :cond_37
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result p1

    if-nez p1, :cond_5e

    const-string p1, "PresenceModule is not running"

    .line 1260
    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1261
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->isStartRequired(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result p1

    if-eqz p1, :cond_5e

    const-string p1, "isStartRequired: true "

    .line 1262
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->start()V

    .line 1264
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onConfigured(I)V

    :cond_5e
    return-void
.end method

.method public cleanUpModules()V
    .registers 4

    .line 1102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1104
    :try_start_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 1105
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1106
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->cleanUp()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_27

    goto :goto_b

    .line 1110
    :cond_21
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_27
    move-exception v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1111
    throw v0
.end method

.method public createIMSServiceModules()V
    .registers 14

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    const-string v0, "ServiceModuleManager"

    const-string v1, "createIMSServiceModules"

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceModule"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 277
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    .line 279
    new-instance v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSmsHandler()Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSmsServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 280
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string/jumbo v2, "smsip"

    new-instance v3, Lcom/sec/internal/ims/servicemodules/sms/SmsService;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSmsServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsService;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 286
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v9

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getVolteStackAdaptor()Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    move-result-object v10

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    .line 287
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getMediaHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    move-result-object v11

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getOptionsHandler()Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    move-result-object v12

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    .line 288
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    .line 290
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string v3, "mmtel"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v2, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;-><init>(Landroid/os/Looper;Lcom/sec/ims/volte2/IVolteService;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsStatusServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    .line 294
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string v2, "ImsStatus"

    new-instance v3, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsStatusServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v1, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    .line 299
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getRawSipHandler()Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOpenApiServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    .line 300
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v1, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOpenApiServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    .line 302
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string v3, "OpenApi"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance v1, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mQuantumEncryptionServiceModule:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    .line 306
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v1, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mQuantumEncryptionServiceModule:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    .line 308
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string/jumbo v3, "quantum"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 311
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string/jumbo v2, "ss"

    new-instance v3, Lcom/sec/internal/ims/servicemodules/ss/UtService;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtService;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v1, Lcom/sec/internal/ims/gba/GbaServiceModule;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/ims/gba/GbaServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    .line 315
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string v2, "GbaService"

    new-instance v3, Lcom/sec/internal/ims/gba/GbaService;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/gba/GbaService;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string v2, "options"

    new-instance v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSemBinder:Landroid/os/Binder;

    .line 322
    new-instance v1, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string v2, "mdmi"

    new-instance v3, Lcom/sec/internal/ims/mdmi/MdmiService;

    invoke-direct {v3, v1}, Lcom/sec/internal/ims/mdmi/MdmiService;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 327
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V
    :try_end_15e
    .catchall {:try_start_5 .. :try_end_15e} :catchall_165

    goto :goto_14f

    .line 330
    :cond_15f
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_165
    move-exception v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 331
    throw v0
.end method

.method public dump()V
    .registers 3

    .line 872
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 873
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 874
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->dump()V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public forceCallOnServiceSwitched(I)V
    .registers 10

    .line 1050
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 1051
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    if-eqz v1, :cond_54

    .line 1053
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 1054
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->getServicesRequiring()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v3, :cond_1b

    aget-object v5, v2, v4

    .line 1055
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_4e

    .line 1057
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown switch value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ServiceModuleManager"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 1060
    :cond_4e
    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onServiceSwitched(ILandroid/content/ContentValues;)V

    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_54
    return-void
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

    .line 770
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .registers 3

    const/4 v0, 0x0

    .line 512
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .registers 5

    monitor-enter p0

    if-eqz p2, :cond_17

    .line 519
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_17
    const-string p2, "ServiceModuleManager"

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBinder for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Binder;
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_37

    monitor-exit p0

    return-object p1

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .registers 1

    .line 805
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    return-object p0
.end method

.method public getCmsModule()Lcom/sec/internal/interfaces/ims/cmstore/ICmsModule;
    .registers 1

    .line 825
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCmsModule:Lcom/sec/internal/ims/cmstore/CmsModule;

    return-object p0
.end method

.method public getEucModule()Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucModule;
    .registers 1

    .line 810
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mEucModule:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    return-object p0
.end method

.method public getGbaServiceModule()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
    .registers 1

    .line 864
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    return-object p0
.end method

.method public getGlsModule()Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;
    .registers 1

    .line 790
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    return-object p0
.end method

.method public getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    .registers 1

    .line 785
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    return-object p0
.end method

.method public getImageShareModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;
    .registers 1

    .line 840
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImageShareModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    return-object p0
.end method

.method public getImsStatusServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IImsStatusServiceModule;
    .registers 1

    .line 835
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsStatusServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    return-object p0
.end method

.method public getOpenApiServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IOpenApiServiceModule;
    .registers 1

    .line 855
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOpenApiServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    return-object p0
.end method

.method public getOptionsModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/IOptionsModule;
    .registers 1

    .line 795
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    return-object p0
.end method

.method public getPresenceModule()Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;
    .registers 1

    .line 800
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    return-object p0
.end method

.method public getQuantumEncryptionServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;
    .registers 1

    .line 868
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mQuantumEncryptionServiceModule:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    return-object p0
.end method

.method public getSemBinder()Landroid/os/Binder;
    .registers 1

    .line 527
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSemBinder:Landroid/os/Binder;

    return-object p0
.end method

.method public getServiceModuleHandler(Ljava/lang/String;)Landroid/os/Handler;
    .registers 4

    .line 775
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 776
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessionModule()Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;
    .registers 1

    .line 820
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    return-object p0
.end method

.method public getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;
    .registers 1

    .line 815
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSmsServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    return-object p0
.end method

.method public getTapiServiceManager()Lcom/sec/internal/ims/servicemodules/tapi/service/api/interfaces/ITapiServiceManager;
    .registers 1

    .line 850
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mTapiServiceManager:Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

    return-object p0
.end method

.method public getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    .registers 1

    .line 860
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    return-object p0
.end method

.method public getVideoShareModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;
    .registers 1

    .line 845
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVideoShareModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    return-object p0
.end method

.method public getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .registers 1

    .line 830
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "ServiceModuleManager"

    const-string v1, "handleIntent:"

    .line 760
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 763
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 764
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleIntent(Landroid/content/Intent;)V

    goto :goto_d

    :cond_23
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: evt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceModuleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_35

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_24

    goto :goto_40

    :cond_24
    const-string v0, "ON SIM READY"

    .line 1090
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->onSimReady(I)V

    goto :goto_40

    .line 1086
    :cond_2f
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->notifyConfigured(ZI)V

    goto :goto_40

    .line 1081
    :cond_35
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 1082
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->onImsSwitchUpdated(I)V

    :goto_40
    return-void
.end method

.method public initSequentially()V
    .registers 8

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "ServiceModuleManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 239
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 240
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 241
    invoke-virtual {p0, v5, v4, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v3, "SIM is ready subId:"

    .line 242
    invoke-static {v2, v4, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    :cond_2d
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    .line 245
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 250
    :cond_45
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 251
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "content://com.samsung.rcs.dmconfigurationprovider/"

    if-eqz v4, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_51

    .line 256
    :cond_78
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_7e

    .line 261
    :cond_a3
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    if-lez v0, :cond_b5

    const-string v0, "Initializting ServiceModules."

    .line 262
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->createIMSServiceModules()V

    .line 264
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->startIMSServiceModules()V

    goto :goto_ba

    :cond_b5
    const-string p0, "no phone skip Initializting ServiceModules."

    .line 266
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ba
    return-void
.end method

.method public isLooperExist()Z
    .registers 1

    .line 470
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public notifyAutoConfigDone(I)V
    .registers 4

    const-string v0, "ServiceModuleManager"

    const-string v1, "notifyAutoConfigDone"

    .line 887
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 888
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mAutoConfigCompletedList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public notifyCallStateChanged(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;I)V"
        }
    .end annotation

    .line 880
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 881
    invoke-virtual {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onCallStateChanged(ILjava/util/List;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public notifyConfigChanged(Ljava/lang/String;I)V
    .registers 6

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyConfigChanged: dmUri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceModuleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 694
    :try_start_1b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 695
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 696
    invoke-virtual {v1, p2, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onImsConifgChanged(ILjava/lang/String;)V
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_3d

    goto :goto_21

    .line 700
    :cond_37
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_3d
    move-exception p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 701
    throw p1
.end method

.method public notifyConfigured(ZI)V
    .registers 6

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyConfigured: phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceModuleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_37

    .line 708
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mAutoConfigCompletedList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mAutoConfigCompletedList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_37

    :cond_36
    return-void

    .line 712
    :cond_37
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 714
    :try_start_3c
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_42
    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 715
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-ne v0, v2, :cond_59

    goto :goto_42

    .line 718
    :cond_59
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onConfigured(I)V
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_94

    goto :goto_42

    .line 721
    :cond_5d
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 724
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p1, :cond_8a

    .line 725
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_77

    const-string p1, "notifyConfigured: CDM is running"

    .line 726
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onConfigured(I)V

    goto :goto_8a

    :cond_77
    const-string p1, "notifyConfigured: CDM is not running, trigger tryRegister"

    .line 729
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    new-instance v0, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v0}, Lcom/sec/ims/options/Capabilities;-><init>()V

    invoke-interface {p1, p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setOwnCapabilities(ILcom/sec/ims/options/Capabilities;)V

    .line 733
    :cond_8a
    :goto_8a
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setRegiConfig(I)V

    return-void

    :catchall_94
    move-exception p1

    .line 721
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 722
    throw p1
.end method

.method public notifyDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .registers 6

    .line 643
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 645
    :try_start_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 646
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->needRegistrationNotification(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 647
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_3c

    const/4 v1, 0x1

    goto :goto_c

    .line 652
    :cond_2d
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v1, :cond_3b

    .line 656
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->updateCapabilities(I)V

    :cond_3b
    return-void

    :catchall_3c
    move-exception p1

    .line 652
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 653
    throw p1
.end method

.method public notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZI)V
    .registers 12

    .line 557
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 558
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyImsRegistration: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceModuleManager"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 562
    new-instance v2, Lcom/sec/ims/ImsRegistration;

    invoke-direct {v2, p1}, Lcom/sec/ims/ImsRegistration;-><init>(Lcom/sec/ims/ImsRegistration;)V

    .line 563
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 565
    invoke-interface {v4, p2, p3, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->onRegistrationStatusChanged(ZILcom/sec/ims/ImsRegistration;)V

    :cond_42
    if-nez p2, :cond_7e

    .line 573
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 575
    :try_start_49
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4f
    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 576
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->needRegistrationNotification(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_6c

    goto :goto_4f

    .line 580
    :cond_6c
    invoke-virtual {v3, v2, p3}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    :try_end_6f
    .catchall {:try_start_49 .. :try_end_6f} :catchall_77

    goto :goto_4f

    .line 583
    :cond_70
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_f6

    :catchall_77
    move-exception p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 584
    throw p1

    .line 586
    :cond_7e
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v5

    .line 588
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 589
    invoke-interface {v5, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_8e

    :cond_9e
    if-eqz v4, :cond_bb

    .line 593
    invoke-interface {v4, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v4

    if-nez v4, :cond_bb

    const-string v4, "RCS disabled : remove rcs services from deregi list"

    .line 594
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x0

    :goto_b1
    if-ge v6, v4, :cond_bb

    aget-object v7, v3, v6

    .line 596
    invoke-interface {v5, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_b1

    .line 600
    :cond_bb
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 602
    :try_start_c0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c6
    :goto_c6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 603
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v6

    if-nez v6, :cond_d9

    goto :goto_c6

    .line 607
    :cond_d9
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->needRegistrationNotification(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_e7

    .line 608
    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_c6

    .line 611
    :cond_e7
    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->needRegistrationNotification(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 612
    invoke-virtual {v4, v2, p3}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    :try_end_f0
    .catchall {:try_start_c0 .. :try_end_f0} :catchall_145

    goto :goto_c6

    .line 616
    :cond_f1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 620
    :goto_f6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSimManagers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$$ExternalSyntheticLambda0;-><init>()V

    .line 621
    invoke-virtual {p1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$$ExternalSyntheticLambda1;-><init>()V

    .line 622
    invoke-virtual {p1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 623
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_141

    .line 624
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p1

    if-eqz p1, :cond_141

    .line 625
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p1

    .line 627
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->isRunning()Z

    move-result v1

    if-nez v1, :cond_141

    if-eqz p2, :cond_13e

    .line 629
    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_141

    .line 631
    :cond_13e
    invoke-interface {p1, v2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 636
    :cond_141
    :goto_141
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->updateCapabilities(I)V

    return-void

    :catchall_145
    move-exception p1

    .line 616
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 617
    throw p1
.end method

.method public notifyImsSwitchUpdateToApp()V
    .registers 3

    .line 905
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.IMS_SETTINGS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public notifyNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .registers 6

    .line 750
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 751
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 752
    new-instance v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    invoke-direct {v2, p1}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    invoke-virtual {v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    goto :goto_6

    .line 756
    :cond_21
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->updateCapabilities(I)V

    return-void
.end method

.method public notifyOmadmVolteConfigDone(I)V
    .registers 5

    const-string v0, "ServiceModuleManager"

    const-string v1, "notifyOmadmVolteConfigDone()"

    .line 893
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "content://com.samsung.rcs.dmconfigurationprovider/"

    .line 896
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 897
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    .line 899
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyRcsDeregistering(Ljava/util/Set;Lcom/sec/ims/ImsRegistration;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/ImsRegistration;",
            ")V"
        }
    .end annotation

    .line 665
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 666
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_1c

    aget-object v5, v1, v4

    .line 667
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 668
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 672
    :cond_1c
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 674
    :try_start_21
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 675
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->needRegistrationNotification(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 676
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_54

    const/4 v1, 0x1

    move v3, v1

    goto :goto_27

    .line 681
    :cond_45
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v3, :cond_53

    .line 685
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->updateCapabilities(I)V

    :cond_53
    return-void

    :catchall_54
    move-exception p1

    .line 681
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 682
    throw p1
.end method

.method public notifyReRegistering(ILjava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    const-string v0, "ServiceModuleManager"

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify Ims Re-registration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 536
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 537
    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onReRegistering(ILjava/util/Set;)V

    goto :goto_21

    .line 541
    :cond_37
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->updateCapabilities(I)V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_40

    .line 543
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_40
    move-exception p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 544
    throw p1
.end method

.method public notifySimChange(I)V
    .registers 6

    const-string v0, "ServiceModuleManager"

    const-string v1, "notifySimChange"

    .line 738
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 741
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 742
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-ne v2, v3, :cond_11

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 743
    :cond_2d
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onSimChanged(I)V

    goto :goto_11

    :cond_31
    return-void
.end method

.method public onImsSwitchUpdated(I)V
    .registers 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    const-string v2, "ServiceModuleManager"

    .line 912
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v3

    .line 913
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 915
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImsSwitchUpdated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", old "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 932
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isCmcEnabled()Z

    move-result v4

    .line 933
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_48
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_157

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 934
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v9

    if-nez v9, :cond_5c

    goto :goto_48

    .line 941
    :cond_5c
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->getServicesRequiring()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9
    :try_end_61
    .catchall {:try_start_12 .. :try_end_61} :catchall_2ea

    move v12, v8

    move v13, v12

    const/4 v11, 0x0

    :goto_64
    const-string v14, " module."

    if-ge v11, v10, :cond_111

    :try_start_68
    aget-object v15, v9, v11

    .line 942
    invoke-virtual {v3, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    if-eqz v16, :cond_80

    .line 943
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_80

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    .line 944
    invoke-static {v7, v15, v8, v0}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v7

    if-eqz v7, :cond_80

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 949
    :cond_80
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ab

    if-eqz v4, :cond_ab

    .line 951
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onImsSwitchUpdated: CMC device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 957
    :cond_ab
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move/from16 v17, v4

    .line 958
    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    if-ne v4, v0, :cond_c8

    :cond_c5
    :goto_c5
    move/from16 v4, v17

    goto :goto_b1

    .line 962
    :cond_c8
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    if-eqz v4, :cond_c5

    .line 963
    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_c5

    .line 964
    invoke-virtual {v4, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_c5

    .line 965
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_c5

    .line 966
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onImsSwitchUpdated: opposite sim slot enabled "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto :goto_c5

    :cond_10a
    move/from16 v17, v4

    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto/16 :goto_64

    :cond_111
    move/from16 v17, v4

    if-eqz v12, :cond_133

    .line 974
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onImsSwitchUpdated: Configuring "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onConfigured(I)V

    :cond_133
    if-eqz v13, :cond_153

    .line 979
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onImsSwitchUpdated: Stopping "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    :cond_153
    move/from16 v4, v17

    goto/16 :goto_48

    .line 984
    :cond_157
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v4

    .line 986
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 988
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_168
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1cb

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 989
    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->getServicesRequiring()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_17a
    if-ge v10, v9, :cond_168

    aget-object v11, v8, v10

    .line 990
    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 991
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isStopped()Z

    move-result v13

    if-nez v13, :cond_18e

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isReady()Z

    move-result v13

    if-eqz v13, :cond_1c8

    :cond_18e
    if-eqz v12, :cond_1c8

    .line 992
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1c8

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    .line 993
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v12, v11, v13, v0}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1c8

    .line 994
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Starting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " module"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 996
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c8
    add-int/lit8 v10, v10, 0x1

    goto :goto_17a

    :cond_1cb
    const-string/jumbo v6, "rcs"

    .line 1002
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1003
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mAutoConfigCompletedList:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f0

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mAutoConfigCompletedList:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1ff

    :cond_1f0
    if-eqz v6, :cond_1f9

    .line 1004
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1ff

    :cond_1f9
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v6

    if-eq v0, v6, :cond_213

    .line 1005
    :cond_1ff
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_203
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_213

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 1006
    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onConfigured(I)V

    goto :goto_203

    .line 1010
    :cond_213
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    if-eqz v6, :cond_2aa

    .line 1012
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_227
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2aa

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 1013
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 1014
    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->getServicesRequiring()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_23e
    if-ge v12, v11, :cond_286

    aget-object v13, v10, v12

    .line 1015
    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 1016
    invoke-virtual {v6, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v14, :cond_26a

    if-nez v15, :cond_24f

    goto :goto_26a

    .line 1021
    :cond_24f
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v17, v6

    const/4 v6, 0x1

    if-ne v14, v6, :cond_25a

    move v14, v6

    goto :goto_25b

    :cond_25a
    const/4 v14, 0x0

    :goto_25b
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v6, :cond_263

    move v15, v6

    goto :goto_264

    :cond_263
    const/4 v15, 0x0

    :goto_264
    if-eq v14, v15, :cond_281

    .line 1022
    invoke-interface {v9, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_281

    :cond_26a
    :goto_26a
    move-object/from16 v17, v6

    const/4 v6, 0x1

    .line 1018
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown switch value : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_281
    :goto_281
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v17

    goto :goto_23e

    :cond_286
    move-object/from16 v17, v6

    const/4 v6, 0x1

    .line 1026
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2a6

    .line 1027
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onImsSwitchUpdated: switchedServices "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-virtual {v8, v0, v3}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onServiceSwitched(ILandroid/content/ContentValues;)V

    :cond_2a6
    move-object/from16 v6, v17

    goto/16 :goto_227

    .line 1032
    :cond_2aa
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 1036
    invoke-interface {v4, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 1038
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2d0
    if-ge v7, v6, :cond_2b7

    aget-object v8, v5, v7

    .line 1039
    invoke-virtual {v8}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->needRegistrationNotification(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;Ljava/util/Set;)Z

    move-result v9

    if-eqz v9, :cond_2e1

    .line 1040
    invoke-virtual {v3, v8}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V
    :try_end_2e1
    .catchall {:try_start_68 .. :try_end_2e1} :catchall_2ea

    :cond_2e1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d0

    .line 1045
    :cond_2e4
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_2ea
    move-exception v0

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1046
    throw v0
.end method

.method public serviceStartDeterminer(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;I)V"
        }
    .end annotation

    .line 435
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 436
    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 437
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->createRcsServiceModulesAndStart(Lcom/sec/ims/settings/ImsProfile;I)V

    goto :goto_4

    .line 441
    :cond_1a
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getExtendedServices(I)Ljava/util/List;

    move-result-object p1

    .line 442
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ae

    const-string v0, "cms"

    .line 443
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ae

    const-string p1, "AIO"

    .line 444
    invoke-static {p2}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ae

    .line 445
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    const-string v0, "ServiceModuleManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_6a

    .line 446
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 447
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v2, "CscFeature_Message_ConfigOpBackupSync"

    invoke-virtual {p1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_64

    const-string/jumbo p1, "ro.product.first_api_level"

    .line 448
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v2, 0x21

    if-le p1, v2, :cond_6a

    :cond_64
    const-string p0, "AMBS has been disabled for this model"

    .line 449
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_6a
    const-string p1, "cms_open_device_vvm_enabled"

    .line 453
    invoke-static {p2, p1, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serviceStartDeterminer isOpenDeviceVVMEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCmsModule:Lcom/sec/internal/ims/cmstore/CmsModule;

    if-nez v0, :cond_ae

    .line 458
    new-instance v0, Lcom/sec/internal/ims/cmstore/CmsModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/CmsModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCmsModule:Lcom/sec/internal/ims/cmstore/CmsModule;

    .line 459
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCmsModule:Lcom/sec/internal/ims/cmstore/CmsModule;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->isStartRequired(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result p2

    if-nez p2, :cond_a4

    if-eqz p1, :cond_ae

    .line 461
    :cond_a4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCmsModule:Lcom/sec/internal/ims/cmstore/CmsModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/CmsModule;->init()V

    .line 462
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCmsModule:Lcom/sec/internal/ims/cmstore/CmsModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CmsModule;->start()V

    :cond_ae
    return-void
.end method

.method public startIMSServiceModules()V
    .registers 7

    const-string v0, "ServiceModuleManager"

    .line 485
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_7
    const-string/jumbo v1, "startServiceModules"

    .line 487
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mStarted:Z

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "startServiceModules() - already started"

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_69

    .line 507
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 494
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 495
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    .line 496
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_39
    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 497
    invoke-direct {p0, v4, v2, v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->isStartRequired(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 498
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    goto :goto_39

    .line 501
    :cond_4f
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    .line 502
    invoke-static {v4, v5, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 501
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_60
    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mStarted:Z
    :try_end_63
    .catchall {:try_start_1d .. :try_end_63} :catchall_69

    .line 507
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_69
    move-exception v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 508
    throw v0
.end method

.method public updateCapabilities(I)V
    .registers 7

    .line 1116
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    .line 1118
    new-instance v2, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-direct {v2, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    .line 1121
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 1122
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-ne v3, v4, :cond_2d

    .line 1123
    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->queryCapabilityStatus(I)Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->getMask()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    goto :goto_11

    .line 1125
    :cond_2d
    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->queryCapabilityStatus(I)Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->getMask()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    goto :goto_11

    .line 1128
    :cond_39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCapabilities to mmTelcapabilities = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rcsCapabilities = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ServiceModuleManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/google/SecImsNotifier;->updateMmTelCapabilities(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 1130
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/google/SecImsNotifier;->updateRcsCapabilities(ILandroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    return-void
.end method
