.class public Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;
.super Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
.source "VolteServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method public static synthetic $r8$lambda$2TAtfI-YIpSecsSi3R-goDDeBEc(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->lambda$handleMessage$0(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3B8IqXj_WB9l3yErK2eLzpsJEpY(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->lambda$handleMessage$1(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;)V
    .locals 0

    .line 115
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;)V

    return-void
.end method

.method private getEmergencyUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1

    .line 1043
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xf

    .line 1046
    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRegInfo(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;
    .locals 3

    if-nez p1, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 621
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 622
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 625
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method private handleDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 5

    .line 482
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 483
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;->disconnectToSve()V

    .line 489
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 490
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v3, v4, p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->handleDeregistered(Landroid/content/Context;IILcom/sec/internal/constants/Mno;)V

    .line 493
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    const-string v2, " with handle "

    if-eqz v1, :cond_4

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deregistered emergency profile = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency Deregistered reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_3

    .line 499
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_1

    const/16 v1, 0x646

    if-eq p2, v1, :cond_1

    const-string p1, "Do not stopEmergencyRegistration It\'s ATT and error Code is not 200 nor 1606"

    .line 501
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "Do not stopEmergencyRegistration It\'s ATT and error Code is not 200"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    return-void

    .line 507
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p2, v1, :cond_2

    .line 508
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p2

    const/16 v1, 0xb

    if-ne p2, v1, :cond_2

    const-string p0, "TMO_E911, deregReason is MOVE_NEXT_PCSCF, just return"

    .line 509
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 512
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    :cond_3
    return-void

    .line 516
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deregistered from VOLTE service. reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 520
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deregistered reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 523
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    .line 524
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(II)I

    move-result p2

    if-lez p2, :cond_5

    .line 525
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p2

    if-ne p2, v1, :cond_5

    .line 526
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 528
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->endCallByDeregistered(Lcom/sec/ims/ImsRegistration;)V

    .line 530
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->clearDialogList(II)V

    :cond_6
    return-void
.end method

.method private handleDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 5

    .line 446
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 448
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeregistering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    .line 452
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_0

    .line 453
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    const-string p0, "TMO_E911, deregReason is MOVE_NEXT_PCSCF, just return"

    .line 454
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    .line 459
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 460
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    .line 461
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(II)I

    move-result v0

    if-lez v0, :cond_1

    .line 462
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->endCallByDeregistered(Lcom/sec/ims/ImsRegistration;)V

    .line 467
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->clearDialogList(II)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$handleMessage$0(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1432
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Z)V

    return-void
.end method

.method private synthetic lambda$handleMessage$1(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 0

    .line 1448
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    return-void
.end method

.method private onCallSessionEnded(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/Mno;)V
    .locals 6

    .line 1325
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    .line 1326
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call End - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") Reason("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), Error("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1326
    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 1334
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallEnded: callType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isEmergency: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_2

    if-eqz v2, :cond_2

    .line 1336
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isEpdnRequestPending(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "EPDN request is still pending, need to stop EPDN to avoid retry"

    .line 1337
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyPdnOnly(I)V

    .line 1343
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ENDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    invoke-virtual {p2, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1346
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1347
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasActiveCall(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1348
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 1349
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p2

    .line 1348
    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1351
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const/4 v2, 0x0

    .line 1353
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v4

    .line 1351
    invoke-interface {p2, v0, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 1357
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1358
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getTotalCallCount(I)I

    move-result p2

    if-nez p2, :cond_4

    .line 1359
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/sec/ims/extensions/WiFiManagerExt;->setImsCallEstablished(Landroid/content/Context;Z)V

    .line 1362
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1363
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result p2

    const/16 v0, 0x1777

    if-ne p2, v0, :cond_7

    .line 1364
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result p2

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call end due to call pull from SD to PD. bound session id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_6

    .line 1368
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1370
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRelayChTerminated()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Relay ch already terminated. Start audio here"

    .line 1371
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    const/4 v0, 0x4

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateAudioInterface(II)V

    goto :goto_2

    :cond_5
    const-string v0, "Relay ch not terminated yet. Delay start audio"

    .line 1374
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x23

    const/4 v1, -0x1

    .line 1375
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    invoke-virtual {p0, v0, v1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_6
    const-string p0, "Ext session is CS"

    .line 1379
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1385
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p0

    if-nez p0, :cond_8

    .line 1386
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->stopP2p()V

    :cond_8
    return-void
.end method

.method private onCallStatusChange(II)V
    .locals 2

    .line 830
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 833
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    goto :goto_0

    .line 835
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 838
    :goto_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_1

    .line 840
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 844
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz p0, :cond_2

    .line 845
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateTelephonyCallStatus(II)V

    .line 847
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 849
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->updateTelephonyCallStatus(II)V

    .line 851
    :cond_3
    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->updateTelephonyCallStatus(II)V

    return-void
.end method

.method private onDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V
    .locals 3

    .line 1600
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1601
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BikeMode Active - Dtmf Val = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->getEvent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ims.DTMF_RX_DIGI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->getEvent()I

    move-result p1

    const-string v1, "dtmf_digit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.android.app.bikemode"

    .line 1605
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1606
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1608
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Bike Mode is disabled discarding event"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onEcbmStateChanged(IZ)V
    .locals 3

    .line 918
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEcbmStateChanged: ecbm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " oldEcbm["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    aget-boolean v1, v0, p1

    .line 920
    aput-boolean p2, v0, p1

    .line 921
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    aget-boolean v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x3000001b

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 923
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    aget-boolean p2, p2, p1

    if-nez p2, :cond_0

    if-eqz v1, :cond_0

    .line 930
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    :cond_0
    return-void
.end method

.method private onEventSimReady(I)V
    .locals 3

    .line 176
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventSimReady<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeature(I)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerAllowedNetworkTypesListener(I)V

    .line 180
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateIntentBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    if-eqz v1, :cond_3

    .line 181
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 182
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/constants/Mno;->equalsWithSalesCode(Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    .line 183
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/constants/Mno;->equalsWithSalesCode(Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 184
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EcholocateBroadcaster: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 186
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateIntentBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->start()V

    goto :goto_2

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateIntentBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->stop()V

    .line 191
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    if-eqz p1, :cond_5

    .line 192
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->isXqEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 193
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    invoke-virtual {p0}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->start()V

    goto :goto_3

    .line 195
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    invoke-virtual {p0}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->stop()V

    :cond_5
    :goto_3
    return-void
.end method

.method private onIQIServiceStateChanged(IZ)V
    .locals 3

    .line 1720
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXqServiceStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1721
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 1722
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->isXqEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1724
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    invoke-virtual {p2}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->start()V

    goto :goto_1

    .line 1726
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    invoke-virtual {p2}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->stop()V

    .line 1728
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    if-eqz p2, :cond_2

    .line 1729
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-interface {p2, p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateXqEnable(IZ)V

    :cond_2
    return-void
.end method

.method private onImsCallEventForState(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 3

    .line 1237
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE:[I

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1252
    :pswitch_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne p1, v0, :cond_0

    .line 1253
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1255
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->clearDialogList(II)V

    goto :goto_1

    .line 1245
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onImsCallEventWithHeldBoth(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 1239
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onImsCallEventForEstablish(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    :goto_0
    const/4 v1, 0x1

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 1266
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onImsDialogEvent(Lcom/sec/ims/DialogEvent;)V
    .locals 6

    if-nez p1, :cond_0

    .line 856
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ignoring dialog list is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 861
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getRegInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 862
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 863
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 864
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_6

    .line 865
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/Dialog;

    .line 866
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->isExclusive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 868
    invoke-virtual {v4, v1}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 869
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Exclusive call can\'t pulling"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 870
    :cond_1
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 872
    invoke-virtual {v4, v1}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 873
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Held call can\'t pulling"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 874
    :cond_2
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->isVideoPortZero()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 875
    invoke-virtual {v4, v2}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 876
    invoke-virtual {v4, v2}, Lcom/sec/ims/Dialog;->setCallType(I)V

    .line 877
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Downgraded video call can pulling and change callType to Voice"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 878
    :cond_3
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 879
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getVideoDirection()I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 881
    invoke-virtual {v4, v1}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 882
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Backgrounded Video call can\'t pulling"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 883
    :cond_4
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "mmtel-video"

    .line 884
    invoke-virtual {v0, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 886
    invoke-virtual {v4, v1}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 887
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "video call can\'t pulling with video feature"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 889
    :cond_5
    invoke-virtual {v4, v2}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    goto :goto_0

    .line 894
    :cond_6
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 895
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Ignore DialogEvent"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 897
    :cond_7
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 898
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v3, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCmcImsDialogEvent(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;

    move-result-object p1

    .line 899
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 900
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    .line 901
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isP2pDiscoveryDone()Z

    move-result v0

    if-nez v0, :cond_8

    .line 902
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Do not notify dialog event until P2P discovery done"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->setNeedToNotifyAfterP2pDiscovery(Z)V

    goto :goto_1

    :cond_8
    move v1, v2

    .line 909
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v2

    aput-object p1, v0, v2

    if-eqz v1, :cond_9

    .line 911
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 912
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/google/IImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 913
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last Notified Dialog Event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private onReleaseWfcBeforeHO(I)V
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onReleaseWfcBeforeHO(I)V

    .line 1190
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mReleaseWfcBeforeHO:[Z

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    return-void
.end method

.method private onSreenOnOffChanged(I)V
    .locals 3

    .line 936
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSreenOnOffChanged: on ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    if-eqz v0, :cond_0

    .line 939
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateScreenOnOff(II)V

    :cond_0
    return-void
.end method

.method private declared-synchronized onTextInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V
    .locals 2

    monitor-enter p0

    .line 1614
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnRttEvent(ILcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onUpdateSSACInfo(ILandroid/telephony/BarringInfo;)V
    .locals 15

    move-object/from16 v0, p2

    const/4 v1, 0x6

    .line 959
    invoke-virtual {v0, v1}, Landroid/telephony/BarringInfo;->getBarringServiceInfo(I)Landroid/telephony/BarringInfo$BarringServiceInfo;

    move-result-object v1

    const/4 v2, 0x7

    .line 960
    invoke-virtual {v0, v2}, Landroid/telephony/BarringInfo;->getBarringServiceInfo(I)Landroid/telephony/BarringInfo$BarringServiceInfo;

    move-result-object v0

    .line 961
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "voiceBarringInfo mConditionalBarringFactor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringFactor()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mConditionalBarringTimeSeconds:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    invoke-virtual {v1}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringTimeSeconds()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 961
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "videoBarringInfo mConditionalBarringFactor:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringFactor()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {v0}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringTimeSeconds()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 963
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-virtual {v1}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getBarringType()I

    move-result v2

    .line 968
    invoke-virtual {v0}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getBarringType()I

    move-result v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    .line 971
    invoke-virtual {v1}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringFactor()I

    move-result v7

    .line 972
    invoke-virtual {v1}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringTimeSeconds()I

    move-result v1

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v4

    move v1, v5

    :goto_0
    if-ne v3, v6, :cond_1

    .line 975
    invoke-virtual {v0}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringFactor()I

    move-result v4

    .line 976
    invoke-virtual {v0}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringTimeSeconds()I

    move-result v0

    move v12, v4

    goto :goto_1

    :cond_1
    move v12, v4

    move v0, v5

    :goto_1
    const/4 v4, 0x2

    if-eq v2, v6, :cond_3

    if-ne v2, v4, :cond_2

    goto :goto_2

    :cond_2
    move v11, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v6

    :goto_3
    if-eq v3, v6, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_4

    :cond_4
    move v14, v5

    goto :goto_5

    :cond_5
    :goto_4
    move v14, v6

    :goto_5
    mul-int/lit16 v10, v1, 0x3e8

    mul-int/lit16 v13, v0, 0x3e8

    move-object v7, p0

    move/from16 v8, p1

    .line 981
    invoke-direct/range {v7 .. v14}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateSSACInfo(IIIZIIZ)I

    return-void
.end method

.method private sendAudioCodecInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1804
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ims.imsservice.handler.secims.audio_info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "IS_ENDCALL"

    .line 1805
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "CODEC_NAME"

    .line 1806
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "BIT_RATE"

    .line 1807
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1808
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private tryDisconnect(II)V
    .locals 7

    .line 548
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 550
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryDisconnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 553
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 554
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    const-string/jumbo v5, "to do nothing"

    if-eqz v4, :cond_0

    .line 555
    invoke-static {v0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 557
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 559
    :cond_0
    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 563
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 568
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasActiveCall(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v3, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo p0, "to do nothing - Continue Wifi call"

    .line 569
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 573
    :cond_2
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isMultiPdnRat(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 574
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_3

    const-string p1, "isSuspended(), waited enough..."

    .line 576
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "isSuspended(), retrying..."

    .line 578
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    mul-int/lit8 v1, p1, 0x2

    .line 579
    invoke-virtual {p0, v0, v1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    int-to-long v0, p1

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 584
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRatChanged:[Z

    const/4 v0, 0x1

    aput-boolean v0, p1, p2

    .line 585
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->endcallByNwHandover(Lcom/sec/ims/ImsRegistration;)V

    :cond_5
    return-void
.end method

.method private updateFeature(I)V
    .locals 9

    .line 241
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, p1

    .line 244
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeatureMmtel(I)V

    .line 245
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeatureMmtelVideo(I)V

    .line 248
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getComposerAuthValue(ILandroid/content/Context;)I

    move-result v1

    .line 249
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getVBCAuthValue(ILandroid/content/Context;)I

    move-result v2

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "composerAuthVal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "vbcAuthVal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 253
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v1, v6, :cond_1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v5

    :goto_1
    if-ne v2, v5, :cond_2

    move v4, v5

    .line 260
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const-string v6, "add MMTEL Composer feature"

    const-string v7, "mmtel-call-composer"

    const-string v8, "do not add MMTEL Composer feature"

    if-ne v3, v2, :cond_5

    if-nez v1, :cond_3

    if-eqz v4, :cond_4

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v1, v0, p1

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    goto :goto_2

    .line 267
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 269
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v1, v0, p1

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    goto :goto_2

    .line 274
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update Feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    return-void
.end method

.method private updateFeatureMmtel(I)V
    .locals 7

    .line 280
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 281
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v1

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/sec/internal/constants/Mno;

    .line 283
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v3, v2, p1

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    goto :goto_0

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const-string v3, "mmtel"

    invoke-static {v2, v3, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    .line 286
    invoke-static {v2, v3, v4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v3, v2, p1

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 290
    :cond_1
    :goto_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    .line 292
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v2, v1, p1

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v4, v4

    or-long/2addr v2, v4

    aput-wide v2, v1, p1

    .line 304
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v1, v0, p1

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v3, v3

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 310
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isCmcEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 311
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v0, p0, p1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    aput-wide v0, p0, p1

    :cond_5
    return-void
.end method

.method private updateFeatureMmtelVideo(I)V
    .locals 6

    .line 316
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    .line 318
    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVolteSettingEnabled()Z

    move-result v0

    .line 320
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVolteServiceStatus()Z

    move-result v1

    .line 321
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isLTEDataModeEnabled(I)Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v1, v0, p1

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v4, v4

    or-long/2addr v1, v4

    aput-wide v1, v0, p1

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const-string v1, "mmtel-video"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    .line 328
    invoke-static {v0, v1, v3, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v0, p0, p1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    aput-wide v0, p0, p1

    :cond_1
    return-void
.end method

.method private updateSSACInfo(IIIZIIZ)I
    .locals 8

    .line 950
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    if-nez v0, :cond_0

    .line 951
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mSsacManager was not exist!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 953
    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->updateSSACInfo(IIIZIIZ)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public consultativeTransferCall(II)V
    .locals 3

    .line 1103
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1104
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    const-string v2, ") is invalid"

    if-nez v0, :cond_0

    .line 1106
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fgCallId("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 1110
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bgCallId("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1113
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p1

    .line 1114
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    .line 1115
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->consultativeTransferCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public createCallProfile(II)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 0

    .line 596
    new-instance p0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 597
    invoke-virtual {p0, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    return-object p0
.end method

.method public bridge synthetic createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, v1, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getRegInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public deRegisterForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->deRegisterForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V

    return-void
.end method

.method public deregisterForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->deregisterForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void
.end method

.method public deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1

    .line 744
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->deregisterForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void
.end method

.method public enableCallWaitingRule(Z)V
    .locals 0

    .line 1068
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEnableCallWaitingRule:Z

    return-void
.end method

.method public getActiveImpu()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 1177
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getActiveImpu(I)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0
.end method

.method public getActiveImpu(I)Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 1181
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1185
    :cond_0
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getAutomaticMode()Z
    .locals 1

    .line 662
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getAutomaticMode(I)Z

    move-result p0

    return p0
.end method

.method public getAutomaticMode(I)Z
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAutomaticMode:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 0

    .line 1773
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCmcMediaController()Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;
    .locals 0

    .line 684
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    return-object p0
.end method

.method public getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    return-object p0
.end method

.method public bridge synthetic getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getExtMoCall()Z
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getExtMoCall()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getForegroundSession()Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0

    .line 112
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getForegroundSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getImsCallInfos(I)[Lcom/sec/ims/volte2/data/ImsCallInfo;
    .locals 16

    .line 1735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1736
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionList(I)Ljava/util/List;

    move-result-object v1

    .line 1737
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1738
    new-instance v15, Lcom/sec/ims/volte2/data/ImsCallInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v4

    .line 1739
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    .line 1740
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedVideoCall()Z

    move-result v6

    .line 1741
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedAtEstablish()Z

    move-result v7

    const/4 v3, 0x1

    .line 1742
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDedicatedBearerState(I)I

    move-result v8

    const/4 v3, 0x2

    .line 1743
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDedicatedBearerState(I)I

    move-result v9

    const/16 v3, 0x8

    .line 1744
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDedicatedBearerState(I)I

    move-result v10

    .line 1745
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result v11

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorMessage()Ljava/lang/String;

    move-result-object v12

    .line 1746
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v13

    .line 1747
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v14

    .line 1748
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v2

    move-object v3, v15

    move-object/from16 p0, v1

    move-object v1, v15

    move v15, v2

    invoke-direct/range {v3 .. v15}, Lcom/sec/ims/volte2/data/ImsCallInfo;-><init>(IIZZIIIILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1749
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    goto :goto_0

    .line 1751
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sec/ims/volte2/data/ImsCallInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/volte2/data/ImsCallInfo;

    return-object v0
.end method

.method public getImsMediaController()Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    return-object p0
.end method

.method public getIncomingSessionPhoneIdForCmc()I
    .locals 0

    .line 1795
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getIncomingSessionPhoneIdForCmc()I

    move-result p0

    return p0
.end method

.method public getLastDialogEvent()Lcom/sec/ims/DialogEvent;
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;
    .locals 0

    .line 1086
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getNormalizedUri(ILjava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 3

    .line 1689
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(ILcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1691
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getNormalizedUri: FATAL - no UriGenerator found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1695
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1697
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNormalizedUri: invalid msisdn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1701
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-nez p0, :cond_2

    .line 1703
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getNormalizedUri: not registered!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1707
    :cond_2
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p0

    .line 1709
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/util/NameAddr;

    .line 1710
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    .line 1711
    invoke-virtual {v2, p2}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1712
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public getParticipantIdForMerge(II)I
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getParticipantIdForMerge(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getPendingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getPendingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 689
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPendingSession: callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 693
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 697
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getRegInfo(I)Lcom/sec/ims/ImsRegistration;
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 608
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 609
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRegInfo: found regId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 613
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public getRttMode()I
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    aget p0, v0, p0

    return p0
.end method

.method public getRttMode(I)I
    .locals 0

    .line 799
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget p0, p0, p1

    return p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 3

    const-string p0, "mmtel"

    const-string v0, "mmtel-video"

    const-string v1, "mmtel-call-composer"

    const-string v2, "cdpn"

    .line 156
    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getSignalLevel()I
    .locals 1

    .line 1672
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSignalLevel(I)I

    move-result p0

    return p0
.end method

.method public getSignalLevel(I)I
    .locals 0

    .line 1676
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->getSignalLevel(I)I

    move-result p0

    return p0
.end method

.method public getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTtyMode()I
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    aget p0, v0, p0

    return p0
.end method

.method public getTtyMode(I)I
    .locals 0

    .line 777
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget p0, p0, p1

    return p0
.end method

.method public getVoWIFIEmergencyCallRat(I)I
    .locals 2

    .line 1755
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getEmergencySession()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1756
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 1759
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoWIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x12

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1419
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCheckRunningState:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1420
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCheckRunningState:Z

    .line 1421
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1422
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolteServiceModule not ready, retransmitting event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1425
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 1427
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 1577
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/BarringInfo;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onUpdateSSACInfo(ILandroid/telephony/BarringInfo;)V

    goto/16 :goto_3

    .line 1485
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onUssdEndByCS(I)V

    goto/16 :goto_3

    .line 1581
    :pswitch_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delay audio engine timer expired. Start now. phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateAudioInterface(II)V

    goto/16 :goto_3

    .line 1563
    :pswitch_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Removed Call State set to Idle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1565
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onCallStatusChange(II)V

    .line 1566
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerMissedSmsReceiver(ZI)V

    goto/16 :goto_3

    .line 1570
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1571
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1572
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onEventSimReady(I)V

    .line 1573
    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerMissedSmsReceiver(ZI)V

    goto/16 :goto_3

    .line 1559
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getActiveDataPhoneId()I

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onIQIServiceStateChanged(IZ)V

    goto/16 :goto_3

    .line 1554
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onSrvccStateChange(II)V

    goto/16 :goto_3

    .line 1546
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onActiveDataSubscriptionChanged()V

    goto/16 :goto_3

    .line 1541
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1542
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSIPMSGInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;)V

    goto/16 :goto_3

    .line 1536
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1537
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V

    goto/16 :goto_3

    .line 1532
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onSreenOnOffChanged(I)V

    goto/16 :goto_3

    .line 1461
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1462
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onTextInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V

    goto/16 :goto_3

    .line 1528
    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onConfigUpdated(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1550
    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onReleaseWfcBeforeHO(I)V

    goto/16 :goto_3

    .line 1524
    :pswitch_f
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->handleEpdnSetupFail(I)V

    goto/16 :goto_3

    .line 1519
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1520
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onRtpLossRateNoti(Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    goto/16 :goto_3

    .line 1456
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1457
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V

    goto/16 :goto_3

    .line 1497
    :pswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionCount(I)I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasEmergencyCall(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1498
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isEmergencyRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1499
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    goto/16 :goto_3

    .line 1501
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyPdnOnly(I)V

    goto/16 :goto_3

    .line 1515
    :pswitch_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/DialogEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsDialogEvent(Lcom/sec/ims/DialogEvent;)V

    goto/16 :goto_3

    .line 1511
    :pswitch_14
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onPSBarred(Z)V

    goto/16 :goto_3

    .line 1507
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->handleDeregistering(Lcom/sec/ims/ImsRegistration;)V

    goto/16 :goto_3

    .line 1493
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->handleDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    goto/16 :goto_3

    .line 1489
    :pswitch_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Z)V

    goto :goto_3

    .line 1481
    :pswitch_18
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onCallEndByCS(I)V

    goto :goto_3

    .line 1477
    :pswitch_19
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->tryDisconnect(II)V

    goto :goto_3

    .line 1472
    :pswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1473
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V

    goto :goto_3

    .line 1466
    :pswitch_1b
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1467
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onEcbmStateChanged(IZ)V

    goto :goto_3

    .line 1452
    :pswitch_1c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onCallStatusChange(II)V

    goto :goto_3

    .line 1436
    :pswitch_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1437
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/DialogEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsDialogEvent(Lcom/sec/ims/DialogEvent;)V

    goto :goto_3

    .line 1441
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1447
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 1448
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 1429
    :pswitch_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1431
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    .line 1432
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hasPendingCall(I)Z
    .locals 0

    .line 1813
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasPendingCall(I)Z

    move-result p0

    return p0
.end method

.method public isCallBarredBySSAC(II)Z
    .locals 3

    .line 1072
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1075
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->isCallBarred(II)Z

    move-result p0

    .line 1076
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallBarredBySSAC["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]: result for call type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isDsdaVtOnOtherSlot(I)Z
    .locals 0

    .line 1800
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isDsdaVtOnOtherSlot(I)Z

    move-result p0

    return p0
.end method

.method public isProhibited(I)Z
    .locals 0

    .line 1271
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mProhibited:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public isRttCall(I)Z
    .locals 0

    .line 781
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isRttCall(I)Z

    move-result p0

    return p0
.end method

.method public isVolteRetryRequired(IILcom/sec/ims/util/SipError;)Z
    .locals 1

    const/16 v0, 0xa

    .line 1619
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVolteRetryRequired(IILcom/sec/ims/util/SipError;I)Z

    move-result p0

    return p0
.end method

.method public isVolteRetryRequired(IILcom/sec/ims/util/SipError;I)Z
    .locals 6

    const/4 p4, 0x0

    if-nez p3, :cond_0

    .line 1625
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SipError was null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isSilentRedialEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1630
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isSilentRedialEnabled was false!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 1634
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1636
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    goto :goto_0

    .line 1637
    :cond_2
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    :goto_0
    :try_start_0
    const-string v1, "all_volte_retry_error_code_list"

    const/4 v2, 0x0

    .line 1643
    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1645
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "all_volte_retry_error_code_list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1645
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    .line 1650
    :try_start_1
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string/jumbo p2, "video_volte_retry_error_code_list"

    .line 1652
    invoke-static {p1, p2, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video_volte_retry_error_code_list "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1654
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p3

    invoke-virtual {v2, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v1, p4

    .line 1662
    :catch_1
    :cond_3
    :goto_1
    sget-object p2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, p2, :cond_4

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEmcBsIndication(I)Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    if-eq p0, p1, :cond_4

    .line 1663
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "do not volte retry under eb not supported N/W"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move p4, v1

    :goto_2
    return p4
.end method

.method public isVolteServiceStatus()Z
    .locals 1

    .line 201
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVolteServiceStatus(I)Z

    move-result p0

    return p0
.end method

.method public isVolteServiceStatus(I)Z
    .locals 2

    .line 207
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 209
    invoke-static {p0, v0, p1}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isVolteServiceStatus()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 213
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolteServiceStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isVolteSupportECT()Z
    .locals 1

    .line 219
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVolteSupportECT(I)Z

    move-result p0

    return p0
.end method

.method public isVolteSupportECT(I)Z
    .locals 2

    .line 225
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 227
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSupportEct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasEmergencyCall(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 230
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Has emergenacy call"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 236
    :goto_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVolteSupportECT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public notifyOnCmcRecordingEvent(IIII)V
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnCmcRecordingEvent(III)V

    .line 1130
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->forwardCmcRecordingEventToSD(IIII)V

    return-void
.end method

.method public notifyOnCmcRelayEvent(III)V
    .locals 3

    .line 1135
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnCmcRelayEvent event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " intSessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x23

    .line 1138
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x4

    .line 1141
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateAudioInterface(II)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-le p2, p1, :cond_1

    if-le p3, p1, :cond_1

    .line 1144
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1146
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setRelayChTerminated(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyOnPulling(II)V
    .locals 0

    .line 1125
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnPulling(II)V

    return-void
.end method

.method public onCallEnded(III)V
    .locals 4

    .line 1280
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallEnded["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1282
    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    .line 1283
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasEmergencyCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1284
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isEmergencyRegistered(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x493e0

    .line 1285
    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->startEpdnDisconnectTimer(IJ)V

    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    const/16 v2, 0x38f

    if-eq p3, v2, :cond_1

    if-eqz p3, :cond_1

    const-string p3, "Stack Return -1 release all session in F/W layer"

    .line 1289
    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->releaseAllSession(I)V

    .line 1294
    :cond_1
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCallEndedWithSendPublish(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1296
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->removeSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 1299
    invoke-direct {p0, p3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onCallSessionEnded(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/Mno;)V

    .line 1302
    :cond_2
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mReleaseWfcBeforeHO:[Z

    aget-boolean p3, p3, p1

    if-eqz p3, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionCount(I)I

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "All calls are release before HO, trigger HO to EPDG"

    .line 1303
    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->isEpdgServiceConnected()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1305
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->getEpdgMgr()Lcom/sec/epdg/EpdgManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/sec/epdg/EpdgManager;->triggerHOAfterReleaseCall(I)Z

    .line 1307
    :cond_3
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mReleaseWfcBeforeHO:[Z

    const/4 v0, 0x0

    aput-boolean v0, p3, p1

    .line 1310
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1312
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 1313
    sget-object p3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p1, p3, :cond_5

    .line 1316
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->startCameraForActiveExcept(I)V

    .line 1321
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onCallEnded()V

    return-void
.end method

.method public onConferenceParticipantAdded(ILjava/lang/String;)V
    .locals 3

    .line 1392
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceParticipantAdded: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1394
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_ADDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    const/4 v1, 0x0

    .line 1396
    invoke-virtual {v0, p2, v1, v1, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    .line 1397
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    :cond_0
    return-void
.end method

.method public onConferenceParticipantRemoved(ILjava/lang/String;)V
    .locals 3

    .line 1402
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceParticipantRemoved: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1404
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_REMOVED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    const/4 v1, 0x0

    .line 1406
    invoke-virtual {v0, p2, v1, v1, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    .line 1407
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    :cond_0
    return-void
.end method

.method protected onConfigUpdated(ILjava/lang/String;)V
    .locals 3

    .line 1591
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigUpdated["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VOLTE_ENABLED"

    .line 1593
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LVC_ENABLED"

    .line 1594
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x0

    .line 1595
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onServiceSwitched(ILandroid/content/ContentValues;)V

    :cond_1
    return-void
.end method

.method public onConfigured(I)V
    .locals 2

    .line 166
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onConfigured:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeature(I)V

    return-void
.end method

.method protected onDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V
    .locals 4

    .line 1153
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1155
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDedicatedBearerEvent: unknown session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerSessionId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1158
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getQci()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setDedicatedBearerState(II)V

    .line 1160
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDedicatedBearerEvent: received for session : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,bearer state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,qci : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getQci()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1160
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->onDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2

    .line 473
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3000000d

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 476
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastRegiErrorCode:[I

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    aput p2, v0, v1

    const/16 v0, 0xc

    .line 477
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 478
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 439
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    const/16 v0, 0xd

    .line 441
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 7

    .line 1195
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1197
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    goto :goto_0

    .line 1198
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1201
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 1202
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1203
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mProhibited:[Z

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    aput-boolean v2, v3, v4

    .line 1204
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImsCallEvent: Receive 503 Outage Error session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1204
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1206
    :cond_1
    sget-object v4, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_4

    :cond_2
    if-nez v0, :cond_4

    .line 1208
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1209
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v3, v4}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1210
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onImsCallEvent: Notify 708 to RegiGvn even if session null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p1, "mmtel"

    .line 1214
    invoke-interface {p0, p1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    :cond_3
    return-void

    .line 1220
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1221
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioCodec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioBitRate()Ljava/lang/String;

    move-result-object v4

    .line 1222
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ENDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-eq v5, v6, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne v5, v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 1221
    :cond_6
    :goto_2
    invoke-direct {p0, v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->sendAudioCodecInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    if-nez v0, :cond_8

    .line 1226
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsCallEvent: unknown session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1229
    :cond_8
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImsCallEvent: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1229
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-direct {p0, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsCallEventForState(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    return-void
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 4

    .line 536
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 538
    iget v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v1, v0, :cond_0

    const v0, 0x30000009

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    .line 540
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v2, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x9

    .line 543
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x64

    .line 544
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 10

    if-eqz p1, :cond_9

    .line 371
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 374
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 375
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    const v2, 0x3000000c

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 378
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 379
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastRegiErrorCode:[I

    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v5

    aput v5, v3, v1

    .line 380
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 382
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 383
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 384
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emergency Registered Feature "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v4, v2, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 385
    sget-object p1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v3, p1, :cond_1

    const-wide/32 v2, 0x493e0

    .line 386
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->startEpdnDisconnectTimer(IJ)V

    :cond_1
    return-void

    .line 391
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->isEpdgServiceConnected()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    const-string v5, "allow_release_wfc_before_ho"

    .line 393
    invoke-static {v1, v5, v6}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v5

    .line 394
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is allow release call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 395
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->getEpdgMgr()Lcom/sec/epdg/EpdgManager;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lcom/sec/epdg/EpdgManager;->setReleaseCallBeforeHO(IZ)Z

    .line 398
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const/4 v7, 0x1

    if-eqz v5, :cond_5

    invoke-interface {v5, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 399
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v5

    if-eq v2, v5, :cond_5

    .line 401
    invoke-virtual {p0, v1, v7}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 402
    sget-object v5, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v5, :cond_4

    if-eqz v2, :cond_4

    .line 403
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v5

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v2

    if-eq v5, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasEmergencyCall(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 404
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 406
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2, v1, p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->handleEpdgHandover(ILcom/sec/ims/ImsRegistration;Lcom/sec/internal/constants/Mno;)V

    .line 409
    :cond_5
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->terminateMoWfcWhenWfcSettingOff(I)V

    .line 411
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registered to VOLTE service. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " TTYMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registered Feature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v8, v5, v1

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " with handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v3

    if-eq v3, v7, :cond_6

    .line 417
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    .line 418
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v4, v4, v1

    invoke-interface {v3, v1, v6, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setTtyMode(III)I

    .line 421
    :cond_6
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;->connectToSve(I)V

    :cond_7
    const-string v0, "mmtel"

    .line 425
    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 426
    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMmtelAcquiredEver:Z

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mProhibited:[Z

    aput-boolean v6, v0, v1

    goto :goto_0

    :cond_8
    const-string v0, "Registration Without MMTEL has DialogList notify empty dialog"

    .line 429
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->clearDialogList(II)V

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 434
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    :cond_9
    :goto_1
    return-void
.end method

.method protected onRtpLossRateNoti(Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnRtpLossRate(ILcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    return-void
.end method

.method public declared-synchronized onSendRttSessionModifyRequest(IZ)V
    .locals 3

    monitor-enter p0

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getPhoneIdByCallId(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 810
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    .line 811
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 814
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    .line 815
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v1, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->onSendRttSessionModifyRequest(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSendRttSessionModifyResponse(IZZ)V
    .locals 3

    monitor-enter p0

    .line 820
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getPhoneIdByCallId(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 821
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    .line 822
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    if-ne p2, p3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 825
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    .line 826
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->onSendRttSessionModifyResponse(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 1

    .line 341
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onServiceSwitched"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeature(I)V

    return-void
.end method

.method public onSimReady(I)V
    .locals 0

    .line 172
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onSimReady:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpdateGeolocation()V
    .locals 2

    .line 1413
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onUpdateGeolocation: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onUpdateGeolocation()V

    return-void
.end method

.method public onVoWiFiSwitched(I)V
    .locals 2

    .line 335
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onVoWiFiSwitched:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeature(I)V

    return-void
.end method

.method public pushCall(ILjava/lang/String;)V
    .locals 3

    .line 1091
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushCall: callId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1094
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "callId("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1097
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p1

    .line 1098
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {v0, v1, p2, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->pushCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V
    .locals 0

    .line 753
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V

    return-void
.end method

.method public registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .locals 0

    .line 727
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public registerForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 0

    .line 740
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void
.end method

.method public registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1

    .line 736
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->registerForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void
.end method

.method public registerForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V
    .locals 0

    .line 708
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V

    return-void
.end method

.method public registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V
    .locals 0

    .line 717
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    return-void
.end method

.method public sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V
    .locals 0

    .line 1768
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getCmcMediaController()Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;->sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V

    return-void
.end method

.method public sendHandOffEvent(IIIIJ)V
    .locals 8

    .line 1778
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEPSFBEvent: event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sRat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  dRat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1781
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateIntentBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 1782
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasActiveCall(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1784
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1786
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateIntentBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendTmoEcholocatePSHO(IIIIJ)V

    goto :goto_0

    .line 1788
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateIntentBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendTmoEcholocateEPSFB(IIJ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3

    .line 804
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRttMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->sendRttMessage(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized sendRttSessionModifyRequest(IZ)I
    .locals 1

    monitor-enter p0

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->sendRttSessionModifyRequest(IZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendRttSessionModifyResponse(IZ)V
    .locals 1

    monitor-enter p0

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->sendRttSessionModifyResponse(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setActiveImpu(ILjava/lang/String;)V
    .locals 1

    .line 1168
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    const/4 p2, 0x0

    aput-object p2, p0, p1

    return-void

    .line 1173
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    invoke-static {p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    aput-object p2, p0, p1

    return-void
.end method

.method public setAutomaticMode(IZ)V
    .locals 4

    .line 649
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAutomaticMode:[Z

    aget-boolean v1, v0, p1

    .line 650
    aput-boolean p2, v0, p1

    .line 653
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutomaticMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, p2, :cond_0

    const-string p0, "setAutomaticMode: ignored"

    .line 655
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 658
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setAutomaticMode(IZ)V

    return-void
.end method

.method public setOutOfService(ZI)V
    .locals 0

    .line 671
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setOutOfService(ZI)V

    return-void
.end method

.method public setRttMode(I)V
    .locals 0

    .line 786
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setRttMode(I)V

    return-void
.end method

.method public setRttMode(II)V
    .locals 0

    .line 791
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setRttMode(II)V

    return-void
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 2

    .line 762
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUiTTYMode: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", do nothing"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 763
    iget-object p0, p3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz p0, :cond_0

    .line 765
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 767
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setUpTest(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;)V
    .locals 2

    .line 124
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUpTest:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForIncomingCallEvent(Landroid/os/Handler;)V

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForCallStateEvent(Landroid/os/Handler;)V

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForDialogEvent(Landroid/os/Handler;)V

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForDedicatedBearerNotifyEvent(Landroid/os/Handler;)V

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForRtpLossRateNoti(Landroid/os/Handler;)V

    .line 132
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 133
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSipErrorFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;

    .line 134
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 135
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 137
    invoke-interface {p3, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 p3, 0x2

    invoke-interface {p1, p0, p3, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 139
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 p3, 0x3

    invoke-interface {p1, p0, p3, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 140
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 p3, 0x8

    invoke-interface {p1, p0, p3, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDedicatedBearerNotifyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 p3, 0x12

    invoke-interface {p1, p0, p3, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setVideoCrtAudio(IZ)V
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getIncomingCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1061
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "setVideoCrtAudio() no valid incoming call session"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1064
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setVideoCrtAudio(IZ)V

    return-void
.end method

.method protected startEpdnDisconnectTimer(IJ)V
    .locals 3

    .line 346
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->stopEpdnDisconnectTimer(I)V

    .line 348
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRetryTimer: millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, -0x1

    .line 350
    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 351
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1, p2, p3}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method protected stopEpdnDisconnectTimer(I)V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopEpdnDisconnectTimer["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 364
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->transferCall(ILjava/lang/String;Ljava/lang/String;[Lcom/sec/ims/DialogEvent;)V

    return-void
.end method

.method public unregisterCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V
    .locals 0

    .line 758
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->unregisterCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V

    return-void
.end method

.method public unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .locals 0

    .line 732
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V
    .locals 0

    .line 722
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    return-void
.end method

.method public updateAudioInterface(II)V
    .locals 7

    .line 992
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAudioInterface, phoneId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->getAudioMode(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const/16 v2, 0x8

    if-ne p2, v2, :cond_0

    goto :goto_1

    .line 999
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1000
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    :goto_0
    if-gt v4, v2, :cond_3

    .line 1003
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v3, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 997
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->updateAudioInterfaceByCmc(II)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    if-nez v3, :cond_4

    .line 1012
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v4, "There is no IMS Registration take Emergency Regi"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    :cond_4
    if-eqz v3, :cond_8

    const/4 v4, 0x4

    if-ne p2, v4, :cond_7

    .line 1019
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getEmergencySession(I)Ljava/util/List;

    move-result-object p2

    .line 1020
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1021
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v5, v6, :cond_5

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    if-ne v4, p1, :cond_5

    .line 1022
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getEmergencyUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p1

    .line 1023
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Emergency session. Invoke updateAudioInterface() with UserAgent"

    invoke-static {p2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {p2, v1, v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateAudioInterface(ILjava/lang/String;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    move v1, v2

    :cond_6
    if-nez v1, :cond_8

    .line 1030
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p2

    invoke-interface {p1, p2, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateAudioInterface(ILjava/lang/String;)V

    goto :goto_3

    .line 1033
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p2

    invoke-interface {p1, p2, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateAudioInterface(ILjava/lang/String;)V

    :cond_8
    :goto_3
    const-string p1, "STOP"

    .line 1037
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1038
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->forceNotifyCurrentCodec()V

    :cond_9
    return-void
.end method

.method public updateCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->updateCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V

    return-void
.end method

.method public updateSSACInfo(IIIII)I
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    .line 945
    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateSSACInfo(IIIZIIZ)I

    move-result p0

    return p0
.end method
