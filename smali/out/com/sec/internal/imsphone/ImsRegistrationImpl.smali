.class public Lcom/sec/internal/imsphone/ImsRegistrationImpl;
.super Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.source "ImsRegistrationImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsRegistrationImpl"


# instance fields
.field private mPhoneId:I

.field private final mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private registrationState:I


# direct methods
.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .registers 3

    .line 41
    invoke-direct {p0, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 p2, 0x0

    .line 37
    iput p2, p0, Lcom/sec/internal/imsphone/ImsRegistrationImpl;->registrationState:I

    .line 42
    iput p1, p0, Lcom/sec/internal/imsphone/ImsRegistrationImpl;->mPhoneId:I

    .line 43
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsRegistrationImpl;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    return-void
.end method


# virtual methods
.method public isRegistered()Z
    .registers 2

    .line 54
    iget p0, p0, Lcom/sec/internal/imsphone/ImsRegistrationImpl;->registrationState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public setNotRegistered()V
    .registers 2

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/sec/internal/imsphone/ImsRegistrationImpl;->registrationState:I

    return-void
.end method

.method public setRegistered()V
    .registers 2

    const/4 v0, 0x2

    .line 48
    iput v0, p0, Lcom/sec/internal/imsphone/ImsRegistrationImpl;->registrationState:I

    return-void
.end method

.method public triggerDeregistration(I)V
    .registers 2

    .line 66
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsRegistrationImpl;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDeregister(I)V

    return-void
.end method

.method public triggerFullNetworkRegistration(ILjava/lang/String;)V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsRegistrationImpl;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsRegistrationImpl;->mPhoneId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestFullNetworkRegistration(IILjava/lang/String;)V

    return-void
.end method

.method public triggerSipDelegateDeregistration()V
    .registers 2

    const-string p0, "ImsRegistrationImpl"

    const-string/jumbo v0, "triggerSipDelegateDeregistration: Postpone the request"

    .line 76
    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateSipDelegateRegistration()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsRegistrationImpl;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsRegistrationImpl;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestUpdateSipDelegateRegistration(I)V

    return-void
.end method
