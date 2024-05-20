.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;
.super Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
.source "ImsEmergencySession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mE911RegiTime:I


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmE911RegiTime(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)I
    .locals 0

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mE911RegiTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetEmergencyRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Lcom/sec/ims/ImsRegistration;
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getEmergencyRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetEmergencyUa(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getEmergencyUa()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetIMSRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Lcom/sec/ims/ImsRegistration;
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getIMSRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhasInProgressEmergencyTask(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->hasInProgressEmergencyTask()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misNoNextPcscf(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->isNoNextPcscf(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mneedRemoveTimerOn18X(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->needRemoveTimerOn18X()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mneedStartTimerOnAlerting(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->needStartTimerOnAlerting()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1239
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    const-string p1, "ImsEmergencySession"

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    .line 1240
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->setPhoneId(I)V

    return-void
.end method

.method private getEmergencyRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 8

    .line 1151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v0, :cond_4

    .line 1154
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1156
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1159
    :goto_0
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    .line 1160
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    .line 1161
    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v7

    if-eq v6, v7, :cond_1

    goto :goto_2

    .line 1165
    :cond_1
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v0, :cond_2

    .line 1166
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v6

    if-ne v6, v1, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-object v5

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private getEmergencyUa()Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 2

    .line 1277
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xf

    .line 1280
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getIMSRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 6

    .line 1181
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v0, :cond_1

    .line 1182
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1183
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    if-ne v4, v5, :cond_0

    .line 1184
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasInProgressEmergencyTask()Z
    .locals 3

    .line 1305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v0, :cond_0

    .line 1306
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    .line 1307
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getEmergencyGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1309
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    .line 1310
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emergency Task status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    sget-object p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isNoNextPcscf(I)Z
    .locals 2

    .line 1293
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz p1, :cond_0

    .line 1294
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    .line 1295
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getEmergencyGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1297
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isNoNextPcscf()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1300
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TMO_E911 isNoNextPcscf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private needRemoveTimerOn18X()Z
    .locals 4

    .line 1330
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1332
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "needRemoveTimerOn18X, EmergencyProfile is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1335
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getNeedRemoveE911TimerOn18x()Z

    move-result v0

    .line 1337
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 1338
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "E911 Timer removed if 180 / 183 received"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private needStartTimerOnAlerting()Z
    .locals 3

    .line 1320
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1322
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "needStartTimerOnAlerting, EmergencyProfile is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1326
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getNeedStartE911TimerOnAlerting()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getDelayLte911Fail(Lcom/sec/internal/constants/Mno;)J
    .locals 5

    .line 1346
    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const-wide/16 v1, 0x0

    if-eq p1, v0, :cond_3

    .line 1347
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-wide/16 v3, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1349
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1350
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getWlan911Fail()I

    move-result p0

    goto :goto_0

    .line 1352
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getLte911Fail()I

    move-result p0

    goto :goto_0

    .line 1354
    :cond_1
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mE911RegiTime:I

    if-lez p1, :cond_2

    .line 1356
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getDelayLte911Fail - 0, RegiMgr trigger Fail timer"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1358
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getLte911FailFromEmergencyProfile()I

    move-result p0

    :goto_0
    int-to-long p0, p0

    mul-long v1, p0, v3

    :cond_3
    :goto_1
    return-wide v1
.end method

.method protected getE911InviteTo18xTime()I
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ReadyToCall] EmergencyProfile is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ReadyToCall] getE911InviteTo18xTimeFromEmergencyProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getE911InviteTo18x()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getE911InviteTo18x()I

    move-result p0

    return p0
.end method

.method protected getE911RegiTime()I
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ReadyToCall] EmergencyProfile is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ReadyToCall] getE911RegiTimeFromEmergencyProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getE911RegiTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getE911RegiTime()I

    move-result p0

    return p0
.end method

.method protected getLte911Fail()I
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    const/16 v1, 0x14

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p0

    const-string v2, "omadm/./3GPP_IMS/T_LTE_911_FAIL"

    .line 57
    invoke-static {v0, v2, v1, p0}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected getLte911FailFromEmergencyProfile()I
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ReadyToCall] EmergencyProfile is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xa

    return p0

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ReadyToCall] getLte911FailFromEmergencyProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getLte911Fail()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getLte911Fail()I

    move-result p0

    return p0
