.class Lcom/sec/internal/ims/core/NetworkEventController;
.super Ljava/lang/Object;
.source "NetworkEventController.java"


# static fields
.field private static final EPDG_EVENT_TIMER:I = 0x1d8a8

.field static final IMS_DM_START:Ljava/lang/String; = "10"

.field private static final LOG_TAG:Ljava/lang/String; = "RegiMgr-NetEvtCtr"


# instance fields
.field protected mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

.field protected mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mLastPcscfList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetType:I

.field private mNwChanged:Z

.field protected mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field protected mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

.field protected mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field protected mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field protected mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

.field private mWiFi:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    .line 574
    iput v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    .line 575
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    .line 576
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    .line 112
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/helper/os/ITelephonyManager;Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/core/PdnController;",
            "Lcom/sec/internal/helper/os/ITelephonyManager;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;",
            "Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;",
            "Lcom/sec/internal/ims/core/RegistrationManagerBase;",
            "Lcom/sec/internal/interfaces/ims/IImsFramework;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    .line 574
    iput v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    .line 575
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    .line 576
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    .line 117
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 119
    iput-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 120
    iput-object p4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    .line 121
    iput-object p5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    .line 122
    iput-object p6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    .line 123
    iput-object p7, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 124
    iput-object p8, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 125
    new-instance p2, Lcom/sec/internal/helper/SimpleEventLog;

    const-string p3, "RegiMgr-NetEvtCtr"

    const/16 p4, 0x12c

    invoke-direct {p2, p1, p3, p4}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V
    .locals 7

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterByDefaultNwChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") needDeregi("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    .line 1482
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1484
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1486
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 1487
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v5, v3

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v5, v2

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1488
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v4, p2, :cond_1

    sget-object p2, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    if-ne v4, p2, :cond_4

    .line 1490
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    return-void

    :cond_2
    const/16 p2, 0xc

    .line 1494
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1495
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 1498
    :cond_3
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1499
    sget-object p3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1501
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz v0, :cond_4

    const-string p3, "deregisterByDefaultNwChanged: stop pdn"

    .line 1502
    invoke-static {v1, p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1503
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private handleNetworkEvent(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;ZZ)V
    .locals 5

    .line 1226
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1227
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->handleRestrictionOnNetworkEventChanged(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 1229
    iget-object v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 1230
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1232
    :goto_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottledforImsNotAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1233
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->isEpsOnlyReg(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1234
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    const/16 v3, 0x9

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1240
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    const-string v3, "RegiMgr-NetEvtCtr"

    if-eqz v0, :cond_5

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNetworkEventChanged: event.isDataStateConnected: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " old.isDataStateConnected: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " event.outOfService: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " old.outOfService: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " task.getPdnType() "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rat: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isWifiConnected: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1241
    invoke-static {v3, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1246
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1247
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    if-ne v0, v2, :cond_5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v0, v1

    const/4 v1, 0x3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v0, v1

    const/4 v1, 0x4

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v0, v1

    const/4 v1, 0x5

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v0, v1

    .line 1248
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1249
    invoke-virtual {p0, p2, p1, v2}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    :cond_5
    if-nez p5, :cond_7

    if-eqz p6, :cond_6

    goto :goto_1

    :cond_6
    const-string p5, "onNetworkEventChanged: sendTryRegister"

    .line 1257
    invoke-static {v3, p1, p5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1258
    iget-object p5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p5, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_2

    :cond_7
    :goto_1
    const-string p5, "onNetworkEventChanged: do not call sendTryRegister"

    .line 1255
    invoke-static {v3, p1, p5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1262
    :cond_8
    :goto_2
    invoke-virtual {p3, p4}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    move-result-object p4

    sget-object p5, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->DISABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    if-ne p4, p5, :cond_9

    .line 1263
    invoke-virtual {p0, p2, p3, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->handleVopsDisabledOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    :cond_9
    return-void
.end method

.method private handleNetworkEventOnDeregistering(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 3

    .line 1207
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    const-string v2, "RegiMgr-NetEvtCtr"

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1208
    iget-boolean v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-ne v0, v1, :cond_0

    iget-boolean p4, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq p4, v0, :cond_1

    :cond_0
    const-string p4, "onNetworkEventChanged: roaming or ps-voice-only mode changed in de-registering state"

    .line 1209
    invoke-static {v2, p1, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1210
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p4

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-interface {p4, v0, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onServiceStateDataChanged(ZZ)V

    .line 1214
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    sget-object p4, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne p3, p4, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isKeepPdn()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1215
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getDeregiReason()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_2

    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1216
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p3

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p4

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-virtual {p0, p3, p4, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->findBestNetwork(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "CU, if not in LTE,will stop pdn when in deregistering state caused by pdn lost"

    .line 1217
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 1218
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setKeepPdn(Z)V

    :cond_2
    return-void
.end method

.method private handleOutOfServiceOnNetworkEvnentChanged(Lcom/sec/internal/ims/core/RegisterTask;I)V
    .locals 7

    const-string v0, "RegiMgr-NetEvtCtr"

    const-string v1, "out of service."

    .line 1293
    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1295
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1297
    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const-string v2, "Set OutOfService True for RJIL"

    .line 1298
    invoke-static {v0, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1299
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v2, v3, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setOutOfService(ZI)V

    .line 1302
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "set EVENT_RCS_DELAYED_DEREGISTER"

    .line 1303
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v4, 0x8e

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1305
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7530

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1308
    :cond_1
    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1309
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v2, :cond_2

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "RCS deregister OOS during CS call"

    .line 1310
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    .line 1311
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1312
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1316
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    const-string v2, "ESN send local deregi and PDN disconnect"

    .line 1317
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1321
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/Mno;->SMARTONE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v1, :cond_4

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Smartone send local deregi and PDN disconnect"

    .line 1322
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2, p1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1327
    :cond_4
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "remove_icon_nosvc"

    invoke-interface {p2, v0, v1, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1328
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1329
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    :cond_5
    return-void
.end method

.method private handleRestrictionOnNetworkEventChanged(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 3

    .line 1334
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1335
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1339
    :cond_0
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 1340
    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v2, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v2, :cond_2

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-nez v0, :cond_5

    .line 1342
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    if-le v0, v1, :cond_5

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->isDdsSimSlot(I)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ro.boot.hardware"

    const-string v2, ""

    .line 1343
    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "qcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    if-nez v0, :cond_5

    iget p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    :cond_2
    const-string p3, "RegiMgr-NetEvtCtr"

    const-string v0, "VoLTE roaming disabled(not LTE/NR, not VoPS) or VoLTE disabled(non DDS in 3G)"

    .line 1345
    invoke-static {p3, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1346
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object p3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v0, 0x2

    if-ne p1, p3, :cond_3

    .line 1347
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    :cond_3
    new-array p1, v0, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 1349
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    aput-object p3, p1, v1

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "onNetworkEventChanged: REGISTERED or REGISTERING"

    .line 1350
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1351
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1, p2, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1353
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1354
    sget-object p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1355
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    nop

    :cond_5
    :goto_0
    return-void
.end method

.method private handleSsacOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;ILcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 3

    .line 1363
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x79

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object p4, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 1364
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1365
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    const-string p3, "RegiMgr-NetEvtCtr"

    if-nez p1, :cond_0

    const-string p1, "onNetworkEventChanged: remove SSAC re-regi"

    .line 1366
    invoke-static {p3, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1367
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    const-string p0, "onNetworkEventChanged: set SSAC to default"

    .line 1370
    invoke-static {p3, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1371
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->enableSsac(Z)V

    :cond_1
    return-void
.end method

.method private isHandoverBetweenEpdgAndLeagacy(II)Z
    .locals 1

    if-eq p1, p2, :cond_2

    if-eqz p2, :cond_2

    const/16 p0, 0xd

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    if-ne p2, p0, :cond_1

    :cond_0
    if-eq p1, p0, :cond_2

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNewPcscfListAvailable(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 3

    .line 1658
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->retrievePcscfByProfileSettings(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1659
    invoke-static {p1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mLastPcscfList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lookupPcscfIfRequired(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 172
    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isValidPcscfAddress(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "RegiMgr-NetEvtCtr"

    if-eqz v4, :cond_10

    .line 173
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-nez v4, :cond_1

    .line 174
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 176
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/NetworkEventController;->isDomainPattern(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 177
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/PdnController;->getDnsServers(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/util/List;

    move-result-object v4

    .line 182
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V

    .line 184
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v6

    if-nez v6, :cond_3

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v6

    :goto_1
    move-wide v8, v6

    .line 185
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "netId: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v4, :cond_6

    .line 187
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getNeedNaptrDns()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/NetworkEventController;->isDomainPattern(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 189
    :cond_4
    iget-object v6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    const-string v7, "TLS"

    invoke-interface {v6, p1, v7}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->selectRcsTransportType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getNeedIpv4Dns()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 192
    iget-object v7, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {v7, p1, v4}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->selectRcsDnsType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 194
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v5, "NAPTR"

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_7

    .line 199
    :cond_5
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    const-string v7, "not ipv4 dns"

    invoke-static {v5, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v5, "NAPTR"

    const-string v7, ""

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_7

    :cond_6
    if-eqz v4, :cond_a

    .line 206
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegistrationManager;->getAresLookupRequired()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 207
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_sip._tls."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 209
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 210
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 212
    invoke-static {v7}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 213
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 217
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 218
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    const-string v4, "ATT SoftPhone : found ipv4 dns"

    invoke-static {v5, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v5, "SRV"

    const-string/jumbo v7, "tcp"

    const-string v11, "IPV4"

    move-object v1, p1

    move-object v2, p3

    move-object v4, v6

    move-object v6, v7

    move-object v7, v11

    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_7

    .line 221
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v5, "SRV"

    const-string/jumbo v6, "tcp"

    const-string v7, ""

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_7

    .line 227
    :cond_a
    :try_start_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_d

    .line 228
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 229
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 230
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v7, v4

    :goto_3
    if-ge v6, v7, :cond_e

    aget-object v8, v4, v6

    .line 231
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 234
    :cond_b
    invoke-static {v3}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v7, v4

    :goto_4
    if-ge v6, v7, :cond_e

    aget-object v8, v4, v6

    .line 235
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 239
    :cond_c
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 240
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-static {v4, v6, p1, v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getHostAddressWithThread(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_6

    .line 243
    :cond_d
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getAllByNameWithThread(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v7, v4

    :goto_5
    if-ge v6, v7, :cond_e

    aget-object v8, v4, v6

    .line 244
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 248
    :cond_e
    :goto_6
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V

    .line 250
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 251
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 254
    :catch_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    const-string v4, "getPcscfIpAddresses: faild to resolve dns query... "

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManager;->setAresLookupRequired(Z)V

    .line 256
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_f

    .line 257
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->retryDNSQuery()V

    .line 259
    :cond_f
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "CMC dns query failed"

    invoke-static {v5, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7

    .line 265
    :cond_10
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPcscfIpAddresses: pcscf is not valid... continue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    :goto_7
    return-object v10
.end method

.method private setOmaDmStateDB(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V
    .locals 2

    .line 813
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 814
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->TRIGGERED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 817
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOmaDmStateDB<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RegiMgr-NetEvtCtr"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :try_start_0
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "dm_state"

    const-string v1, "10"

    .line 820
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sim_slot_id"

    .line 821
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 822
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.ims.dm.ContentProvider/imsDmStart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 824
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setOmaDmStateDB : update failure - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "null"

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private tryCmcRegisterOnNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 1

    .line 1394
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isCmcProfileAdded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez p1, :cond_0

    iget-boolean p1, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz p1, :cond_0

    .line 1395
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->startCmcRegistration()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getNetType()I
    .locals 0

    .line 579
    iget p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    return p0
.end method

.method public getPcscfIpAddress(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 137
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->isNewPcscfListAvailable(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    .line 140
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->hasValidPcscfIpList()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->retrievePcscfByProfileSettings(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mLastPcscfList:Ljava/util/List;

    .line 143
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mLastPcscfList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/NetworkEventController;->lookupPcscfIfRequired(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 148
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkValidPcscfIp(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 149
    invoke-static {p2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    .line 151
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->updateDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)V

    .line 152
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    .line 157
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {p0, p1, v1}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->updateDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)V

    .line 158
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method handOffEventTimeout(I)V
    .locals 3

    .line 1526
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handOffEventTimeout: mNetType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->getNetType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mWiFi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->isWiFi()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1527
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->suspendRegister(ZI)V

    return-void
.end method

.method handleNetworkEventBeforeRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1013
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleNetworkEventBeforeRegister: new network event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", old network event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RegiMgr-NetEvtCtr"

    invoke-static {v6, v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1014
    iget-object v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v5, :cond_0

    iget-object v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 1015
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v9, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 1016
    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v8

    .line 1017
    :goto_0
    invoke-virtual/range {p3 .. p4}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->ENABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    if-ne v9, v10, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    .line 1018
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v11, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/16 v12, 0x9

    const/4 v13, 0x2

    const/4 v14, 0x6

    if-ne v10, v11, :cond_5

    .line 1019
    iget v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v11, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v10, v11, :cond_2

    iget-boolean v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-nez v10, :cond_2

    const-string v10, "onNetworkEventChanged: WiFi has turned off. release throttle."

    .line 1020
    invoke-static {v6, v1, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1021
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10, v13}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1024
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v5, :cond_3

    .line 1026
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10, v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    goto :goto_2

    .line 1027
    :cond_3
    iget v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v11, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v10, v11, :cond_4

    iget-boolean v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v10, :cond_5

    iget-boolean v10, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v10, :cond_5

    .line 1028
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10, v14}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1034
    :cond_5
    :goto_2
    iget-object v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v11, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    const/16 v15, 0xb

    if-ne v10, v11, :cond_6

    .line 1035
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v10

    sget-object v11, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v10, v11, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v10

    if-ne v10, v15, :cond_6

    iget v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 1036
    invoke-static {v10}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1039
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v11, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v10, v11, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v11, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v10, v11, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v11, Lcom/sec/internal/constants/Mno;->TRUEMOVE:Lcom/sec/internal/constants/Mno;

    if-eq v10, v11, :cond_6

    .line 1040
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v11, Lcom/sec/internal/constants/Mno;->AIS:Lcom/sec/internal/constants/Mno;

    if-eq v10, v11, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v11, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v10, v11, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1041
    iget-object v10, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v11

    invoke-virtual {v10, v11, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1042
    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1048
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    const/4 v11, 0x5

    new-array v15, v11, [Lcom/sec/internal/constants/Mno;

    sget-object v16, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    aput-object v16, v15, v8

    sget-object v16, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    aput-object v16, v15, v7

    sget-object v16, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    aput-object v16, v15, v13

    sget-object v16, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    const/16 v17, 0x3

    aput-object v16, v15, v17

    sget-object v16, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    const/16 v18, 0x4

    aput-object v16, v15, v18

    invoke-virtual {v10, v15}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v10

    const-string v15, "ims"

    if-eqz v10, :cond_7

    .line 1049
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v10

    sget-object v12, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v10, v12, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-boolean v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v10, :cond_7

    .line 1050
    iget-object v10, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v12

    invoke-virtual {v10, v12, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1051
    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1055
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v10

    sget-object v12, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v10, v12, :cond_8

    iget-boolean v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eqz v10, :cond_8

    iget-boolean v10, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-nez v10, :cond_8

    const-string v10, "onNetworkEventChanged: Wifi connected in CMC profile. Stop the conneting PDN"

    .line 1056
    invoke-static {v6, v1, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1057
    iget-object v10, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v12

    invoke-virtual {v10, v12, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1058
    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1061
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v12, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/16 v11, 0x14

    if-eq v10, v12, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v12, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v10, v12, :cond_e

    .line 1062
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1063
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isDelayedDeregisterTimerRunning()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1064
    iget v4, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1065
    iget v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v3}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1066
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNetworkEventChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "attached while DelayedDeregisterTimer running."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1067
    iget-object v0, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDelayedDeregister(Lcom/sec/internal/ims/core/RegisterTask;)V

    return v8

    :cond_a
    const-string v0, "onNetworkEventChanged: Do not stop IMS PDN on delayedDeregisterTimer running"

    .line 1070
    invoke-static {v6, v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v8

    .line 1073
    :cond_b
    iget v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v10}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1074
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllPcscfChecked()V

    goto :goto_3

    .line 1075
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v10

    if-eqz v10, :cond_d

    iget v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v10, v11, :cond_d

    iget v12, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v10, v12, :cond_d

    .line 1076
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10, v14}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1079
    :cond_d
    :goto_3
    iget-object v10, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v10}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v10

    if-eqz v10, :cond_e

    iget v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v12, 0x10

    if-ne v10, v12, :cond_e

    return v8

    .line 1086
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v12, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-ne v10, v12, :cond_14

    .line 1087
    iget v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v12

    invoke-direct {v0, v10, v12}, Lcom/sec/internal/ims/core/NetworkEventController;->isHandoverBetweenEpdgAndLeagacy(II)Z

    move-result v10

    .line 1088
    iget-object v12, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v15

    invoke-interface {v12, v15}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v12

    .line 1089
    iget v15, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v15}, Lcom/sec/internal/helper/NetworkUtil;->is3gppLegacyNetwork(I)Z

    move-result v15

    if-eqz v15, :cond_f

    const-string v15, "A4"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    move v12, v7

    goto :goto_4

    :cond_f
    move v12, v8

    :goto_4
    if-nez v10, :cond_10

    if-eqz v12, :cond_14

    :cond_10
    if-eqz v10, :cond_11

    const-string v10, "Handover Between VoWifi and 2G/3G"

    .line 1092
    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    if-eqz v12, :cond_12

    const-string v10, "RWC 5G SIM doesn\'t support IMS on 2G/3G"

    .line 1094
    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1096
    :cond_12
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v10

    sget-object v12, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v10, v12, :cond_13

    .line 1097
    iget-object v10, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v15

    invoke-virtual {v10, v15, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1098
    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1101
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1102
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10, v14}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1107
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1108
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    new-array v12, v14, [Lcom/sec/internal/constants/Mno;

    sget-object v15, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    aput-object v15, v12, v8

    sget-object v15, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    aput-object v15, v12, v7

    sget-object v15, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    aput-object v15, v12, v13

    sget-object v15, Lcom/sec/internal/constants/Mno;->VTR:Lcom/sec/internal/constants/Mno;

    aput-object v15, v12, v17

    sget-object v15, Lcom/sec/internal/constants/Mno;->EASTLINK:Lcom/sec/internal/constants/Mno;

    aput-object v15, v12, v18

    sget-object v15, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/16 v17, 0x5

    aput-object v15, v12, v17

    invoke-virtual {v10, v12}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v10

    if-eqz v10, :cond_15

    if-eqz v5, :cond_15

    .line 1110
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    const/16 v12, 0x9

    invoke-interface {v10, v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1113
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    new-array v12, v13, [Lcom/sec/internal/constants/Mno;

    sget-object v15, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    aput-object v15, v12, v8

    sget-object v15, Lcom/sec/internal/constants/Mno;->YOIGO_SPAIN:Lcom/sec/internal/constants/Mno;

    aput-object v15, v12, v7

    invoke-virtual {v10, v12}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v10

    if-eqz v10, :cond_16

    if-eqz v5, :cond_16

    .line 1114
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v14}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1117
    :cond_16
    iget-boolean v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v5, :cond_17

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/core/PdnController;->isNetworkRequested(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopPdnConnectivity(), task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1119
    iget-object v0, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1120
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    return v8

    .line 1125
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v5

    const/16 v10, 0xb

    if-ne v5, v10, :cond_18

    .line 1126
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-boolean v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v5, :cond_18

    iget-boolean v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eq v5, v10, :cond_18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1127
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const/16 v10, 0xb

    invoke-interface {v5, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1130
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v10, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/16 v12, 0xd

    if-eq v5, v10, :cond_19

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v10, Lcom/sec/internal/constants/Mno;->WIND:Lcom/sec/internal/constants/Mno;

    if-ne v5, v10, :cond_21

    .line 1131
    :cond_19
    iget-object v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v10, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 1132
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const-string v10, "PlmnChanged"

    invoke-interface {v5, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getThrottleState()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    move-result-object v5

    sget-object v15, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->PERMANENTLY_STOPPED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    if-ne v5, v15, :cond_1a

    const-string v5, "PLMN changed but Permanent Stopped. Do nothing!"

    .line 1134
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1141
    :cond_1a
    iget-object v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v15, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v5, v15, :cond_1b

    .line 1142
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 1145
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1146
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const/16 v10, 0x9

    invoke-interface {v5, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1151
    :cond_1c
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v5, v10, :cond_1d

    iget-boolean v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v5, :cond_1d

    iget-object v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v10, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v5, v10, :cond_1d

    iget v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v5, v12, :cond_1e

    :cond_1d
    if-eqz v9, :cond_20

    :cond_1e
    if-eqz v9, :cond_1f

    const-string v5, "VopsChanged"

    goto :goto_7

    :cond_1f
    const-string v5, "ImsPdnRequst"

    .line 1155
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-interface {v9, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 1158
    :cond_20
    iget v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v9, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v5, v9, :cond_21

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1159
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v14}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1163
    :cond_21
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v9, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v5, v9, :cond_23

    iget v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v9, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v5, v9, :cond_23

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Kddi throttled, check Network Map for network="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v5, v12, :cond_22

    .line 1166
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const/16 v9, 0xc

    invoke-interface {v5, v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    goto :goto_8

    :cond_22
    if-ne v5, v11, :cond_23

    .line 1168
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1172
    :cond_23
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v9, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v5, v9, :cond_25

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1173
    iget-boolean v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v9, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-ne v5, v9, :cond_24

    iget-boolean v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v9, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq v5, v9, :cond_25

    :cond_24
    const-string v5, "onNetworkEventChanged: roaming or ps-voice-only mode changed in idle/connecting state"

    .line 1174
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v6

    iget-boolean v6, v6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    .line 1176
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    .line 1175
    invoke-interface {v5, v6, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onServiceStateDataChanged(ZZ)V

    :cond_25
    new-array v1, v13, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 1180
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v1, v8

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v1, v7

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget v1, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v1, v3, :cond_26

    .line 1181
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/NetworkEventController;->reconnectPdn(Lcom/sec/internal/ims/core/RegisterTask;)V

    :cond_26
    return v7
.end method

.method handleNetworkEventOnRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 8

    .line 923
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    const/4 v1, 0x0

    const-string v2, "RegiMgr-NetEvtCtr"

    if-eqz v0, :cond_0

    const-string p4, "out of service."

    .line 924
    invoke-static {v2, p1, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 925
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->handleRestrictionOnNetworkEventChanged(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 926
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->handleOutOfServiceOnNetworkEvnentChanged(Lcom/sec/internal/ims/core/RegisterTask;I)V

    return v1

    .line 931
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v3, :cond_1

    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v3

    if-eq v0, v3, :cond_1

    const-string v0, "onNetworkEventChanged: setRegistrationRat"

    .line 932
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 936
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/core/NetworkEventController;->updateEpdgStatusOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 941
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_7

    .line 943
    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppLegacyNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 944
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x79

    invoke-virtual {v0, v5, v3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 945
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 946
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/SlotBasedConfig;->enableSsac(Z)V

    .line 955
    :cond_3
    invoke-virtual {p3, p4}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->ENABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    const/16 v5, 0x326

    if-ne v0, v3, :cond_5

    iget-object v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object p4, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 956
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/16 p4, 0x3c

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string/jumbo v0, "tvolte_hys_timer"

    invoke-static {p3, v0, p4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 957
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pending re-regi to T_VoLTE_hys["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] secs."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p1, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 959
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 960
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 962
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    int-to-long v2, p3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-virtual {p1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 963
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    return v1

    .line 967
    :cond_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p4

    const/16 v0, 0xe

    if-ne p4, v0, :cond_6

    iget p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p3}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 969
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 p4, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string/jumbo v0, "t_delay"

    invoke-static {p3, v0, p4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 970
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNetworkChanged: C2L, Tdelay="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p1, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-lez p3, :cond_6

    .line 972
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    return v1

    .line 977
    :cond_6
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-eqz p3, :cond_d

    const-string p0, "do not update registration due to HYS"

    .line 978
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 981
    :cond_7
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_8

    .line 984
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 985
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    goto/16 :goto_0

    .line 987
    :cond_8
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_c

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_c

    .line 988
    iget-boolean p1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-ne p1, v0, :cond_9

    iget-boolean p1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq p1, v0, :cond_a

    :cond_9
    const-string p1, "onNetworkChanged: roaming event changed, check location cache"

    .line 989
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onLocationCacheExpiry()V

    .line 992
    :cond_a
    iget-boolean p1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-ne p1, v0, :cond_b

    iget-boolean p1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean p4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq p1, p4, :cond_d

    :cond_b
    const-string p1, "onNetworkEventChanged: roaming or ps-voice-only mode changed in registering/registered state"

    .line 993
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    iget-boolean p4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-interface {p1, p4, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onServiceStateDataChanged(ZZ)V

    goto :goto_0

    .line 996
    :cond_c
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p4

    if-eqz p4, :cond_d

    iget p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 p4, 0x10

    if-ne p3, p4, :cond_d

    .line 997
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p3, :cond_d

    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "RCS deregister during CS call - GSM : same as OOS"

    .line 998
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 999
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1000
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2, v4, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    return v1

    :cond_d
    :goto_0
    const-string p1, "by network event changed"

    .line 1004
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1005
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    return v4
.end method

.method handleVopsDisabledOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 5

    .line 1376
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x84

    const-string v3, "VopsChanged"

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    .line 1377
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1378
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1380
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCsfbSupported(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1381
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    goto :goto_0

    .line 1383
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCsfbSupported(I)Z

    move-result p3

    if-nez p3, :cond_3

    .line 1384
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1385
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1386
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v4

    invoke-virtual {p3, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1387
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    new-array v0, v0, [Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    aput-object v1, v0, v4

    invoke-virtual {p3, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget p2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 p3, 0x14

    if-ne p2, p3, :cond_3

    .line 1388
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method hasRetryIntentOnPdnFail()Z
    .locals 0

    .line 747
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isDomainPattern(Ljava/lang/String;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    .line 165
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 166
    invoke-static {p1}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNwChanged()Z
    .locals 0

    .line 587
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    return p0
.end method

.method isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z
    .locals 5

    .line 1417
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1418
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    return v2

    .line 1422
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    const/16 v3, 0xb

    if-eq v1, v3, :cond_9

    const/16 v3, 0xf

    if-ne v1, v3, :cond_1

    goto/16 :goto_2

    .line 1431
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1432
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isNeedDelayedDeregister()Z

    move-result v0

    .line 1433
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v1

    .line 1434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreferredPdnForRCSRegister: isNeedDelayedDeregister ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], preferred PDN ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], needDeregi ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RegiMgr-NetEvtCtr"

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p3, :cond_3

    if-eqz v0, :cond_3

    if-ne v1, v2, :cond_3

    .line 1438
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x12

    invoke-virtual {p3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1439
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "isPreferredPdnForRCSRegister : Delay event"

    invoke-virtual {p3, p2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1440
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x7d0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1443
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "isPreferredPdnForRCSRegister : Now pending"

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_0

    .line 1446
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V

    :goto_0
    return v2

    .line 1452
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 1457
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v0

    .line 1458
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v0

    if-eq v1, v0, :cond_6

    const/4 v2, 0x0

    .line 1463
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V

    .line 1466
    :cond_6
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1468
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    if-eq v3, p1, :cond_7

    .line 1469
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    .line 1472
    :cond_8
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    if-eq v4, v0, :cond_7

    .line 1474
    invoke-direct {p0, v3, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V

    goto :goto_1

    :cond_9
    :goto_2
    return v2
.end method

.method isTaskHasSepecificPdnType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 411
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWiFi()Z
    .locals 0

    .line 583
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    return p0
.end method

.method needEmergencyRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 6

    .line 501
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 503
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 504
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_9

    .line 505
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/util/ImsUtil;->needForceToUsePsE911(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    .line 508
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isISimDataValid()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 515
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v1

    const-string v3, "RegiMgr-NetEvtCtr"

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 516
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    const/16 v5, 0xf

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 517
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->getVoiceRegState(I)I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 518
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->getVoiceRegState(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    :cond_2
    const-string p0, "needEmergencyRegistration[AUS]: limited mode but has valid SIM. Try register."

    .line 519
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 523
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/PdnController;->hasEmergencyServiceOnly(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "needEmergencyRegistration: limited mode. Dont Skip for Canada."

    .line 524
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 528
    :cond_4
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v5, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v1, v5, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/PdnController;->hasEmergencyServiceOnly(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 530
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_5

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getEmcAttachAuth()I

    move-result p0

    if-ne p0, v4, :cond_5

    const-string p0, "needEmergencyRegistration: limited mode. Dont Skip for GCF if EmcAttachAuth success"

    .line 531
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    const-string p0, "needEmergencyRegistration: limited mode. skip emergency registration."

    .line 535
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 539
    :cond_6
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_8

    .line 541
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->validateMsisdn(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isSelfActivationRequired(I)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const-string p0, "Get PCO 5. Skip emergency registration."

    .line 542
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    return v4

    :cond_9
    :goto_0
    return v2
.end method

.method notifyNetworkEvent(IZI)V
    .locals 11

    .line 613
    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v10

    .line 614
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v9

    if-eqz v10, :cond_2

    if-nez v9, :cond_0

    goto :goto_1

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 619
    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType()I

    move-result v3

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v6

    .line 620
    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgAVailable()Z

    move-result v7

    move v0, p3

    move v2, p1

    move v5, p2

    move-object v8, v10

    .line 618
    invoke-static/range {v0 .. v9}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->buildNetworkEvent(IZIIIZZZLcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkState;)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 621
    invoke-virtual {p1, v10}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->equalsIgnoreEpdg(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 622
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method onCheckUnprocessedOmadmConfig(I)V
    .locals 2

    .line 751
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getUnprocessedOmadmConfig(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckUnprocessedOmadmConfig<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: triggerOmadmConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 754
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->triggerOmadmConfig(I)V

    :cond_0
    return-void
.end method

.method onConfigUpdated(Ljava/lang/String;I)Z
    .locals 7

    .line 1615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1616
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 1621
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x3a

    .line 1624
    invoke-static {p1, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1625
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid DM item : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const p0, 0x11010004

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",INVLD DM: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v2

    .line 1630
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v3, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyDmValueChanged(Ljava/lang/String;I)V

    .line 1637
    :cond_2
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    .line 1639
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1640
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onConfigUpdated()V

    .line 1641
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-ne v5, v6, :cond_4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v4, "onConfigUpdated:  mOmadmState is FINISHED"

    .line 1642
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 1644
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v5, v2

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "IMS configuration changed"

    .line 1645
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1646
    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5, v4, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_0

    .line 1647
    :cond_5
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v5, v6, :cond_3

    .line 1648
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/NetworkEventController;->reconnectPdn(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_0

    :cond_6
    return v3
.end method

.method onDefaultNetworkStateChanged(I)V
    .locals 3

    .line 1511
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1513
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1514
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1517
    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    .line 1522
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method onDmConfigCompleted(IZ)V
    .locals 2

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDmConfigCompleted<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "SUCCESS"

    goto :goto_0

    :cond_0
    const-string v1, "TIMEOUT"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getUnprocessedOmadmConfig(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 761
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->setUnprocessedOmadmConfig(IZ)V

    .line 763
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeDmConfigTimeout(I)V

    .line 764
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 765
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 766
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkProfileUpdateFromDM(Z)V

    goto :goto_1

    .line 768
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister()V

    return-void
.end method

.method onEpdgConnected(I)V
    .locals 12

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(I)V

    const-string v0, "RegiMgr-NetEvtCtr"

    const-string v1, "onEpdgConnected:"

    .line 275
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 280
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 282
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 284
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEpdgConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mIsUpdateRegistering="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mno="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x0

    const-string v7, "C"

    const-string v8, "W"

    const/4 v9, 0x2

    const-string v10, "EPDG HO : L2"

    if-ne v4, v5, :cond_6

    iget-boolean v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    if-nez v4, :cond_6

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v5

    if-ne v5, v9, :cond_2

    goto :goto_1

    :cond_2
    move-object v7, v8

    .line 289
    :goto_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 291
    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->HAND_OVER:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V

    .line 292
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->TDC_DK:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v4, :cond_4

    invoke-interface {v4, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move v6, v2

    .line 293
    :cond_5
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3, v2, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    goto/16 :goto_0

    .line 294
    :cond_6
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v11, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v4, v11, :cond_8

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    if-ne v4, v5, :cond_7

    iget-boolean v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    if-eqz v4, :cond_7

    goto :goto_2

    .line 302
    :cond_7
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto/16 :goto_0

    .line 295
    :cond_8
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v5

    if-ne v5, v9, :cond_9

    goto :goto_3

    :cond_9
    move-object v7, v8

    .line 296
    :goto_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 295
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 298
    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->HAND_OVER:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V

    .line 300
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3, v2, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method protected onEpdgDeregisterRequested(I)V
    .locals 1

    .line 350
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v0, 0x7c

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    return-void
.end method

.method onEpdgDisconnected(I)V
    .locals 13

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(I)V

    const-string v0, "RegiMgr-NetEvtCtr"

    const-string v1, "onEpdgDisconnected:"

    .line 313
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 318
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 320
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 322
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEpdgDisconnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mIsUpdateRegistering="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mno="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v6, "2L"

    const-string v7, "C"

    const-string v8, "W"

    const/4 v9, 0x2

    const-string v10, "EPDG HO : "

    const/4 v11, 0x1

    if-ne v4, v5, :cond_4

    iget-boolean v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    if-nez v4, :cond_4

    .line 326
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkEmergencyInProgress()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "onEpdgDisconnected: Skip re-registration due to Emergency registration"

    .line 327
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x1b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 332
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v5

    if-ne v5, v9, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, v8

    .line 333
    :goto_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v3, v11}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 335
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3, v11, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    goto/16 :goto_0

    .line 336
    :cond_4
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v12, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v4, v12, :cond_6

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    if-ne v4, v5, :cond_5

    iget-boolean v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    if-eqz v4, :cond_5

    goto :goto_2

    .line 342
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto/16 :goto_0

    .line 337
    :cond_6
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v5

    if-ne v5, v9, :cond_7

    goto :goto_3

    :cond_7
    move-object v7, v8

    .line 338
    :goto_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v3, v11}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 340
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3, v11, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method protected onEpdgIkeError(I)V
    .locals 2

    .line 1531
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1533
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1534
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    const/4 v0, 0x2

    const-string v1, "IKE_AUTH_ERROR"

    invoke-interface {p1, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPdnRequestFailed(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onIpsecDisconnected(I)V
    .locals 7

    const-string v0, "RegiMgr-NetEvtCtr"

    const-string v1, "onIpsecDisconnected:"

    .line 1541
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1542
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {v1, v2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v1

    .line 1543
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v2

    .line 1544
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->getPrefMode(Landroid/content/Context;II)I

    move-result v3

    .line 1546
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onIpsecDisconnected: VoWiFi : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", pref: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", callType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v2, :cond_2

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1548
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1550
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1551
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1552
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v3

    const/16 v5, 0xb

    if-ne v3, v5, :cond_0

    new-array v3, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 1553
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v3, v2

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1554
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v1, v6, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_0

    :cond_1
    new-array v3, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 1555
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v3, v6

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v3, v2

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Stop pdn when ipsec disconnected."

    .line 1556
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    invoke-virtual {v3, v5, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1558
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onLocalIpChanged(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3

    .line 1593
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onLocalIpChanged()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 1594
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "local IP changed"

    .line 1595
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 1596
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1597
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1600
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1601
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget v0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 1602
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfPreference()V

    .line 1603
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetIPSecAllow()V

    :cond_2
    return-void
.end method

.method onNetworkChanged(IZI)V
    .locals 3

    .line 595
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSuspendedWhileIrat()Z

    move-result v0

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkChanged: suspendByIrat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-NetEvtCtr"

    invoke-static {v2, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isNeedCellLocationUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 600
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setAllCellInfo(Ljava/util/List;)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(I)V

    .line 603
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->updateRat(II)V

    .line 604
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->notifyNetworkEvent(IZI)V

    goto :goto_0

    .line 606
    :cond_1
    iput p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    .line 607
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    const/4 p1, 0x1

    .line 608
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    :goto_0
    return-void
.end method

.method onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 829
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v10

    .line 830
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v10, :cond_d

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 837
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkEventChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->changedEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "RegiMgr-NetEvtCtr"

    invoke-static {v11, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 839
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 840
    iget-object v1, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1, v8, v9}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 841
    iget-object v1, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object v1

    invoke-interface {v1, v10, v8, v9}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 843
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    move v0, v13

    move v1, v0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 844
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 846
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isExistRetryTimer()Z

    move-result v0

    move v14, v0

    move v1, v13

    goto :goto_1

    :cond_1
    move v14, v0

    .line 850
    :goto_1
    invoke-direct {v7, v2, v9, v8, v10}, Lcom/sec/internal/ims/core/NetworkEventController;->handleSsacOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;ILcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    new-array v0, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 852
    sget-object v15, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v15, v0, v13

    sget-object v16, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v16, v0, v6

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 853
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    if-ne v0, v15, :cond_2

    .line 854
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v6

    .line 859
    :cond_2
    invoke-virtual {v7, v9, v2, v8, v10}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEventOnRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 863
    sget-object v15, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v15, v0, v13

    sget-object v15, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v15, v0, v6

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v0, v5

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v0, v4

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v0, v3

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 864
    invoke-virtual {v7, v9, v2, v8, v10}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEventBeforeRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_2
    move v0, v14

    goto :goto_0

    .line 869
    :cond_4
    invoke-direct {v7, v9, v2, v8, v10}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEventOnDeregistering(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    :cond_5
    move v15, v1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v3, p1

    move-object v4, v10

    move v5, v14

    move v6, v15

    .line 871
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEvent(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;ZZ)V

    move v0, v14

    move v1, v15

    goto/16 :goto_0

    .line 874
    :cond_6
    invoke-direct {v7, v8, v10}, Lcom/sec/internal/ims/core/NetworkEventController;->tryCmcRegisterOnNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 876
    iget-boolean v0, v8, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_7

    const-string v0, "out of service."

    .line 877
    invoke-static {v11, v9, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 879
    iput-boolean v6, v10, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    .line 880
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 881
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 884
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isNotifiedImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 889
    iget-object v0, v8, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v1, v10, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v10, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v1, v8, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v0, v1, :cond_9

    const/16 v0, 0x14

    if-ne v1, v0, :cond_9

    .line 891
    :cond_8
    iget-object v0, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v10, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    aput-object v3, v2, v13

    iget-object v3, v8, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    aput-object v3, v2, v6

    iget v3, v10, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 893
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, v8, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Reset notifiedImsNotAvailable: operator [%s] => [%s], network [%s] => [%s]"

    .line 891
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 894
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 898
    :cond_9
    iget-object v0, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v0, :cond_a

    return-void

    .line 903
    :cond_a
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v1

    invoke-virtual {v7, v9, v1, v8, v10}, Lcom/sec/internal/ims/core/NetworkEventController;->updateUtOnNetworkEventChanged(IZLcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 905
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "onNetworkEventChanged: tryRegister by phoneID"

    .line 906
    invoke-static {v11, v9, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 907
    iget-object v0, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto :goto_3

    .line 909
    :cond_b
    iget-object v0, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz v0, :cond_c

    new-array v1, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 910
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v1, v13

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "onNetworkEventChanged: tryRegister"

    .line 911
    invoke-static {v11, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 912
    iget-object v1, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    .line 915
    :cond_c
    :goto_3
    iget-object v0, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 916
    iget-object v0, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_d
    :goto_4
    return-void
.end method

.method protected onPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 7

    const-string v0, "RegiMgr-NetEvtCtr"

    if-nez p1, :cond_0

    const-string/jumbo p0, "task is null. Skip pdnConnected event"

    .line 355
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    .line 360
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPdnConnected: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    .line 364
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 367
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needPendingPdnConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 372
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 374
    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 376
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/core/RegisterTask;

    .line 377
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v5

    :goto_0
    if-nez v3, :cond_5

    const-string p0, "onPdnConnected: Emergency task already removed"

    .line 384
    invoke-static {v0, v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_5
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 389
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v3, v5

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v3, v4

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 390
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 391
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPdnFailureInfo()V

    .line 392
    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setUicclessEmergency(Z)V

    .line 394
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 395
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->needEmergencyRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v3

    .line 396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPdnConnected: need emergency Registration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    xor-int/lit8 v0, v3, 0x1

    .line 397
    invoke-virtual {v2, v0}, Lcom/sec/ims/settings/ImsProfile;->setUicclessEmergency(Z)V

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->removeE911RegiTimer()V

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->isEmergencyEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x12

    .line 400
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 404
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPdnConnected()V

    .line 406
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    :cond_7
    return-void
.end method

.method protected onPdnDisconnected(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 9

    .line 415
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPdnDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-NetEvtCtr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 417
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 422
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x2

    if-ne v3, v4, :cond_1

    .line 423
    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    :cond_1
    new-array v3, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 426
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    const/4 v8, 0x1

    aput-object v4, v3, v8

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_7

    const-string v1, "pdn disconnected - REGISTERED or REGISTERING"

    .line 427
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 428
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    if-ne v1, v6, :cond_2

    .line 429
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 431
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->isTaskHasSepecificPdnType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 432
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-nez v1, :cond_4

    .line 433
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v0

    if-nez v0, :cond_5

    .line 434
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v8, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_2

    .line 437
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v8, v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_2

    .line 440
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v8, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_2

    .line 443
    :cond_7
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v3, :cond_8

    const-string v0, "pdn disconnected - EMERGENCY"

    .line 444
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 445
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 446
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v8, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 448
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    .line 449
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->removeExtendedProfile(I)V

    goto/16 :goto_2

    .line 450
    :cond_8
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_a

    const-string v0, "PDN disconnected received in DEREGISTERING state, send DEREGISTER_TIMEOUT event"

    .line 451
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 454
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 456
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 458
    :cond_a
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->isTaskHasSepecificPdnType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 459
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-ne v0, v1, :cond_b

    goto :goto_0

    :cond_b
    move v8, v7

    .line 460
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_c

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_e

    .line 461
    :cond_c
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    if-eqz v8, :cond_f

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_f

    .line 462
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 463
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 464
    :cond_f
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v1, :cond_11

    .line 465
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 468
    :cond_10
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 469
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 472
    :cond_11
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 477
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_12

    .line 478
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 482
    :cond_12
    :goto_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_13

    .line 483
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 487
    :cond_13
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->resetTaskOnPdnDisconnected()V

    .line 488
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 489
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_14

    .line 490
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 491
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfPreference()V

    .line 492
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetIPSecAllow()V

    .line 494
    :cond_14
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    .line 497
    :cond_15
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x88

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v7, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onPdnFailed(III)V
    .locals 9

    const/4 v0, 0x0

    .line 702
    :try_start_0
    invoke-static {p2}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->valueOf(I)Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPdnFailed: Unknown failCause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "RegiMgr-NetEvtCtr"

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    move-object p2, v0

    .line 707
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 708
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 710
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 711
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 714
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPdnFailed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const v3, 0x1101000a

    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",PDN FAIL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 716
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, p2, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPdnRequestFailed(Ljava/lang/String;I)V

    .line 719
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getRetryTimeOnPdnFail()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 722
    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    if-eqz v5, :cond_2

    .line 723
    iget-object v6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 724
    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    .line 726
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.retryTimeExpired"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "EXTRA_PHONE_ID"

    .line 727
    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 728
    iget-object v6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x2000000

    invoke-static {v6, v7, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    .line 729
    iget-object v6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v3, v4}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 730
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->setRetryTimeOnPdnFail(J)V

    goto/16 :goto_1

    .line 736
    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 737
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p1

    .line 738
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz p2, :cond_4

    .line 739
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 740
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :cond_4
    return-void
.end method

.method onRetryTimeExpired(I)V
    .locals 4

    .line 680
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 682
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 683
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 687
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 688
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v2, 0x0

    .line 689
    iput-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    :cond_1
    const-string v2, "RegiMgr-NetEvtCtr"

    const-string v3, "RetrySetupEventReceiver: release throttle pdn fail"

    .line 692
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 694
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method onVoicePreferredChanged(I)V
    .locals 5

    const-string v0, "RegiMgr-NetEvtCtr"

    const-string v1, "onVoicePreferredChanged:"

    .line 1567
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "VolteServiceModule is not create yet so retry after 3 seconds"

    .line 1569
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x7b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1574
    :cond_0
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onVoWiFiSwitched(I)V

    .line 1575
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1576
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getEpdgManager()Lcom/sec/epdg/EpdgManager;

    move-result-object v1

    .line 1577
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType()I

    move-result v3

    if-eqz v1, :cond_1

    .line 1580
    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgManager;->isPossibleW2LHOAfterCallEndBySim(I)Z

    move-result v2

    .line 1581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "W2L available : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v1, 0xd

    if-ne v3, v1, :cond_2

    if-eqz v2, :cond_2

    const-string p0, "EpdgEventReceiver, waiting for W2L HO event w/o re-regi"

    .line 1584
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1587
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method reconnectPdn(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 7

    .line 627
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->findBestNetwork(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)I

    move-result v0

    .line 633
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->selectPdnType(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v1

    .line 634
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    .line 636
    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 641
    :cond_1
    iget v4, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v4}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "RegiMgr-NetEvtCtr"

    if-nez v0, :cond_3

    .line 642
    iget-boolean v0, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_3

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel ongoing PDN in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 644
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 645
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_2

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppLegacyNetwork(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 649
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 652
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto/16 :goto_0

    .line 653
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    if-eq v1, v0, :cond_7

    .line 654
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    const-string v3, "pdn type has been changed, reconnect."

    invoke-static {v5, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 656
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setPdnType(I)V

    .line 657
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 660
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    .line 661
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v0

    .line 662
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reconnectPdn startTimsTimer rcs pdn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "InternetPdnRequest"

    if-ne v0, v3, :cond_4

    .line 664
    iget-object v0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    invoke-virtual {v0, v4, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 667
    :cond_4
    iget-object v0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 670
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPhoneIdForStartConnectivity(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)I

    move-result v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/core/PdnController;->startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I

    .line 671
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result p0

    if-nez p0, :cond_6

    .line 672
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 673
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    const-string p1, "ImsPdnRequst"

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public setNwChanged(Z)V
    .locals 0

    .line 591
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    return-void
.end method

.method public setRegistrationHandler(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    return-void
.end method

.method public setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    return-void
.end method

.method triggerOmadmConfig(I)V
    .locals 5

    const-string v0, ""

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerOmadmConfig<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "> - mOmadmState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-NetEvtCtr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->TRIGGERED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-eq v1, v2, :cond_3

    .line 774
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->setUnprocessedOmadmConfig(IZ)V

    .line 775
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 776
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendDmConfigTimeout(ILjava/lang/String;)V

    .line 777
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 778
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    if-nez v3, :cond_0

    .line 779
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 780
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 781
    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 782
    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setLboPcscfAddressList(Ljava/util/List;)V

    const/4 v3, -0x1

    .line 783
    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setLboPcscfPort(I)V

    .line 784
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 786
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_1/Address"

    .line 787
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_2/Address"

    .line 788
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_3/Address"

    .line 789
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_4/Address"

    .line 790
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_5/Address"

    .line 791
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_6/Address"

    .line 792
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_1/AddressType"

    .line 793
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_2/AddressType"

    .line 794
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_3/AddressType"

    .line 795
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_4/AddressType"

    .line 796
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_5/AddressType"

    .line 797
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_6/AddressType"

    .line 798
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INTERNAL_KEY_PROCESS_NAME"

    const-string v3, "com.sec.imsservice"

    .line 799
    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://com.samsung.rcs.dmconfigurationprovider/omadm/"

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-static {v3, v2}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 802
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerOmadmConfig : update failure - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 808
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->setOmaDmStateDB(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    :cond_3
    return-void
.end method

.method updateEpdgStatusOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 5

    .line 1268
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1269
    invoke-virtual {p2, p3}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgHOEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 1274
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1275
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_3

    .line 1277
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1280
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/PdnController;->isEpdgAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    iget v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v3, v4, :cond_2

    iget-boolean p2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-eq p2, p3, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    or-int/2addr p2, v0

    if-eqz p2, :cond_3

    .line 1284
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p2, 0x87

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 p2, 0x1d8a8

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2

    :cond_3
    return v1
.end method

.method updateRat(II)V
    .locals 8

    .line 550
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v0

    .line 552
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 554
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 555
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRat(Lcom/sec/internal/ims/core/RegisterTask;I)V

    .line 558
    iget-object v1, v1, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_0

    .line 560
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 561
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 562
    invoke-static {}, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->values()[Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 563
    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->contains(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 564
    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v6

    .line 565
    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/util/UriGenerator;->updateRat(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method updateUtOnNetworkEventChanged(IZLcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 3

    .line 1400
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "ss_enable_in_roaming"

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz p2, :cond_4

    .line 1401
    iget-boolean p2, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez p2, :cond_4

    if-eqz v0, :cond_4

    .line 1402
    iget-boolean p2, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    const/16 v1, 0x12

    if-ne p2, v0, :cond_0

    iget p2, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget p4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq p2, p4, :cond_4

    if-eq p4, v1, :cond_0

    if-ne p2, v1, :cond_4

    .line 1405
    :cond_0
    iget p2, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/4 p3, 0x0

    if-ne p2, v1, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, p3

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, p3

    .line 1408
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1410
    invoke-interface {p0, p1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->enableUt(IZ)V

    :cond_4
    return-void
.end method
