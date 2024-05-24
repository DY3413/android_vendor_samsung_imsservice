.class public Lcom/sec/internal/ims/registry/ImsRegistry;
.super Ljava/lang/Object;
.source "ImsRegistry.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsRegistry"

.field private static mIsReady:Z = false

.field private static sImsFrameworkInstance:Lcom/sec/internal/interfaces/ims/IImsFramework;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableRcsByPhoneId(ZI)V
    .registers 4

    .line 205
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->enableRcsByPhoneId(ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_23

    :catch_8
    move-exception p0

    .line 207
    sget-object p1, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableRcsByPhoneId RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method public static getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    .registers 1

    .line 82
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object v0

    return-object v0
.end method

.method public static getAllServiceModules()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAllServiceModules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .registers 2

    .line 187
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .registers 3

    .line 191
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(ILjava/lang/String;Z)Z
    .registers 4

    .line 135
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getCallCount(I)[I
    .registers 4

    .line 230
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCallCount(I)[I

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 232
    sget-object v0, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallCount RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public static getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .registers 1

    .line 62
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .registers 1

    .line 74
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .registers 3

    .line 147
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 122
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;
    .registers 1

    .line 106
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    .registers 1

    .line 94
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    return-object v0
.end method

.method public static getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .registers 1

    .line 78
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;
    .registers 1

    .line 90
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    return-object v0
.end method

.method public static getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
    .registers 1

    .line 102
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v0

    return-object v0
.end method

.method private static getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;
    .registers 1

    .line 49
    sget-object v0, Lcom/sec/internal/ims/registry/ImsRegistry;->sImsFrameworkInstance:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-object v0
.end method

.method public static getInt(ILjava/lang/String;I)I
    .registers 4

    .line 131
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getNetworkType(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getNetworkType(I)I

    move-result p0

    return p0
.end method

.method public static getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
    .registers 1

    .line 98
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;

    move-result-object v0

    return-object v0
.end method

.method public static getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .registers 1

    .line 58
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    return-object v0
.end method

.method public static getRawSipSender()Lcom/sec/internal/interfaces/ims/core/IRawSipSender;
    .registers 1

    .line 86
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRawSipSender()Lcom/sec/internal/interfaces/ims/core/IRawSipSender;

    move-result-object v0

    return-object v0
.end method

.method public static getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;
    .registers 1

    .line 66
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    move-result-object v0

    return-object v0
.end method

.method public static getRcsProfileType(I)Ljava/lang/String;
    .registers 4

    .line 196
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 198
    sget-object v0, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRcsProfileType RemoteException return empty String : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public static getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public static getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .registers 1

    .line 70
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .registers 1

    .line 118
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    return-object v0
.end method

.method public static getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 139
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 143
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;
    .registers 1

    .line 110
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .registers 1

    .line 44
    sput-object p0, Lcom/sec/internal/ims/registry/ImsRegistry;->sImsFrameworkInstance:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 p0, 0x1

    .line 45
    sput-boolean p0, Lcom/sec/internal/ims/registry/ImsRegistry;->mIsReady:Z

    return-void
.end method

.method public static isRcsEnabledByPhoneId(I)Z
    .registers 2

    .line 179
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isRcsEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public static isReady()Z
    .registers 1

    .line 53
    sget-boolean v0, Lcom/sec/internal/ims/registry/ImsRegistry;->mIsReady:Z

    return v0
.end method

.method public static isServiceAvailable(Ljava/lang/String;II)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .registers 4

    .line 213
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 215
    sget-object p1, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isServiceEnabledByPhoneId RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .registers 4

    .line 160
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_24

    :catch_8
    move-exception p0

    .line 162
    sget-object v0, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerImsRegistrationListener RemoteException do nothing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public static registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;

    return-void
.end method

.method public static setRttMode(II)V
    .registers 3

    .line 155
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setRttMode(II)V

    return-void
.end method

.method public static startAutoConfig(ZLandroid/os/Message;)V
    .registers 3

    .line 183
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->startAutoConfig(ZLandroid/os/Message;)V

    return-void
.end method

.method public static triggerAutoConfigurationForApp(I)V
    .registers 4

    .line 222
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->triggerAutoConfigurationForApp(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_24

    :catch_8
    move-exception p0

    .line 224
    sget-object v0, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerAutoConfigurationForApp RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public static unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method
