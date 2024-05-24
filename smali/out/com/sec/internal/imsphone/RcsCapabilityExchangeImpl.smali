.class public Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;
.super Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
.source "RcsCapabilityExchangeImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 21
    invoke-direct {p0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;-><init>()V

    .line 22
    iput p1, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    .line 23
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 24
    sget-object p1, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    const-string v0, "create RcsCapabilityExchangeImpl"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .registers 7

    if-nez p2, :cond_d

    .line 30
    sget-object p1, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    const-string/jumbo p2, "publishCapabilities: callback is null"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 34
    :cond_d
    sget-object v0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    const-string/jumbo v2, "publishCapabilities"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "publishCapabilities: failed: "

    if-eqz v1, :cond_41

    const/4 p1, 0x2

    .line 37
    :try_start_21
    invoke-interface {p2, p1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;->onCommandError(I)V
    :try_end_24
    .catch Landroid/telephony/ims/ImsException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_40

    :catch_25
    move-exception p1

    .line 39
    sget-object p2, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_40
    return-void

    .line 44
    :cond_41
    iget-object v1, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    if-nez v1, :cond_57

    .line 45
    iget v1, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    const-string/jumbo v3, "publishCapabilities : mCapabilityDisModule is null"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 49
    :cond_57
    iget-object v0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    if-eqz v0, :cond_61

    .line 50
    iget p0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;I)V

    goto :goto_82

    :cond_61
    const/16 p1, 0x9

    .line 53
    :try_start_63
    invoke-interface {p2, p1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;->onCommandError(I)V
    :try_end_66
    .catch Landroid/telephony/ims/ImsException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_82

    :catch_67
    move-exception p1

    .line 55
    sget-object p2, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_82
    return-void
.end method

.method public sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_d

    .line 96
    sget-object p1, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    const-string/jumbo p2, "sendOptionsCapabilityRequest: callback is null"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 100
    :cond_d
    sget-object v0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    const-string/jumbo v2, "sendOptionsCapabilityRequest"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 103
    iget-object v0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    iget p0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    invoke-interface {v0, p1, p2, p3, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;I)V

    goto :goto_4a

    :cond_29
    const/16 p0, 0x9

    .line 106
    :try_start_2b
    invoke-interface {p3, p0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;->onCommandError(I)V
    :try_end_2e
    .catch Landroid/telephony/ims/ImsException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_4a

    :catch_2f
    move-exception p0

    .line 108
    sget-object p1, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCommandError: failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4a
    return-void
.end method

.method public subscribeForCapabilities(Ljava/util/Collection;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_d

    .line 63
    sget-object p1, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    const-string/jumbo p2, "subscribeForCapabilities: callback is null"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 67
    :cond_d
    sget-object v0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    const-string/jumbo v2, "subscribeForCapabilities"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "subscribeForCapabilities: failed: "

    if-nez p1, :cond_3d

    const/4 p1, 0x2

    .line 70
    :try_start_1d
    invoke-interface {p2, p1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onCommandError(I)V
    :try_end_20
    .catch Landroid/telephony/ims/ImsException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_3c

    :catch_21
    move-exception p1

    .line 72
    sget-object p2, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_3c
    return-void

    .line 77
    :cond_3d
    iget-object v2, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    if-nez v2, :cond_53

    .line 78
    iget v2, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    const-string/jumbo v3, "subscribeForCapabilities : mCapabilityDisModule is null"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 82
    :cond_53
    iget-object v0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    if-eqz v0, :cond_5d

    .line 83
    iget p0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->subscribeForCapabilities(Ljava/util/Collection;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;I)V

    goto :goto_7e

    :cond_5d
    const/16 p1, 0x9

    .line 86
    :try_start_5f
    invoke-interface {p2, p1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onCommandError(I)V
    :try_end_62
    .catch Landroid/telephony/ims/ImsException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_7e

    :catch_63
    move-exception p1

    .line 88
    sget-object p2, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_7e
    return-void
.end method
