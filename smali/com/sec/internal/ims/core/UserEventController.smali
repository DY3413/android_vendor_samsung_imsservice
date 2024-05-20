.class public Lcom/sec/internal/ims/core/UserEventController;
.super Ljava/lang/Object;
.source "UserEventController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiMgr-UsrEvtCtr"


# instance fields
.field mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field mContext:Landroid/content/Context;

.field protected mCurrentUserId:I

.field protected mIsDeviceShutdown:Z

.field mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/core/RegistrationManagerBase;",
            "Lcom/sec/internal/ims/core/PdnController;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/helper/os/ITelephonyManager;",
            "Lcom/sec/internal/helper/SimpleEventLog;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mIsDeviceShutdown:Z

    .line 61
    iput-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 63
    iput-object p3, p0, Lcom/sec/internal/ims/core/UserEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 64
    iput-object p4, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    .line 65
    iput-object p5, p0, Lcom/sec/internal/ims/core/UserEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 67
    iput-object p6, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 69
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mCurrentUserId:I

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Start with User "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr-UsrEvtCtr"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateOpMode(IIILcom/sec/internal/constants/Mno;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-ne p3, v2, :cond_2

    move p3, v2

    goto :goto_2

    :cond_2
    move p3, v1

    :goto_2
    if-eq p3, v3, :cond_3

    goto :goto_3

    :cond_3
    move v2, v1

    .line 580
    :goto_3
    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p4

    const-string v3, "RegiMgr-UsrEvtCtr"

    if-eqz p4, :cond_5

    const/4 p4, -0x2

    if-eq p2, p4, :cond_4

    if-ne p2, v0, :cond_5

    :cond_4
    const-string p2, "Changed rcs_user_setting by network. Skip change op mode."

    .line 583
    invoke-static {v3, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    if-eqz v1, :cond_7

    .line 591
    iget-object p2, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    const-string p4, "info/tc_popup_user_accept"

    invoke-static {p4, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p4, -0x1

    if-eqz p2, :cond_6

    .line 595
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-string p2, "Error while parsing integer in getIntValue() - NumberFormatException"

    .line 597
    invoke-static {v3, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 600
    :cond_6
    :goto_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p0, p3, p1, p4}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->changeOpMode(ZII)V

    :cond_7
    return-void
.end method

.method private updateRegistrationByRcsUserSettings(IILcom/sec/internal/constants/Mno;)V
    .locals 7

    .line 653
    sget-object v0, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x2

    if-ne p3, v0, :cond_0

    if-ne p2, v1, :cond_0

    const-string p0, "RegiMgr-UsrEvtCtr"

    const-string p1, "RCS_TURNING_OFF: Ignore RCS disable for SKT until server responds"

    .line 655
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 660
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 662
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 663
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasRcsService(ILcom/sec/ims/settings/ImsProfile;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 664
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    const-string v3, "RCS USER SWITCH OFF"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-ne p2, v5, :cond_2

    .line 669
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_0

    .line 671
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-array v2, v1, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 674
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v2, v4

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v2, v5

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 675
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_0

    :cond_4
    if-ne p2, v5, :cond_5

    .line 678
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_0

    .line 680
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private updateRegistrationByVolteServiceSettings(IZLcom/sec/internal/constants/Mno;)V
    .locals 11

    .line 606
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_7

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "RegiMgr-UsrEvtCtr"

    if-nez p2, :cond_6

    const/4 p2, 0x3

    new-array v1, p2, [Lcom/sec/internal/constants/Mno;

    .line 619
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-virtual {p3, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v1, "VoLTE turned off, DeRegister"

    .line 623
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 626
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 627
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    new-array v6, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 631
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v3

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v4

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "volte setting turned off"

    .line 632
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/16 v6, 0x49

    .line 633
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 634
    iget-object v6, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v6, v2, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_0

    :cond_4
    new-array v6, v5, [Lcom/sec/internal/constants/Mno;

    .line 635
    sget-object v7, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v7, v6, v3

    sget-object v7, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    aput-object v7, v6, v4

    invoke-virtual {p3, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {p3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_5
    new-array v6, p2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v3

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v6, v4

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v9, v6, v5

    .line 636
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 637
    iget-object v6, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isSuspended()Z

    move-result v10

    invoke-virtual {v6, v10}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    new-array v6, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v6, v3

    aput-object v9, v6, v4

    .line 638
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "VoLTE turned off, no need to keep pdn."

    .line 639
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v6, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v8

    invoke-virtual {v6, v8, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 641
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto/16 :goto_0

    :cond_6
    :goto_1
    const-string p2, "VoLTE switch changed, updateRegistration"

    .line 620
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(I)Z

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mCurrentUserId:I

    return p0
.end method

.method public isShuttingDown()Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mIsDeviceShutdown:Z

    return p0
.end method

.method protected onChatbotAgreementChanged(I)V
    .locals 4

    const-string v0, "RegiMgr-UsrEvtCtr"

    const-string v1, "onChatbotAgreementChanged"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 123
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    const-string v2, "chatbot-communication"

    .line 125
    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v2, 0x0

    .line 126
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v3, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "chatbot agreement changed"

    .line 127
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDataUsageLimitReached(ZI)V
    .locals 6

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataUsageLimitReached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setDataUsageExceed(Z)V

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 102
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data limited exceed"

    .line 103
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_2

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataUsageLimitReached: force update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v0, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_0

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method onEcVbcSettingChanged(I)V
    .locals 5

    .line 470
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v3, 0x0

    .line 471
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v2, v3

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RegiMgr-UsrEvtCtr"

    const-string v3, "set reason as EcVbc Setting Changed"

    .line 472
    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "EcVbc Setting Changed"

    .line 473
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 474
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v4, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onFlightModeChanged(Z)V
    .locals 9

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    move v1, v0

    .line 536
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 537
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v3, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 539
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 540
    iget-object v5, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v5, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    const-string v5, "FlightMode On"

    .line 541
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v7, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 542
    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v0

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v6

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 543
    iget-object v5, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v7

    invoke-virtual {v5, v7, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 544
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_2

    :cond_0
    new-array v7, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 545
    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v0

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v6

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 546
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v5, v7, :cond_3

    .line 547
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_2

    :cond_1
    new-array v5, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 549
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v5, v0

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 551
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v4}, Lcom/sec/internal/ims/core/RegistrationUtils;->isDelayDeRegForNonADSOnFlightModeChanged(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "RegiMgr-UsrEvtCtr"

    const-string v5, "QCT , non-ads send de-reg later"

    .line 552
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/core/RegistrationManager;->setNonADSDeRegRequired(Z)V

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v6

    .line 557
    :cond_3
    :goto_2
    iput-boolean v0, v4, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    .line 558
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    .line 559
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 560
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    const-string v5, "AirplaneModeOn"

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 563
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 568
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onFlightModeChanged(Z)V

    return-void
.end method

.method onLteDataNetworkModeSettingChanged(ZI)V
    .locals 1

    const-string p0, "RegiMgr-UsrEvtCtr"

    const-string v0, "onLteDataNetworkModeSettingChanged:"

    .line 524
    invoke-static {p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 525
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 529
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 530
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onLteDataNetworkModeSettingChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMobileDataChanged(IILcom/sec/internal/ims/core/NetworkEventController;)V
    .locals 10

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMobileDataChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    .line 138
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    .line 139
    invoke-static {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v6, 0x2

    new-array v7, v6, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 140
    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v0

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v7, v4

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mobile data changed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    aput-object v9, v8, v0

    sget-object v9, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    aput-object v9, v8, v4

    sget-object v9, Lcom/sec/internal/constants/Mno;->VTR:Lcom/sec/internal/constants/Mno;

    aput-object v9, v8, v6

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 145
    iget-object v6, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v6, v5, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ims"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 147
    iget-object v6, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v6, v5, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/internal/ims/core/UserEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 149
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    if-ne p1, v4, :cond_3

    .line 153
    invoke-virtual {p3, v5, p2, v4}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    goto/16 :goto_1

    .line 156
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v6, v5, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 161
    :cond_5
    iget-object p3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    if-ne p1, v4, :cond_8

    .line 164
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_8

    if-ne v0, p2, :cond_6

    goto :goto_3

    .line 169
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "onMobileDataChanged: tryRegister RCS on other slot"

    .line 170
    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method protected onMobileDataPressedChanged(IILcom/sec/internal/ims/core/NetworkEventController;)V
    .locals 7

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMobileDataPressedChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 180
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 181
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 182
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v4, v0

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 184
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne p1, v6, :cond_0

    .line 185
    invoke-virtual {p3, v3, p2, v6}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    .line 186
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    const-wide/16 p2, 0x7d0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onRTTmodeUpdated(IZ)V
    .locals 8

    .line 373
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRTTMode()Z

    move-result v1

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRTTmodeUpdated: current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RegiMgr-UsrEvtCtr"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, p2, :cond_5

    .line 379
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setRTTMode(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    .line 381
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 382
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 387
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 388
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :cond_2
    move-object v0, v2

    move v1, v5

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 399
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v2, v6, :cond_5

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v6, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-eq v2, v6, :cond_5

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRTTmodeUpdated: isSupportRTT="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRTTmodeUpdated: force update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 402
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTT changed : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 403
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, v0, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_2

    :cond_4
    :goto_1
    const-string p0, "RegiterTaskList is empty."

    .line 383
    invoke-static {v4, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onRcsUserSettingChanged(II)V
    .locals 9

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRcsUserSettingChanged: switch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 292
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 293
    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v4, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/params/ACSConfig;->getAcsVersion()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-nez p1, :cond_2

    .line 298
    sget-object v8, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v8, :cond_3

    if-eq v0, v6, :cond_0

    const/4 v8, 0x3

    if-ne v0, v8, :cond_3

    :cond_0
    if-eq v4, v5, :cond_1

    const/4 v8, -0x2

    if-eq v4, v8, :cond_1

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": treat RCS_DISABLED(0) as RCS_TURNING_OFF(2)"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    move p1, v7

    goto :goto_0

    .line 306
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": already turnned off - acs version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p2, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p1, v7, :cond_3

    .line 310
    sget-object v4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_3

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": RCS_TURNING_OFF(2) is not allowed set rcs_user_setting to 0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    return-void

    :cond_3
    :goto_0
    if-ne v0, p1, :cond_4

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "same rcs_user_setting not changed : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-ne v0, v5, :cond_5

    if-ne p1, v6, :cond_5

    const-string v4, "Reset ACS settings : RCS user switch turned on first time."

    .line 325
    invoke-static {v1, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v4, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 329
    :cond_5
    invoke-direct {p0, p2, v0, p1, v3}, Lcom/sec/internal/ims/core/UserEventController;->updateOpMode(IIILcom/sec/internal/constants/Mno;)V

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modify internal ImsUserSetting(shared pref) from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    .line 334
    invoke-direct {p0, p2, p1, v3}, Lcom/sec/internal/ims/core/UserEventController;->updateRegistrationByRcsUserSettings(IILcom/sec/internal/constants/Mno;)V

    return-void
.end method

.method protected onRoamingDataChanged(ZI)V
    .locals 6

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRoamingDataChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 198
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto :goto_2

    .line 203
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 204
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRoamingDataChanged(Z)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 214
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 215
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roaming data changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_1

    .line 220
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onRoamingSettingsChanged(II)V
    .locals 6

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRoamingSettingsChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 228
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 229
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 230
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasVolteService(ILcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 232
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    const-string v1, "Roaming Setting turned off"

    .line 234
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v0, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_0

    :cond_1
    if-eq p1, v5, :cond_2

    if-ne p1, v1, :cond_0

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method onShuttingDown(I)V
    .locals 7

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "powerOff :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 495
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mIsDeviceShutdown:Z

    :cond_0
    const/4 p1, 0x0

    move v1, p1

    .line 503
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 505
    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 507
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    move v3, p1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 508
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v5, p1

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v5, v0

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v3, 0x17

    .line 509
    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    move v3, v0

    .line 512
    :cond_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_3
    move v3, p1

    :cond_4
    if-eqz v3, :cond_5

    .line 518
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method onTTYmodeUpdated(IZ)V
    .locals 8

    .line 338
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result v0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTTYmodeUpdated: current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RegiMgr-UsrEvtCtr"

    invoke-static {v3, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eq v0, p2, :cond_5

    .line 348
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setTTYMode(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    .line 350
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 351
    invoke-static {v4}, Lcom/sec/internal/ims/core/RegistrationUtils;->supportCsTty(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v0, v4

    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v6

    :goto_0
    if-nez v1, :cond_3

    return-void

    .line 362
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTTYmodeUpdated: isSupportCsTTY="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_4

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 364
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v1, p2, v6

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v1, p2, v5

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 365
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto :goto_1

    .line 367
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(I)Z

    :cond_5
    :goto_1
    return-void
.end method

.method onUserSwitched()V
    .locals 7

    .line 480
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onUserSwitched by MUM"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const v0, 0x11010005

    const-string v1, ",USER SWITCHED"

    .line 481
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 482
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 483
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 484
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v4, v0

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 485
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v0, 0x3e8

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onVideoCallServiceSettingChanged(ZI)V
    .locals 7

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoCallServiceSettingChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 256
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v3

    xor-int/lit8 v4, p1, 0x1

    invoke-static {v2, v3, v4, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    .line 260
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 262
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 263
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v4, "Video Call state changed : "

    if-ne v0, v3, :cond_2

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_0

    .line 269
    :cond_2
    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_4

    .line 272
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v3

    const/16 v5, 0x12

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v2, "skip update registration"

    .line 273
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_0

    .line 279
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method onVolteServiceSettingChanged(ZI)V
    .locals 9

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVolteServiceSettingChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 441
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    if-eqz v0, :cond_5

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 445
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v3

    if-nez v3, :cond_1

    const-string p0, "onVolteServiceSettingChanged: SIM is not available don\'t save setting"

    .line 446
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 450
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 451
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v4

    xor-int/lit8 v5, p1, 0x1

    invoke-static {v3, v4, v5, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    .line 454
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 455
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    new-array v5, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 456
    invoke-virtual {v5, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    if-eqz v5, :cond_3

    const/4 p0, 0x4

    new-array p0, p0, [Lcom/sec/internal/constants/Mno;

    .line 457
    sget-object p1, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    aput-object p1, p0, v7

    sget-object p1, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    aput-object p1, p0, v8

    sget-object p1, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    aput-object p1, p0, v4

    const/4 p1, 0x3

    sget-object p2, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    aput-object p2, p0, p1

    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "update eutrn param"

    .line 458
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onVolteSettingChanged()V

    :cond_2
    const-string p0, "WFC is enabled. Do not modify regi status"

    .line 461
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 464
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onVolteSettingChanged()V

    goto :goto_0

    .line 466
    :cond_4
    invoke-direct {p0, p2, p1, v0}, Lcom/sec/internal/ims/core/UserEventController;->updateRegistrationByVolteServiceSettings(IZLcom/sec/internal/constants/Mno;)V

    :cond_5
    :goto_1
    return-void
.end method

.method onVowifiServiceSettingChanged(ILcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V
    .locals 6

    const-string v0, "RegiMgr-UsrEvtCtr"

    const-string v1, "onVowifiServiceSettingChanged:"

    .line 409
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v1, :cond_0

    const-string p0, "VolteServiceModule is not create yet so retry after 3 seconds"

    .line 412
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xbb8

    .line 413
    invoke-interface {p2, p1, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyVowifiSettingChanged(IJ)V

    return-void

    .line 417
    :cond_0
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onVoWiFiSwitched(I)V

    .line 418
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 420
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 421
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    .line 423
    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 424
    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v5, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v3, v5, :cond_2

    .line 425
    invoke-static {v2}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip updateRegistration under "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " roaming NW"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "VoWiFi settings changed"

    .line 428
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_0

    .line 435
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    return-void
.end method

.method public setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    return-void
.end method

.method public setCurrentUserId(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mCurrentUserId:I

    return-void
.end method

.method public setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    return-void
.end method
