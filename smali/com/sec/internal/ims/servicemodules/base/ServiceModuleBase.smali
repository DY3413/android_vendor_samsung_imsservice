.class public abstract Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.super Landroid/os/Handler;
.source "ServiceModuleBase.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$StoppedState;,
        Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$RunningState;,
        Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$ReadyState;,
        Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$InitialState;
    }
.end annotation


# instance fields
.field protected mActiveDataPhoneId:I

.field protected mEnabledFeatures:[J

.field protected final mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/constants/ims/servicemodules/Registration;",
            ">;"
        }
    .end annotation
.end field

.field mState:Lcom/sec/internal/helper/State;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    new-instance p1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$InitialState;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$InitialState;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mState:Lcom/sec/internal/helper/State;

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    .line 44
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    .line 49
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    const-wide/16 v0, 0x0

    .line 50
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method private updateState(Lcom/sec/internal/helper/State;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mState:Lcom/sec/internal/helper/State;

    if-ne v0, p1, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/helper/State;->exit()V

    .line 273
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mState:Lcom/sec/internal/helper/State;

    .line 274
    invoke-virtual {p1}, Lcom/sec/internal/helper/State;->enter()V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public clearRegistrationList()V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public dump()V
    .locals 0

    return-void
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 113
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public getImsRegistration(I)Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getRegistration(I)Lcom/sec/internal/constants/ims/servicemodules/Registration;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 122
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-ne v1, p2, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRegistration(I)Lcom/sec/internal/constants/ims/servicemodules/Registration;
    .locals 2

    .line 132
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRegistrationInfo()Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRegistrationInfoId(Lcom/sec/ims/ImsRegistration;)I
    .locals 0

    .line 109
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result p0

    return p0
.end method

.method protected getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .locals 0

    .line 305
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFeature(I)J
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public abstract handleIntent(Landroid/content/Intent;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 238
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f40

    if-le v0, v1, :cond_1

    const/16 v1, 0x2327

    if-ne v0, v1, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleModuleChannelRequest(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public handleModuleChannelRequest(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 1

    .line 67
    new-instance v0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$ReadyState;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$ReadyState;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->updateState(Lcom/sec/internal/helper/State;)V

    return-void
.end method

.method public isReady()Z
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mState:Lcom/sec/internal/helper/State;

    instance-of p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$ReadyState;

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mState:Lcom/sec/internal/helper/State;

    instance-of p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$RunningState;

    return p0
.end method

.method public isStopped()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mState:Lcom/sec/internal/helper/State;

    instance-of p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$StoppedState;

    return p0
.end method

.method public onCallStateChanged(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConfigured(I)V
    .locals 0

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 3

    .line 167
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 168
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 169
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    return-void
.end method

.method public onImsConifgChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 0

    return-void
.end method

.method public onReRegistering(ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 145
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 146
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-ne v0, v2, :cond_3

    .line 153
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;-><init>(Lcom/sec/ims/ImsRegistration;Z)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/Registration;-><init>(Lcom/sec/ims/ImsRegistration;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 0

    return-void
.end method

.method public onSimChanged(I)V
    .locals 0

    return-void
.end method

.method public onSimReady(I)V
    .locals 0

    return-void
.end method

.method public queryCapabilityStatus(I)Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 0

    .line 233
    new-instance p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    return-object p0
.end method

.method protected sendModuleResponse(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 1

    .line 255
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "callback_msg"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Message;

    if-eqz p0, :cond_0

    .line 257
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;

    .line 258
    iput p2, p0, Landroid/os/Message;->arg1:I

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object p3, p2, p1

    .line 259
    iput-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 72
    new-instance v0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$RunningState;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$RunningState;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->updateState(Lcom/sec/internal/helper/State;)V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 78
    new-instance v0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$StoppedState;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase$StoppedState;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->updateState(Lcom/sec/internal/helper/State;)V

    return-void
.end method

.method public updateCapabilities(I)V
    .locals 0

    return-void
.end method