.end method

.method protected getOriginatingUri()Lcom/sec/ims/util/ImsUri;
    .locals 5

    .line 1194
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1195
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1197
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getEmergencyRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1198
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getIMSRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-nez v2, :cond_4

    .line 1201
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    .line 1202
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getOriginatingUri: emergency call without registration."

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    goto :goto_1

    .line 1203
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    :goto_1
    return-object v4

    .line 1204
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    .line 1205
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getOriginatingUri: emergency call without SIM"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "sip:anonymous@anonymous.invalid"

    .line 1206
    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0

    .line 1209
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getOriginatingUri: No emergency registration. Use IMEI-based preferred-ID"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 1218
    :cond_4
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getRegisteredImpu()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 1219
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_6

    .line 1220
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1221
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 1222
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-virtual {v3, v4}, Lcom/sec/ims/util/ImsUri$UriType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1223
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getOriginatingUri: Found Tel-URI"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    move-object v0, p0

    goto :goto_2

    .line 1230
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getOriginatingUri: emergency call with registration."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    :cond_7
    :goto_2
    return-object v0
.end method

.method public getRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 1147
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getEmergencyRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method protected getWlan911Fail()I
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    const/16 v1, 0xa

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p0

    const-string v2, "omadm/./3GPP_IMS/TWLAN_911_CALLFAIL_TIMER"

    .line 62
    invoke-static {v0, v2, v1, p0}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public init(Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 15

    move-object v13, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1245
    iput-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 1246
    iput-object v1, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 1248
    iget v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->refreshAuEmergencyProfile(I)V

    .line 1250
    iget-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_0

    .line 1251
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    .line 1253
    :cond_0
    iget-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1255
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 1259
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getE911RegiTime()I

    move-result v0

    iput v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->mE911RegiTime:I

    .line 1260
    new-instance v14, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v2, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    iget-object v4, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v5, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v6, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v7, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v8, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v9, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v10, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v12, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLooper:Landroid/os/Looper;

    const-string v11, "EmergencyCallStateMachine"

    move-object v0, v14

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v12}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v14, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 1262
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->init()V

    .line 1263
    iget-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->registerForMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1265
    iget-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start EmergencyCallStateMachine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/helper/StateMachine;->start()V

    .line 1267
    new-instance v11, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    iget-object v2, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v7, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v8, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    iget-object v9, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v10, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;)V

    iput-object v11, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    .line 1269
    new-instance v8, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    iget-object v2, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v7, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v8, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    .line 1271
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;

    iget-object v1, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDiagnosisController:Lcom/sec/internal/ims/servicemodules/volte2/IDiagnosisController;

    .line 1272
    iget-object v0, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1273
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setIsNrSaMode()V

    return-void
.end method

.method protected isEmergencyAvailable(Lcom/sec/internal/constants/Mno;)Z
    .locals 7

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 105
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VoWIFI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    .line 107
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "networktype : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "mmtel"

    .line 108
    invoke-virtual {v0, v4, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string v3, "emergency service unavailable in current RAT"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sec/internal/constants/Mno;

    .line 116
    sget-object v4, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v2

    sget-object v4, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v1

    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    .line 119
    invoke-static {v1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v1

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 118
    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "if VoPS is not supported, do CSFB"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 125
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_4

    .line 126
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isEmergencyCallProhibited(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "if DCM get 503 error in regi, do CSFB"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move v2, v0

    :goto_3
    return v2
.end method

.method protected setPhoneId(I)V
    .locals 0

    .line 1287
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    return-void
.end method

.method public setSessionId(I)V
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->appendSessionIdToLogTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->LOG_TAG:Ljava/lang/String;

    .line 1177
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSessionId(I)V

    return-void
.end method
