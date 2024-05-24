.class public Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;
.super Landroid/os/Handler;
.source "CmsServiceModuleManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCmsModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;


# instance fields
.field mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

.field mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->mCmsModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V
    .registers 4

    .line 54
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 56
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    return-void
.end method

.method public static getInstance(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .registers 3

    .line 45
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->mCmsModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    if-nez v0, :cond_b

    .line 46
    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;-><init>(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->mCmsModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    .line 49
    :cond_b
    sget-object p0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->mCmsModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    return-object p0
.end method


# virtual methods
.method public checkRcsServiceModules(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;I)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public cleanUpModules()V
    .registers 1

    .line 0
    return-void
.end method

.method public forceCallOnServiceSwitched(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCmsModule()Lcom/sec/internal/interfaces/ims/cmstore/ICmsModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEucModule()Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGbaServiceModule()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    return-object p0
.end method

.method public getGlsModule()Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageShareModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImsStatusServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IImsStatusServiceModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOpenApiServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IOpenApiServiceModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOptionsModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/IOptionsModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPresenceModule()Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getQuantumEncryptionServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceModuleHandler(Ljava/lang/String;)Landroid/os/Handler;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessionModule()Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTapiServiceManager()Lcom/sec/internal/ims/servicemodules/tapi/service/api/interfaces/ITapiServiceManager;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoShareModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initSequentially()V
    .registers 1

    .line 0
    return-void
.end method

.method public isLooperExist()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyAutoConfigDone(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public notifyConfigured(ZI)V
    .registers 3

    .line 0
    return-void
.end method

.method public notifyDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .registers 2

    .line 0
    return-void
.end method

.method public notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZI)V
    .registers 4

    .line 0
    return-void
.end method

.method public notifyImsSwitchUpdateToApp()V
    .registers 1

    .line 0
    return-void
.end method

.method public notifyNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public notifyOmadmVolteConfigDone(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public notifyRcsDeregistering(Ljava/util/Set;Lcom/sec/ims/ImsRegistration;)V
    .registers 3
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

    .line 0
    return-void
.end method

.method public notifyReRegistering(ILjava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public notifySimChange(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onImsSwitchUpdated(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public serviceStartDeterminer(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;I)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public updateCapabilities(I)V
    .registers 2

    .line 0
    return-void
.end method
