.class public Lcom/sec/internal/ims/registry/ImsRegistry;
.super Ljava/lang/Object;
.source "ImsRegistry.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsRegistry"

.field private static mIsReady:Z = false

.field private static sImsFrameworkInstance:Lcom/sec/internal/interfaces/ims/IImsFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableRcsByPhoneId(ZI)V
    .locals 2

    .line 215
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->enableRcsByPhoneId(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 217
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

    :goto_0
    return-void
.end method

.method public static getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    .locals 1

    .line 95
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object v0

    return-object v0
.end method

.method public static getAllServiceModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAllServiceModules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .locals 1

    .line 197
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .locals 1

    .line 201
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(ILjava/lang/String;Z)Z
    .locals 1

    .line 145
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getCallCount(I)[I
    .locals 3

    .line 240
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCallCount(I)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 242
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
    .locals 1

    .line 65
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .locals 1

    .line 77
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 1

    .line 157
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 132
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getFcmHandler()Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;
    .locals 1

    .line 116
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getFcmHandler()Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    .locals 1

    .line 104
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    return-object v0
.end method

.method public static getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;
    .locals 1

    .line 85
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    return-object v0
.end method

.method public static getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .locals 1

    .line 81
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
    .locals 1

    .line 112
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v0

    return-object v0
.end method

.method private static getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;
    .locals 1

    .line 52
    sget-object v0, Lcom/sec/internal/ims/registry/ImsRegistry;->sImsFrameworkInstance:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-object v0
.end method

.method public static getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;
    .locals 1

    .line 89
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(ILjava/lang/String;I)I
    .locals 1

    .line 141
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getNetworkType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getNetworkType(I)I

    move-result p0

    return p0
.end method

.method public static getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
    .locals 1

    .line 108
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;

    move-result-object v0

    return-object v0
.end method

.method public static getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;
    .locals 1

    .line 100
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v0

    return-object v0
.end method

.method public static getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 1

    .line 61
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    return-object v0
.end method

.method public static getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;
    .locals 1

    .line 69
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    move-result-object v0

    return-object v0
.end method

.method public static getRcsProfileType(I)Ljava/lang/String;
    .locals 3

    .line 206
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 208
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public static getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 1

    .line 73
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .locals 1

    .line 128
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    return-object v0
.end method

.method public static getSipNotifier()Lcom/sec/internal/interfaces/google/ISipTransportNotifier;
    .locals 1

    .line 92
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getSipNotifier()Lcom/sec/internal/interfaces/google/ISipTransportNotifier;

    move-result-object v0

    return-object v0
.end method

.method public static getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 149
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 153
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;
    .locals 1

    .line 120
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 47
    sput-object p0, Lcom/sec/internal/ims/registry/ImsRegistry;->sImsFrameworkInstance:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 p0, 0x1

    .line 48
    sput-boolean p0, Lcom/sec/internal/ims/registry/ImsRegistry;->mIsReady:Z

    return-void
.end method

.method public static isRcsEnabledByPhoneId(I)Z
    .locals 1

    .line 189
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isRcsEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public static isReady()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/sec/internal/ims/registry/ImsRegistry;->mIsReady:Z

    return v0
.end method

.method public static isServiceAvailable(Ljava/lang/String;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .locals 2

    .line 223
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 225
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
    .locals 3

    .line 170
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 172
    sget-object v0, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerImsRegistrationListener RemoteException do nothing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;

    return-void
.end method

.method public static setRttMode(II)V
    .locals 1

    .line 165
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setRttMode(II)V

    return-void
.end method

.method public static startAutoConfig(ZLandroid/os/Message;)V
    .locals 1

    .line 193
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->startAutoConfig(ZLandroid/os/Message;)V

    return-void
.end method

.method public static triggerAutoConfigurationForApp(I)V
    .locals 3

    .line 232
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->triggerAutoConfigurationForApp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 234
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

    :goto_0
    return-void
.end method

.method public static unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method
