.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;
.super Ljava/lang/Object;
.source "ImsCallSipErrorFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSipErrorFactory"


# instance fields
.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private final mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 46
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 47
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 48
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    return-void
.end method

.method private checkHasCallAndCallType(I)[I
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 472
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionList()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 473
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v2, :cond_1

    .line 475
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    .line 478
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 479
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    .line 480
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    const/4 v4, 0x0

    aput v5, v0, v4

    .line 482
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v4

    aput v4, v0, v5

    goto :goto_1

    .line 483
    :cond_2
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isRemoteHeld()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v4, 0x2

    aput v5, v0, v4

    .line 487
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    aput v5, v0, v4

    .line 491
    :cond_5
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    const/16 v4, 0x9

    if-ne v2, v4, :cond_6

    const/4 v2, 0x4

    aput v5, v0, v2

    .line 496
    :cond_6
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v3, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v3, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v3, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v3, v2, :cond_0

    :cond_7
    const/4 v2, 0x5

    aput v5, v0, v2

    goto :goto_0

    .line 502
    :cond_8
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private needRejectByTerminalSs(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;I)Z
    .locals 4

    .line 434
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 435
    invoke-static {p1, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ss_callbarring_by_network"

    const/4 v3, 0x0

    .line 436
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 439
    invoke-virtual {p0, p1, v0, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorForBarring(Landroid/content/Context;II)Lcom/sec/ims/util/SipError;

    move-result-object p3

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    if-ne p3, v1, :cond_0

    return v2

    .line 444
    :cond_0
    invoke-static {p1, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p3

    const-string/jumbo v1, "ss_callwaiting_by_network"

    .line 445
    invoke-virtual {p3, v1, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_1

    .line 447
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "enable_call_wait"

    .line 448
    invoke-static {p1, v0, p2, v2}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result p1

    .line 450
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object p0

    invoke-interface {p0, v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionCountByCmcType(II)I

    move-result p0

    if-lt p0, v2, :cond_1

    if-nez p1, :cond_1

    .line 452
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "needRejectByTerminalSs: Terminal CW : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " callCount : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " reject call"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v3
.end method


# virtual methods
.method public getSipErrorAsHasCall(Lcom/sec/ims/ImsRegistration;ZZZIIILcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 1

    .line 259
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 p3, 0x2

    if-lt p7, p3, :cond_5

    .line 262
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, p1, :cond_2

    .line 268
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isEnableCallWaitingRule()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 269
    sget-object p8, Lcom/sec/internal/constants/ims/SipErrorVzw;->BUSY_ALREADY_IN_TWO_CALLS:Lcom/sec/ims/util/SipError;

    goto/16 :goto_1

    .line 271
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, p0, :cond_4

    sget-object p0, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-eq v0, p0, :cond_4

    sget-object p0, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v0, p0, :cond_4

    .line 272
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, p0, :cond_4

    sget-object p0, Lcom/sec/internal/constants/Mno;->VODAFONE_IRELAND:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_3

    goto :goto_0

    .line 277
    :cond_3
    sget-object p8, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 273
    :cond_4
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    const-string p1, "checkRejectIncomingCall: 3rd incoming call handling in OneHold and OneActive"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_9

    .line 280
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "checkRejectIncomingCall: hasInCallType: "

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, " callType: "

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PS-LTE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    if-eq p5, p3, :cond_6

    if-ne p6, p3, :cond_7

    .line 285
    :cond_6
    sget-object p8, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    .line 288
    :cond_7
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {p5}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {p6}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 289
    :cond_8
    sget-object p8, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    .line 295
    :cond_9
    :goto_1
    sget-object p0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    if-ne p4, p0, :cond_a

    .line 296
    sget-object p8, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    .line 297
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkRejectIncomingCall: error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object p8
.end method

.method public getSipErrorAsModifying(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/util/SipError;
    .locals 3

    .line 235
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkRejectIncomingCall: Reject call while Call modifying"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    .line 237
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 239
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceModule()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, v2, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string p1, "checkRejectIncomingCall: Reject upgrade call for pulling by SD"

    .line 244
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 245
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    .line 246
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 251
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRejectIncomingCall: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method public getSipErrorAsSessionState(IIZZILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;
    .locals 6

    .line 387
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 388
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionList(I)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v3, :cond_2

    if-nez p2, :cond_2

    .line 390
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 391
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPreAlerting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "checkRejectIncomingCall: found incoming PD session "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p1

    invoke-virtual {p0, p2, p1, p6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorOnDialingState(IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_2
    if-eqz v3, :cond_0

    .line 397
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 401
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 402
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    .line 403
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v5, :cond_6

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v5, :cond_6

    .line 404
    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isDialingCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    if-eq p4, v4, :cond_5

    if-ne p3, v4, :cond_0

    .line 411
    :cond_5
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-virtual {p0, p5, v0, p6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorDuringCall(IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    goto/16 :goto_0

    .line 405
    :cond_6
    :goto_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "checkRejectIncomingCall: found dialing session "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget p1, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    invoke-virtual {p0, p2, p1, p6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorOnDialingState(IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 415
    :cond_7
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSipErrorDuringCall(IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;
    .locals 2

    .line 420
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 421
    sget-object v0, Lcom/sec/internal/constants/Mno;->VIVA_KUWAIT:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x2

    if-ne p3, v0, :cond_0

    if-ne p2, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 424
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 425
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/Mno;->ZAIN_KUWAIT:Lcom/sec/internal/constants/Mno;

    if-eq p3, p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/Mno;->OOREDOO_KUWAIT:Lcom/sec/internal/constants/Mno;

    if-ne p3, p1, :cond_2

    :cond_1
    if-ne p2, v1, :cond_2

    .line 427
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public getSipErrorForBarring(Landroid/content/Context;II)Lcom/sec/ims/util/SipError;
    .locals 3

    .line 319
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkRejectIncomingCall: Call barring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    const-string/jumbo p3, "ss_video_cb_pref"

    .line 322
    invoke-static {p1, p2, p3, v1}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const-string/jumbo p3, "ss_volte_cb_pref"

    .line 325
    invoke-static {p1, p2, p3, v1}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p1

    :goto_0
    and-int/lit8 p2, p1, 0x8

    const/16 p3, 0x8

    if-ne p2, p3, :cond_1

    const-string p0, "checkRejectIncomingCall: Incoming call is barried"

    .line 331
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    return-object p0

    :cond_1
    const/16 p2, 0xa

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_2

    .line 335
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "checkRejectIncomingCall: Incoming call is barried in roaming condition"

    .line 336
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    return-object p0

    .line 342
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    return-object p0
.end method

.method public getSipErrorForCheckRejectIncomingCall(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;I)Lcom/sec/ims/util/SipError;
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    .line 90
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 92
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v11

    .line 93
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v12

    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    .line 96
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v11, v1, :cond_0

    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v12}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v3, 0xe

    if-ne v1, v3, :cond_0

    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 97
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isMmtelAcquiredEver()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v1, v12}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

    return-object v0

    :cond_0
    const-string v1, "mmtel"

    .line 103
    invoke-virtual {v10, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    move/from16 v13, p3

    if-nez v1, :cond_1

    .line 104
    invoke-virtual {v9, v10, v13}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorForNoMmtel(Lcom/sec/ims/ImsRegistration;I)Lcom/sec/ims/util/SipError;

    move-result-object v1

    if-eq v1, v0, :cond_1

    return-object v1

    .line 110
    :cond_1
    invoke-direct/range {p0 .. p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->needRejectByTerminalSs(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    return-object v0

    .line 114
    :cond_2
    invoke-direct {v9, v12}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->checkHasCallAndCallType(I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 115
    aget v3, v0, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move v14, v4

    goto :goto_0

    :cond_3
    move v14, v1

    .line 116
    :goto_0
    aget v7, v0, v4

    const/4 v3, 0x2

    .line 117
    aget v3, v0, v3

    if-ne v3, v4, :cond_4

    move v15, v4

    goto :goto_1

    :cond_4
    move v15, v1

    :goto_1
    const/4 v3, 0x3

    .line 118
    aget v3, v0, v3

    if-ne v3, v4, :cond_5

    move v8, v4

    goto :goto_2

    :cond_5
    move v8, v1

    :goto_2
    const/4 v3, 0x4

    .line 119
    aget v3, v0, v3

    if-ne v3, v4, :cond_6

    move v6, v4

    goto :goto_3

    :cond_6
    move v6, v1

    :goto_3
    const/4 v3, 0x5

    .line 120
    aget v0, v0, v3

    if-ne v0, v4, :cond_7

    move v5, v4

    goto :goto_4

    :cond_7
    move v5, v1

    :goto_4
    move-object/from16 v0, p0

    move v1, v12

    move v3, v14

    move v4, v15

    move v13, v5

    move/from16 v5, p3

    move/from16 p1, v7

    move v7, v6

    move-object v6, v11

    .line 122
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorAsSessionState(IIZZILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;

    move-result-object v6

    .line 125
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceModule()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 126
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceModule()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object v0

    invoke-virtual {v0, v12, v10}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(ILcom/sec/ims/ImsRegistration;)I

    move-result v0

    goto :goto_5

    .line 128
    :cond_8
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, v12}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionCount(I)I

    move-result v0

    :goto_5
    move v5, v0

    .line 131
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkRejectIncomingCall: numPsCall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasInCall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasHoldCall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasTtyCall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isModifyOngoing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasConfCall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v14

    move v3, v15

    move-object/from16 v16, v4

    move v4, v8

    move v8, v5

    move/from16 v5, p1

    move-object/from16 v17, v6

    move/from16 v6, p3

    move/from16 v18, v7

    move v7, v8

    move-object/from16 v8, v17

    .line 137
    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorAsHasCall(Lcom/sec/ims/ImsRegistration;ZZZIIILcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    .line 141
    invoke-virtual {v9, v10, v14, v15, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorOnCsNetwork(Lcom/sec/ims/ImsRegistration;ZZLcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v5

    .line 143
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v11, v0, :cond_9

    .line 144
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorForVzw(Lcom/sec/ims/ImsRegistration;ILjava/lang/Boolean;Ljava/lang/Boolean;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v5

    goto :goto_7

    .line 145
    :cond_9
    sget-object v0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v11, v0, :cond_a

    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, v12}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->hasCsCall(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_7

    .line 149
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v13, :cond_b

    .line 151
    invoke-virtual {v9, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorAsModifying(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    return-object v0

    .line 153
    :cond_b
    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v12}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->hasCsCall(I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v1, v12}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 154
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "checkRejectIncomingCall: hasCsCall"

    move-object/from16 v1, v16

    .line 155
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v0, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v11, v0, :cond_d

    sget-object v0, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-eq v11, v0, :cond_d

    sget-object v0, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-eq v11, v0, :cond_d

    sget-object v0, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v11, v0, :cond_c

    goto :goto_6

    .line 159
    :cond_c
    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_7

    .line 157
    :cond_d
    :goto_6
    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    :cond_e
    :goto_7
    return-object v5
.end method

.method public getSipErrorForNoMmtel(Lcom/sec/ims/ImsRegistration;I)Lcom/sec/ims/util/SipError;
    .locals 7

    .line 346
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 347
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 348
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkRejectIncomingCall: no mmtel registration."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 350
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v5, "checkRejectIncomingCall: no mmtel or mmtel-video registered."

    const-string v6, "mmtel-video"

    if-ne v1, v4, :cond_5

    .line 355
    invoke-virtual {p1, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 356
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 358
    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v2, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v1, v2, :cond_0

    .line 359
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_NO_VOPS:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 361
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCallBarredBySSAC(II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 363
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_SSAC_ON:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 364
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->acceptCallWhileSmsipRegistered(Lcom/sec/ims/ImsRegistration;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 366
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 367
    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result p0

    if-nez p0, :cond_4

    .line 368
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 370
    :cond_4
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_VOLTE_OFF:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 373
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v1, p0, :cond_7

    sget-object p0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v1, p0, :cond_6

    goto :goto_0

    .line 379
    :cond_6
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 374
    :cond_7
    :goto_0
    invoke-virtual {p1, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 375
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    :cond_8
    :goto_1
    return-object v3
.end method

.method public getSipErrorForVzw(Lcom/sec/ims/ImsRegistration;ILjava/lang/Boolean;Ljava/lang/Boolean;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 5

    .line 186
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 187
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v1

    .line 189
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 190
    sget-object p5, Lcom/sec/internal/constants/ims/SipErrorVzw;->VIDEO_UPGRADE_REQUEST_IN_PROGRESS:Lcom/sec/ims/util/SipError;

    goto/16 :goto_1

    :cond_0
    const/4 p3, 0x2

    const-string v2, ""

    const/16 v3, 0x1e6

    const/16 v4, 0x12

    if-ne p2, p3, :cond_4

    .line 192
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getTtyMode(I)I

    move-result p1

    sget p2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 193
    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getTtyMode(I)I

    move-result p1

    sget p2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne p1, p2, :cond_2

    .line 194
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 195
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    const-string p2, "checkRejectIncomingCall: VT not allowed during TTY is on."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object p5, Lcom/sec/internal/constants/ims/SipErrorVzw;->TTY_ON:Lcom/sec/ims/util/SipError;

    goto/16 :goto_1

    .line 199
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 200
    invoke-interface {p1, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result p1

    if-ne p1, v4, :cond_9

    .line 202
    new-instance p5, Lcom/sec/ims/util/SipError;

    invoke-direct {p5, v3, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 p3, 0x1

    if-eq p2, p3, :cond_5

    const/16 p3, 0xe

    if-ne p2, p3, :cond_9

    .line 208
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getDataAccessNetwork(I)I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 209
    invoke-interface {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p2

    iget-object p2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object p3, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne p2, p3, :cond_6

    goto :goto_0

    .line 220
    :cond_6
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "mmtel"

    .line 221
    invoke-virtual {p1, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 222
    sget-object p5, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 210
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 211
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 212
    sget-object p5, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 215
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p1, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result p1

    if-ne p1, v4, :cond_9

    .line 217
    new-instance p5, Lcom/sec/ims/util/SipError;

    invoke-direct {p5, v3, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    .line 226
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->hasCsCall(I)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 228
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    const-string p1, "checkRejectIncomingCall: hasCsCall"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object p5, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ACTIVE_1X_CALL:Lcom/sec/ims/util/SipError;

    :cond_a
    return-object p5
.end method

.method protected getSipErrorIncomingCallWithVolteOff(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;ZLcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/SipError;
    .locals 3

    .line 304
    invoke-virtual {p4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 305
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    .line 306
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_1

    if-eqz p3, :cond_0

    .line 308
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorForCheckRejectIncomingCall(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;I)Lcom/sec/ims/util/SipError;

    move-result-object v1

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p0, p2, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorIncomingCallWithVolteOffForVzw(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/SipError;

    move-result-object v1

    goto :goto_0

    .line 312
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_2

    .line 313
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSipErrorIncomingCallWithVolteOffForVzw(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/SipError;
    .locals 3

    .line 72
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_VOLTE_OFF:Lcom/sec/ims/util/SipError;

    .line 73
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 74
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v2, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v1, v2, :cond_0

    .line 75
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_NO_VOPS:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 77
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result p1

    invoke-interface {v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCallBarredBySSAC(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 79
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_SSAC_ON:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->acceptCallWhileSmsipRegistered(Lcom/sec/ims/ImsRegistration;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 81
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 83
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result p0

    if-nez p0, :cond_4

    .line 84
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getSipErrorOnCsNetwork(Lcom/sec/ims/ImsRegistration;ZZLcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 6

    .line 167
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 169
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v2

    .line 170
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSipErrorOnCsNetwork: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v5, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    iget v5, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 171
    invoke-interface {v5, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    iget v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 174
    invoke-interface {v3, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 175
    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v3, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 177
    :goto_0
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    if-nez p3, :cond_4

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 178
    invoke-interface {p0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz v2, :cond_4

    .line 179
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    return-object p0

    :cond_4
    return-object p4
.end method

.method public getSipErrorOnDialingState(IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;
    .locals 1

    .line 52
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 53
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_0

    .line 54
    sget-object p3, Lcom/sec/internal/constants/ims/SipErrorVzw;->BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    sget-object p3, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_2

    .line 58
    sget-object p3, Lcom/sec/internal/constants/ims/SipErrorUscc;->BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 60
    :cond_2
    sget-object p3, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    :goto_0
    if-nez p1, :cond_3

    .line 64
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 65
    :cond_3
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, p3

    :cond_5
    :goto_1
    return-object p0
.end method
