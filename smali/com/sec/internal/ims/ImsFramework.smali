.class public Lcom/sec/internal/ims/ImsFramework;
.super Ljava/lang/Object;
.source "ImsFramework.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/IImsFramework;


# instance fields
.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 41
    invoke-static {p0}, Lcom/sec/internal/ims/registry/ImsRegistry;->init(Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    return-void
.end method


# virtual methods
.method public enableRcsByPhoneId(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->enableRcsByPhoneId(ZI)V

    return-void
.end method

.method public getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object p0

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

    .line 111
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAllServiceModules()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCallCount(I)[I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCallCount(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    return-object p0
.end method

.method public getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object p0

    return-object p0
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getFcmHandler()Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getFcmHandler()Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;

    move-result-object p0

    return-object p0
.end method

.method public getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object p0

    return-object p0
.end method

.method public getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object p0

    return-object p0
.end method

.method public getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object p0

    return-object p0
.end method

.method public getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    move-result-object p0

    return-object p0
.end method

.method public getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object p0

    return-object p0
.end method

.method public getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object p0

    return-object p0
.end method

.method public getInt(ILjava/lang/String;I)I
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNetworkType(I)I
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getNetworkType(I)I

    move-result p0

    return p0
.end method

.method public getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;

    move-result-object p0

    return-object p0
.end method

.method public getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object p0

    return-object p0
.end method

.method public getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p0

    return-object p0
.end method

.method public getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    move-result-object p0

    return-object p0
.end method

.method public getRcsProfileType(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    return-object p0
.end method

.method public getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    return-object p0
.end method

.method public getSipNotifier()Lcom/sec/internal/interfaces/google/ISipTransportNotifier;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getSipNotifier()Lcom/sec/internal/interfaces/google/ISipTransportNotifier;

    move-result-object p0

    return-object p0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object p0

    return-object p0
.end method

.method public isCrossSimCallingSupportedByPhoneId(I)Z
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isCrossSimCallingSupportedByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isDefaultDmValue(Ljava/lang/String;I)Z
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isDefaultDmValue(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isRcsEnabledByPhoneId(I)Z
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isRcsEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isServiceAvailable(Ljava/lang/String;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public notifyImsReady(ZI)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->notifyImsReady(ZI)V

    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method

.method public sendDeregister(II)V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->sendDeregister(II)V

    return-void
.end method

.method public setDefaultDmValue(Ljava/lang/String;I)Z
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setDefaultDmValue(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setIsimLoaded()V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setIsimLoaded()V

    return-void
.end method

.method public setRttMode(II)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setRttMode(II)V

    return-void
.end method

.method public startAutoConfig(ZLandroid/os/Message;)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->startAutoConfig(ZLandroid/os/Message;)V

    return-void
.end method

.method public suspendRegister(ZI)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->suspendRegister(ZI)V

    return-void
.end method

.method public triggerAutoConfigurationForApp(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->triggerAutoConfigurationForApp(I)V

    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method
