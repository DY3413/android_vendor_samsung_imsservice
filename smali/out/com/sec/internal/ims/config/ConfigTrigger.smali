.class public Lcom/sec/internal/ims/config/ConfigTrigger;
.super Ljava/lang/Object;
.source "ConfigTrigger.java"


# static fields
.field private static final EXTRA_IS_IIDTOKEN:Ljava/lang/String; = "is_iid_token_needed"

.field private static final EXTRA_IS_RCS_REGI:Ljava/lang/String; = "is_rcs_registered"

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phoneId"

.field private static final INTENT_ACTION_RCS_AUTOCONFIG_START:Ljava/lang/String; = "com.android.ims.RCS_AUTOCONFIG_START"

.field private static final LOG_TAG:Ljava/lang/String; = "ConfigTrigger"

.field private static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.messaging"


# instance fields
.field private mAcsTryReason:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;",
            ">;"
        }
    .end annotation
.end field

.field private mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field private final mContext:Landroid/content/Context;

.field private mDualSimRcsAutoConfig:Z

.field private final mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mNeedResetConfig:Z

.field private mReAutoConfigPerformed:[Z

.field private mReadyStartCmdList:Landroid/util/SparseBooleanArray;

.field private mReadyStartForceCmd:[Z

.field private mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mTokenDeletedReason:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5RapquM2UZBmzGg94YJ-_wxPY6I(Ljava/lang/Integer;)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->lambda$getTokenDeletedReason$0(Ljava/lang/Integer;)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/helper/SimpleEventLog;)V
    .registers 7

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartForceCmd:[Z

    const/4 v1, 0x0

    .line 90
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mNeedResetConfig:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mDualSimRcsAutoConfig:Z

    .line 92
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartCmdList:Landroid/util/SparseBooleanArray;

    .line 93
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    .line 94
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mTokenDeletedReason:Ljava/util/Map;

    .line 97
    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReAutoConfigPerformed:[Z

    .line 100
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 102
    iput-object p3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 103
    iput-object p4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 105
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    if-gtz p1, :cond_4c

    .line 107
    sget-object p0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "an amount of SIM slots ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not valid"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 110
    :cond_4c
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReAutoConfigPerformed:[Z

    .line 111
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartForceCmd:[Z

    :goto_54
    return-void
.end method

.method private static synthetic lambda$getTokenDeletedReason$0(Ljava/lang/Integer;)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;
    .registers 1

    .line 545
    sget-object p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    return-object p0
.end method


# virtual methods
.method protected getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;
    .registers 4

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    if-nez v0, :cond_19

    .line 505
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 506
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-object v0
.end method

.method protected getDualSimRcsAutoConfig()Z
    .registers 1

    .line 556
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mDualSimRcsAutoConfig:Z

    return p0
.end method

.method protected getNeedResetConfig()Z
    .registers 1

    .line 586
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mNeedResetConfig:Z

    return p0
.end method

.method protected getReadyStartCmdList(I)Z
    .registers 2

    .line 565
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartCmdList:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method protected getReadyStartCmdListIndexOfKey(I)I
    .registers 2

    .line 573
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartCmdList:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p0

    return p0
.end method

.method protected getReadyStartForceCmd(I)Z
    .registers 2

    .line 577
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartForceCmd:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method protected getTokenDeletedReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;
    .registers 3

    .line 545
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mTokenDeletedReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/config/ConfigTrigger$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/ConfigTrigger$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    return-object p0
.end method

.method protected isValidAcsVersion(I)Z
    .registers 11

    .line 342
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isValidAcsVersion:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    return v2

    .line 347
    :cond_f
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-eqz v3, :cond_16

    return v2

    .line 350
    :cond_16
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_24

    const-string p0, "DDS set to other SIM"

    .line 351
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 354
    :cond_24
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getGlobalGcEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {v3, p1, v1, v4}, Lcom/sec/internal/ims/util/ConfigUtil;->isSimMobilityRCS(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string p0, "isValidAcsVersion: This is a other country SIM, RCS disabled in SIM mobility"

    .line 355
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 359
    :cond_3c
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_47

    move v3, v4

    goto :goto_48

    :cond_47
    move v3, v2

    .line 361
    :goto_48
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v5, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v5

    .line 363
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v6, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/params/ACSConfig;->isAcsCompleted()Z

    move-result v6

    .line 364
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->checkMdmRcsStatus(Landroid/content/Context;I)Z

    move-result p0

    .line 365
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RCS switch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", isRcsAcsCompleted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p0, :cond_8a

    const-string p0, "RCS service isn\'t allowed by MDM"

    .line 368
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_8a
    if-nez v6, :cond_a6

    .line 373
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCS switch is on & config version: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". This shouldn\'t happen!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    :cond_a6
    if-nez v3, :cond_c7

    .line 379
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 380
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq p0, v3, :cond_b8

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p0, v3, :cond_c0

    :cond_b8
    const-string p0, "jibe"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c7

    :cond_c0
    const-string/jumbo p0, "userSetting is disabled"

    .line 382
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_c7
    if-eqz v5, :cond_d7

    .line 387
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_d7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_d6

    goto :goto_d7

    :cond_d6
    return v4

    .line 389
    :cond_d7
    :goto_d7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "version is improper : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method protected isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .registers 10

    .line 170
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 171
    sget-object v1, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isWaitAutoConfig:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 174
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    .line 175
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForAmRcs(Landroid/content/Context;I)Z

    move-result v4

    .line 176
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getGlobalGcEnabled(Landroid/content/Context;I)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_54

    .line 177
    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForRcs(I)Z

    move-result v5

    if-nez v5, :cond_2a

    if-eqz v4, :cond_54

    .line 179
    :cond_2a
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v5

    const/4 v7, 0x1

    if-nez v5, :cond_47

    if-eqz v4, :cond_38

    goto :goto_47

    .line 182
    :cond_38
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 183
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_45

    goto :goto_4c

    :cond_45
    move v7, v6

    goto :goto_4c

    :cond_47
    :goto_47
    const-string v4, "isWaitAutoConfig: RCS is enabled in SIM mobility"

    .line 180
    invoke-static {v1, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_4c
    if-nez v7, :cond_54

    const-string p0, "isWaitAutoConfig: This is a other country SIM, RCS disabled in SIM mobility"

    .line 188
    invoke-static {v1, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v6

    .line 192
    :cond_54
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v1

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 193
    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->isAcsCompleted()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_83

    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/params/ACSConfig;->needForceAcs()Z

    move-result p0

    if-eqz p0, :cond_83

    .line 194
    :cond_7a
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result p0

    return p0

    :cond_83
    return v6
.end method

.method protected resetAcsTryReason(I)V
    .registers 4

    .line 512
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    if-eqz v0, :cond_12

    .line 513
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    if-eq v0, v1, :cond_1d

    .line 514
    :cond_12
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 515
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method resetReAutoConfigOption(I)V
    .registers 4

    .line 123
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReAutoConfigPerformed:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, p1
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1d

    .line 125
    :catch_6
    sget-object p0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "there is no such a SIM slot number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method protected resetTokenDeletedReason(I)V
    .registers 4

    .line 549
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mTokenDeletedReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    if-nez v0, :cond_19

    .line 551
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mTokenDeletedReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-void
.end method

.method protected sendRcsAutoconfigStart(I)V
    .registers 9

    .line 671
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 673
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 674
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v3

    if-eqz v3, :cond_1d

    const-string/jumbo v2, "root/application/1/services/rcsstate"

    .line 676
    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 678
    :cond_1d
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isIidTokenNeeded(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    .line 681
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/ImsRegistration;

    const-string v6, "options"

    .line 682
    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5d

    const-string v6, "im"

    .line 683
    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5d

    const-string/jumbo v6, "slm"

    .line 684
    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    goto :goto_5d

    :cond_5b
    move v5, v4

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 v5, 0x1

    :goto_5e
    if-eqz v5, :cond_35

    :cond_60
    const-string v3, "jibe"

    .line 691
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string/jumbo v3, "sec"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 692
    :cond_77
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isConfigModuleBootUp()Z

    move-result v0

    if-nez v0, :cond_93

    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isMessagingReady()Z

    move-result v0

    if-eqz v0, :cond_88

    goto :goto_93

    .line 703
    :cond_88
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    const/4 v0, 0x0

    const/16 v1, 0x7d0

    const/16 v2, 0x1a

    invoke-interface {p0, v2, p1, v0, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->sendConfigMessageDelayed(IILjava/lang/Object;I)V

    goto :goto_c3

    .line 693
    :cond_93
    :goto_93
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendBroadcast com.android.ims.RCS_AUTOCONFIG_START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.ims.RCS_AUTOCONFIG_START"

    .line 695
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_iid_token_needed"

    .line 696
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "is_rcs_registered"

    .line 697
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "phoneId"

    .line 698
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.android.messaging"

    .line 699
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 700
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 701
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_c3
    :goto_c3
    return-void
.end method

.method protected setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V
    .registers 6

    .line 497
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoconfigTryReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",TR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13000005

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 499
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setDualSimRcsAutoConfig(Z)V
    .registers 5

    .line 560
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualSimRcsAutoConfig: isDualSimAcs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mDualSimRcsAutoConfig:Z

    return-void
.end method

.method protected setNeedResetConfig(Z)V
    .registers 5

    .line 590
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNeedResetConfig: needResetConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mNeedResetConfig:Z

    return-void
.end method

.method protected setRcsClientConfiguration(ILcom/sec/internal/interfaces/ims/config/IWorkflow;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 642
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isGoogDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v0

    .line 643
    sget-object v1, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRcsClientConfiguration: isAmDefault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 644
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_32

    if-eqz v0, :cond_32

    if-eqz p2, :cond_32

    const-string/jumbo p0, "setRcsClientConfiguration: imsSingleRegi is required: try to set rcc info"

    .line 645
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 646
    invoke-interface/range {p2 .. p7}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->setRcsClientConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method protected setReadyStartCmdList(IZ)V
    .registers 3

    .line 569
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartCmdList:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method protected setReadyStartForceCmd(IZ)V
    .registers 6

    .line 581
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReadyStartForceCmd["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: readyStartForceCmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartForceCmd:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method protected setRegisterFromApp(ZI)V
    .registers 6

    .line 151
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRegisterFromApp:"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    if-eqz p1, :cond_4f

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 159
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 160
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRegisterFromApp: set AcsCompleteStatus as false"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    goto :goto_17

    .line 164
    :cond_4a
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->FROM_APP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 166
    :cond_4f
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    return-void
.end method

.method protected setStateforTriggeringACS(I)V
    .registers 7

    .line 130
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setStateforTriggeringACS:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_87

    if-nez v1, :cond_18

    goto/16 :goto_87

    .line 136
    :cond_18
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 137
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_87

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->isAcsCompleted()Z

    move-result v0

    if-nez v0, :cond_87

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_87

    .line 138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_40
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 139
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 140
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v3, v4, :cond_7a

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_40

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_7a

    sget-object v3, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_7a

    sget-object v3, Lcom/sec/internal/constants/Mno;->CLARO_ARGENTINA:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_7a

    sget-object v3, Lcom/sec/internal/constants/Mno;->CLARO_COLOMBIA:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_7a

    sget-object v3, Lcom/sec/internal/constants/Mno;->CLARO_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_7a

    sget-object v3, Lcom/sec/internal/constants/Mno;->TIM_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_40

    .line 142
    :cond_7a
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v4, "RegisterTask setState: CONFIGURING"

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 143
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_40

    :cond_87
    :goto_87
    return-void
.end method

.method protected setTokenDeletedReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V
    .registers 6

    .line 539
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoconfigTryReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",TR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13000005

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 541
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mTokenDeletedReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected startAutoConfig(ZLandroid/os/Message;I)V
    .registers 7

    .line 437
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAutoConfig: forced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",FORCE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13000003

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-nez p1, :cond_38

    const/4 p1, 0x2

    .line 440
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    goto :goto_3c

    :cond_38
    const/4 p1, 0x1

    .line 442
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    :goto_3c
    return-void
.end method

.method protected startAutoConfigDualsim(ILandroid/os/Message;)V
    .registers 4

    const/16 v0, 0x9

    .line 447
    invoke-virtual {p0, v0, p2, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method protected startConfig(ILandroid/os/Message;I)V
    .registers 7

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->sendConfigMessage(II)V

    .line 452
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startConfig: cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_35

    const/4 v1, 0x2

    if-eq p1, v1, :cond_35

    const/16 v1, 0x14

    if-eq p1, v1, :cond_6b

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_6b

    packed-switch p1, :pswitch_data_72

    const-string/jumbo p0, "unknown cmd"

    .line 477
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 457
    :cond_35
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->sendRcsAutoconfigStart(I)V

    .line 460
    :pswitch_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_49

    invoke-virtual {p2}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4b

    :cond_49
    const-string p2, "null"

    :goto_4b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object p2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Autoconfig start: cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 474
    :cond_6b
    :pswitch_6b
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p0, p1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->sendConfigMessage(II)V

    :goto_70
    return-void

    nop

    :pswitch_data_72
    .packed-switch 0x5
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_38
    .end packed-switch
.end method

.method protected triggerAutoConfig(ZILjava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)Z"
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerAutoConfig: forceAutoconfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_134

    if-nez p3, :cond_22

    goto/16 :goto_134

    .line 232
    :cond_22
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 233
    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsCanada(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 234
    :cond_32
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 236
    invoke-interface {v4, p3, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->checkRcsServiceModules(Ljava/util/List;I)V

    .line 240
    :cond_3b
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v4

    if-nez v4, :cond_fd

    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v4, p2, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v1

    if-eqz v1, :cond_fd

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->isAcsCompleted()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_fd

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 241
    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->needForceAcs()Z

    move-result v1

    if-eqz v1, :cond_fd

    :cond_67
    const-string/jumbo v1, "triggerAutoConfig: try to start autoConfig"

    .line 242
    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 244
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfigForKor(ZILjava/util/List;)V

    return v2

    .line 247
    :cond_77
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "phoneId"

    .line 248
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    sget-object v0, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne v3, v0, :cond_cb

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    monitor-enter v0

    .line 252
    :try_start_88
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v1

    .line 253
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c3

    .line 255
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_98
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 256
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_98

    .line 257
    sget-object p3, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop triggerAutoConfig because other slot is configuring"

    invoke-static {p3, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 258
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 p3, 0x61a8

    const/16 v1, 0xf

    invoke-interface {p0, v1, p2, p1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->sendConfigMessageDelayed(IILjava/lang/Object;I)V

    .line 259
    monitor-exit v0

    return v2

    .line 263
    :cond_c3
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setStateforTriggeringACS(I)V

    .line 264
    monitor-exit v0

    goto :goto_ce

    :catchall_c8
    move-exception p0

    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_88 .. :try_end_ca} :catchall_c8

    throw p0

    .line 266
    :cond_cb
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setStateforTriggeringACS(I)V

    .line 269
    :goto_ce
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->getDualSimRcsAutoConfig()Z

    move-result v0

    const/16 v1, 0xd

    if-eqz v0, :cond_f3

    .line 270
    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 271
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1, v1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfigDualsim(ILandroid/os/Message;)V

    goto :goto_ef

    .line 273
    :cond_e6
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, v1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p3

    invoke-interface {v0, p1, p3, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    .line 275
    :goto_ef
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setDualSimRcsAutoConfig(Z)V

    goto :goto_133

    .line 277
    :cond_f3
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p0, v1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p3

    invoke-interface {p0, p1, p3, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    goto :goto_133

    :cond_fd
    const-string/jumbo p1, "triggerAutoConfig: unable to start autoConfig"

    .line 280
    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-nez p1, :cond_10f

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result p1

    if-eqz p1, :cond_133

    .line 284
    :cond_10f
    :try_start_10f
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReAutoConfigPerformed:[Z

    aget-boolean p1, p1, p2

    if-nez p1, :cond_133

    .line 285
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object p1

    .line 288
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isRcsEnabled(I)Z

    move-result p1

    const/4 p3, 0x1

    xor-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_133

    const-string p1, "attempt to start autoConfig will be made one more time"

    .line 290
    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReAutoConfigPerformed:[Z

    aput-boolean p3, p0, p2
    :try_end_12b
    .catch Ljava/lang/NullPointerException; {:try_start_10f .. :try_end_12b} :catch_12c

    goto :goto_133

    .line 296
    :catch_12c
    sget-object p0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string p1, "information about performing re-autoconfiguration is unavailable"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_133
    :goto_133
    return v2

    :cond_134
    :goto_134
    const-string/jumbo p0, "triggerAutoConfig: sm/regiTaskList is null"

    .line 228
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method protected triggerAutoConfigForKor(ZILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)V"
        }
    .end annotation

    .line 305
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 307
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 308
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p3

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p3, v1, :cond_2d

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p3

    if-eqz p3, :cond_2d

    .line 309
    sget-object p0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "triggerAutoConfigForKor: already autoconfiguration is processing and not get complete notify yet"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 313
    :cond_2d
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p3

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p3, v2, :cond_45

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p3

    if-eqz p3, :cond_45

    .line 314
    iget-object p3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "RegisterTask setState: CONFIGURING"

    invoke-virtual {p3, p2, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 315
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 317
    :cond_45
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "phoneId"

    .line 318
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->needForceAcs()Z

    move-result v0

    const/16 v1, 0xd

    if-eqz v0, :cond_6c

    .line 320
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    const/4 p1, 0x1

    invoke-interface {p0, v1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p3

    invoke-interface {p0, p1, p3, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    goto :goto_9e

    .line 322
    :cond_6c
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p0, v1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p3

    invoke-interface {p0, p1, p3, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    goto :goto_9e

    .line 327
    :cond_76
    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 330
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    .line 331
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v1, :cond_4

    .line 332
    sget-object p0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "triggerAutoConfigForKor: MSISDN is null, try to RCS ACS after registered VoLTE"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_9e
    :goto_9e
    return-void
.end method

.method protected triggerAutoConfiguration(I)V
    .registers 7

    .line 651
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isGoogDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v0

    .line 653
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/google/SecImsNotifier;->getRcsClientConfiguration(II)Ljava/lang/String;

    move-result-object v1

    .line 655
    sget-object v2, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "triggerAutoConfiguration: isAmDefault: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "clientVendor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "Goog"

    .line 656
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6f

    if-eqz v0, :cond_6f

    const-string/jumbo v0, "triggerAutoConfiguration: imsSingleRegi is required: try to trigger autoConfig forcibly"

    .line 657
    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 660
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 661
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 662
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    const/4 v2, 0x1

    .line 663
    invoke-virtual {p0, v2, p1, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfig(ZILjava/util/List;)Z

    goto :goto_4a

    :cond_6f
    return-void
.end method

.method protected tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V
    .registers 8

    .line 397
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryAutoConfig: mobileNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p2, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_20

    const-string/jumbo p0, "tryAutoConfig: workflow is null"

    .line 399
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 403
    :cond_20
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",FORCE:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartForceCmd(I)Z

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",RST:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->getNeedResetConfig()Z

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const v1, 0x13000007

    invoke-static {v1, p4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 406
    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p4, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAvailableNetwork(I)Landroid/util/Pair;

    .line 408
    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p4, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->updateMobileNetworkforDualRcs(I)Z

    move-result p4

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryAutoConfig: updateMobileNetworkforDualRcs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->getDualSimRcsAutoConfig()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_78

    .line 411
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->startAutoConfigDualsim(Z)V

    .line 412
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setDualSimRcsAutoConfig(Z)V

    goto :goto_a3

    .line 414
    :cond_78
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartForceCmd(I)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 415
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->getNeedResetConfig()Z

    move-result p3

    if-eqz p3, :cond_8b

    .line 416
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->forceAutoConfigNeedResetConfig(Z)V

    .line 417
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setNeedResetConfig(Z)V

    goto :goto_8e

    .line 419
    :cond_8b
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->forceAutoConfig(Z)V

    .line 421
    :goto_8e
    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(IZ)V

    goto :goto_a3

    .line 423
    :cond_92
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz p3, :cond_a0

    .line 424
    instance-of p3, v0, Lcom/sec/internal/ims/servicemodules/im/strategy/ChnStrategy;

    if-eqz p3, :cond_a0

    .line 425
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->forceAutoConfig(Z)V

    goto :goto_a3

    .line 427
    :cond_a0
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->startAutoConfig(Z)V

    .line 431
    :goto_a3
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-nez p1, :cond_b0

    .line 432
    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    :cond_b0
    return-void
.end method

.method protected tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .registers 10

    .line 595
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 596
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    .line 598
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_16

    move v2, v3

    goto :goto_17

    :cond_16
    move v2, v4

    :goto_17
    if-eqz v1, :cond_44

    .line 600
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->getAcsVersion()I

    move-result v5

    const/4 v6, -0x2

    if-ne v5, v6, :cond_44

    if-eqz v2, :cond_44

    .line 603
    sget-object v2, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ACS version: -2, IMS RCS switch enabled - set force autoconfig NOW."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->isRcsDisabled()Z

    move-result v5

    if-eqz v5, :cond_3f

    const-string v5, "CHN Need block ACS when user setting is ON."

    .line 607
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 609
    :cond_3f
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->clear()V

    move v2, v3

    goto :goto_45

    :cond_44
    :goto_44
    move v2, v4

    .line 614
    :goto_45
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v5, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v5

    .line 615
    invoke-static {v5}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_52

    return v4

    .line 618
    :cond_52
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 619
    sget-object v6, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v7, "autoconfig is not ready"

    invoke-static {v6, v0, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 621
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 622
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_a3

    .line 623
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, v4, p1, v5}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfig(ZILjava/util/List;)Z

    return v3

    :cond_79
    if-eqz v1, :cond_9b

    .line 629
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->isRcsDisabled()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEurNonRjil(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_95

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_9b

    :cond_95
    const-string p0, "Version & validity == 0. Autoconfiguration will be performed after next reboot"

    .line 630
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 633
    :cond_9b
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, v2, p1, v5}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfig(ZILjava/util/List;)Z

    return v3

    :cond_a3
    return v4
.end method
