.class public Lcom/sec/internal/ims/rcs/RcsPolicyManager;
.super Landroid/os/Handler;
.source "RcsPolicyManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;


# static fields
.field private static final EVENT_IMS_GLOBAL_SETTINGS_CHANGED:I = 0xa

.field private static final EVENT_IMS_SWITCHES_CHANGED:I = 0xb

.field private static final EVENT_RCS_ALLOWED_CHANGED:I = 0x9

.field private static final EVENT_RCS_ROAMING_PREF:I = 0x8

.field private static final EVT_SIM_READY:I = 0x0

.field private static final EVT_SIM_REFRESH:I = 0x3

.field private static mRcsStrategy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static mRegiConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/helper/RegiConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field protected final context:Landroid/content/Context;

.field private mRcsContentObserver:Landroid/database/ContentObserver;

.field private mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$F2Q38GsCLY25rClqtHMK75P_Z5g(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->lambda$getRcsConfig$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HlRPKUZsN63R7fteEozEvtBFU_M(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->lambda$getRcsConfig$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xjaDnYg5RmW2cB_A_b3hei-BI1w(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->lambda$getRcsConfig$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monRCSAllowedChangedbyMDM(Lcom/sec/internal/ims/rcs/RcsPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->onRCSAllowedChangedbyMDM()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRcsRoamingPrefChanged(Lcom/sec/internal/ims/rcs/RcsPolicyManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->onRcsRoamingPrefChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRcsStrategy(Lcom/sec/internal/ims/rcs/RcsPolicyManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->updateRcsStrategy(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsUriMatcher()Landroid/content/UriMatcher;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->sUriMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsStrategy:Ljava/util/Map;

    .line 81
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 86
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_ROAMING_PREF:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 88
    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_ALLOWED_URI:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 90
    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_GLOBAL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 92
    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 96
    new-instance p1, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;

    invoke-direct {p1, p0, p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;-><init>(Lcom/sec/internal/ims/rcs/RcsPolicyManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsContentObserver:Landroid/database/ContentObserver;

    .line 124
    iput-object p2, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    .line 125
    iput-object p3, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mSimManagers:Ljava/util/List;

    .line 126
    new-instance p0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    sput-object p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegiConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 p0, 0x0

    .line 127
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    if-ge p0, p1, :cond_0

    .line 128
    sget-object p1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegiConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance p3, Lcom/sec/internal/helper/RegiConfig;

    invoke-direct {p3, p0, p2}, Lcom/sec/internal/helper/RegiConfig;-><init>(ILandroid/content/Context;)V

    invoke-virtual {p1, p0, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 6

    .line 381
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    .line 383
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v1

    .line 385
    iget-object p0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    .line 389
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 390
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v4, v5, :cond_2

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_1

    .line 391
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isSameRcsOperator(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 392
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v3

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDualRcsPcscfIp: pcscf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RcsPolicyMgr"

    invoke-static {v5, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 394
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method

.method public static getRcsConfig(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/ims/servicemodules/im/ImConfig;Lcom/sec/internal/interfaces/google/ISipTransportNotifier;)Lcom/sec/internal/constants/ims/config/RcsConfig;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 604
    invoke-static {v0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez p3, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v2, "rcs_ft_chunk_size"

    const/4 v3, 0x0

    .line 608
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v5

    const-string v2, "rcs_ish_chunk_size"

    .line 609
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v6

    const-string v2, "msrp_cema"

    .line 610
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v8

    const-string v2, "conf_subscribe_enabled"

    const/4 v4, 0x1

    .line 611
    invoke-static {v1, v2, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v2, "support_cancel_message"

    .line 612
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v19

    .line 614
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPagerModeLimit()I

    move-result v12

    const-string v2, "aggr_imdn_supported"

    .line 615
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v14

    .line 616
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result v20

    .line 619
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getConfFactoryUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const-string v7, ""

    if-eqz v2, :cond_1

    .line 622
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v7

    .line 625
    :goto_0
    invoke-static {v0, v4}, Lcom/sec/internal/helper/FilePathGenerator;->getFileDownloadPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    move-object v9, v7

    .line 629
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getExploderUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 630
    invoke-virtual {v11}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "sip:foo@bar"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 631
    invoke-virtual {v11}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_3
    move-object v11, v7

    :goto_1
    const-string v13, "msrp_discard_port"

    .line 634
    invoke-static {v1, v13, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v13

    .line 637
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfileType()I

    move-result v3

    sget-object v15, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->UP_2_2:Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;

    invoke-virtual {v15}, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->ordinal()I

    move-result v15

    if-lt v3, v15, :cond_4

    .line 638
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getBotPrivacyDisable()Z

    move-result v3

    move v15, v3

    goto :goto_2

    :cond_4
    move v15, v4

    .line 640
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    move/from16 v16, v3

    goto :goto_3

    :cond_5
    move/from16 v16, v4

    .line 641
    :goto_3
    sget-object v3, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegiConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/helper/RegiConfig;

    invoke-virtual {v3}, Lcom/sec/internal/helper/RegiConfig;->getEndUserConfReqId()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v3, "supported_bot_versions"

    .line 642
    invoke-static {v1, v3, v7}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 643
    invoke-static {v0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->enabledSingleRegistration(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v0, p4

    .line 644
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/google/ISipTransportNotifier;->getAllocatedFeatureTags(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/sec/internal/ims/rcs/RcsPolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager$$ExternalSyntheticLambda0;-><init>()V

    .line 645
    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v4, Lcom/sec/internal/ims/rcs/RcsPolicyManager$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager$$ExternalSyntheticLambda1;-><init>()V

    .line 646
    invoke-virtual {v0, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v4, Lcom/sec/internal/ims/rcs/RcsPolicyManager$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager$$ExternalSyntheticLambda2;-><init>()V

    .line 647
    invoke-virtual {v0, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 648
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replace botversion retrieving from SipDelegate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RcsPolicyMgr"

    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move-object v3, v0

    .line 654
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 655
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfileType()I

    move-result v0

    sget-object v1, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->UP_2_4:Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_7

    const-string v0, "#=1,#=2"

    goto :goto_4

    :cond_7
    const-string v0, "#=1"

    :goto_4
    move-object/from16 v18, v0

    goto :goto_5

    :cond_8
    move-object/from16 v18, v3

    .line 658
    :goto_5
    new-instance v0, Lcom/sec/internal/constants/ims/config/RcsConfig;

    move-object v4, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v20}, Lcom/sec/internal/constants/ims/config/RcsConfig;-><init>(IILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;IZZZILjava/lang/String;Ljava/lang/String;IZ)V

    return-object v0

    :cond_9
    :goto_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 1

    .line 190
    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsStrategy:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    return-object p0
.end method

.method private getRcsTransport(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
    .locals 4

    .line 577
    sget-object p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegiConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/RegiConfig;

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    .line 578
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p4}, Lcom/sec/internal/helper/SimUtil;->isDdsSimSlot(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "phone"

    .line 581
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 582
    invoke-virtual {p0}, Lcom/sec/internal/helper/RegiConfig;->getTransProtoPsSignaling()Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {p4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 584
    invoke-static {p4}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v3

    .line 585
    invoke-static {p1, p4, p3}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 586
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v2, p1, :cond_2

    sget-object p1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v2, p1, :cond_2

    sget-object p1, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-eq v2, p1, :cond_2

    sget-object p1, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-eq v2, p1, :cond_2

    const-string p1, "jibe"

    .line 587
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 588
    invoke-virtual {p0}, Lcom/sec/internal/helper/RegiConfig;->getTransProtoPsRoamSignaling()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 579
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/RegiConfig;->getTransProtoWifiSignaling()Ljava/lang/String;

    move-result-object v1

    .line 591
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 p0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    :goto_2
    move v0, p0

    goto :goto_3

    :sswitch_0
    const-string p1, "SIPoUDP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    goto :goto_3

    :sswitch_1
    const-string p1, "SIPoTLS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :sswitch_2
    const-string p1, "SIPoTCP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 600
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getTransportName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "udp"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "tls"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "tcp"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x582df354 -> :sswitch_2
        -0x582df23a -> :sswitch_1
        -0x582def74 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isWaitingRcsDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;I)Z"
        }
    .end annotation

    .line 215
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v1, v0, p3

    sget-object p3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 p3, 0x2

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v0, p3

    .line 220
    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isWaitingRcsDeregister: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RcsPolicyMgr"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return p3
.end method

.method private static synthetic lambda$getRcsConfig$0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "+g.gsma.rcs.botversion="

    .line 645
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getRcsConfig$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "="

    const/4 v1, 0x2

    .line 646
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method private static synthetic lambda$getRcsConfig$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    const-string v1, ""

    .line 647
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadRcsSettings(IZ)Z
    .locals 1

    .line 194
    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsStrategy:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->loadRcsSettings(Z)Z

    move-result p0

    return p0
.end method

.method private onRCSAllowedChangedbyMDM()V
    .locals 0

    .line 545
    iget-object p0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->notifyRCSAllowedChangedbyMDM()V

    return-void
.end method

.method private onRcsRoamingPrefChanged(I)V
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    const-string v1, "rcs_roaming_pref"

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRcsRoamingPrefChanged: now ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsPolicyMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object p0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->notifyRomaingSettingsChanged(II)V

    return-void
.end method

.method private updateRcsStrategy(I)V
    .locals 2

    const-string v0, "RcsPolicyMgr"

    const-string/jumbo v1, "updateRcsStrategy"

    .line 180
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-static {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;->makeInstance(Lcom/sec/internal/constants/Mno;ILandroid/content/Context;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    .line 186
    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsStrategy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public changeRcsIfacename(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/interfaces/ims/core/IPdnController;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, "RcsPolicyMgr"

    .line 408
    :try_start_0
    invoke-static {p3}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 409
    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p3, "changeIfacename: LinkPropertiesWrapper null"

    .line 411
    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 414
    :cond_0
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAllAddresses()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 416
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 417
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 418
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object p3

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register: Change iface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p3

    .line 430
    invoke-virtual {p3}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_2
    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getInterfaceName(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/lang/String;

    move-result-object p1

    .line 433
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "register: changeIfacename : no change - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public doRcsConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)Z"
        }
    .end annotation

    .line 563
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object p0

    .line 564
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 565
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRcsConfig for task : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RcsPolicyMgr"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 566
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    if-ne v0, v2, :cond_0

    .line 567
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->FROM_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-interface {p0, v0, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 569
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-interface {p0, v1, p1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->triggerAutoConfig(ZILjava/util/List;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getRcsConfigForUserAgent(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/constants/Mno;IILcom/sec/internal/ims/servicemodules/im/ImConfig;Lcom/sec/internal/ims/core/RcsRegistration$Builder;)Landroid/os/Bundle;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    .line 439
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, ""

    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTransportName()Ljava/lang/String;

    move-result-object v6

    .line 446
    const-class v7, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    monitor-enter v7

    .line 447
    :try_start_0
    invoke-static/range {p5 .. p5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    new-instance v9, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v8, v9}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    invoke-virtual {v8, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    .line 449
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getQValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 450
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v10

    .line 451
    sget-object v11, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegiConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v11, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/helper/RegiConfig;

    .line 453
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getPassword()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getPassword()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/helper/RegiConfig;->getAppUserPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, p6

    .line 455
    invoke-virtual {v13, v12}, Lcom/sec/internal/ims/core/RcsRegistration$Builder;->setPassword(Ljava/lang/String;)Lcom/sec/internal/ims/core/RcsRegistration$Builder;

    const-string v13, "jibe"

    .line 456
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "sec"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "interop"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 457
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getPassword()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/internal/ims/util/ConfigUtil;->decryptParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_1
    const-string v13, "RcsPolicyMgr"

    .line 459
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getRcsConfigForUserAgent: Rcs Config password="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v3, v14}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getPassword()Ljava/lang/String;

    move-result-object v12

    const-string v13, "RcsPolicyMgr"

    .line 462
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getRcsConfigForUserAgent: profile password="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v3, v14}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 464
    :goto_0
    sget-object v13, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    move-object/from16 v14, p2

    if-ne v14, v13, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 466
    :cond_3
    invoke-virtual {v11}, Lcom/sec/internal/helper/RegiConfig;->getAppRealm()Ljava/lang/String;

    move-result-object v5

    :cond_4
    const/4 v13, 0x1

    if-ne v2, v13, :cond_5

    .line 470
    invoke-virtual {v11}, Lcom/sec/internal/helper/RegiConfig;->getTransportWifiMedia()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v6

    goto :goto_1

    .line 472
    :cond_5
    iget-object v13, v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    const-string v15, "phone"

    .line 473
    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 474
    invoke-virtual {v11}, Lcom/sec/internal/helper/RegiConfig;->getTransportPsMedia()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v6

    .line 475
    iget-object v6, v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-static {v6, v3, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 476
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "jibe"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 477
    invoke-virtual {v11}, Lcom/sec/internal/helper/RegiConfig;->getTransportPsMediaRoaming()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_6
    move-object v10, v15

    :goto_1
    const-string v6, "RcsPolicyMgr"

    .line 481
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "msrpTransType=("

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v3, v13}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 482
    invoke-static/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v6

    const/4 v13, 0x0

    if-nez v6, :cond_7

    .line 483
    iget-object v6, v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-direct {v0, v6, v2, v1, v3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsTransport(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object v6

    .line 484
    invoke-virtual {v11}, Lcom/sec/internal/helper/RegiConfig;->getKeepAlive()Z

    move-result v0

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v13

    move-object/from16 v6, v16

    .line 487
    :goto_2
    invoke-static {v3, v13}, Lcom/sec/internal/ims/util/ConfigUtil;->getAutoconfigSourceWithFeature(II)I

    move-result v0

    if-nez v0, :cond_8

    .line 489
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v8, "CPM"

    .line 493
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTimer1()I

    move-result v0

    .line 494
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTimer2()I

    move-result v3

    .line 495
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTimer4()I

    move-result v13

    .line 499
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 500
    invoke-virtual {v11}, Lcom/sec/internal/helper/RegiConfig;->getQValue()Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_9

    .line 505
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 508
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 512
    :cond_9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTimer1()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/sec/internal/helper/RegiConfig;->getTimer1(I)I

    move-result v0

    .line 513
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTimer2()I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/sec/internal/helper/RegiConfig;->getTimer2(I)I

    move-result v3

    .line 514
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTimer4()I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/sec/internal/helper/RegiConfig;->getTimer4(I)I

    move-result v13

    .line 517
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryBaseTime()I

    move-result v14

    invoke-virtual {v11, v14}, Lcom/sec/internal/helper/RegiConfig;->getRegRetryBaseTime(I)I

    move-result v14

    .line 518
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryMaxTime()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/sec/internal/helper/RegiConfig;->getRegRetryMaxTime(I)I

    move-result v1

    const-string v11, "password"

    .line 520
    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "realm"

    .line 521
    invoke-virtual {v4, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "msrpTransType"

    .line 522
    invoke-virtual {v4, v5, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "transport"

    .line 523
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "imMsgTech"

    .line 524
    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "useKeepAlive"

    .line 525
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "qVal"

    .line 526
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "Timer_T1"

    .line 527
    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "Timer_T2"

    .line 528
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "Timer_T4"

    .line 529
    invoke-virtual {v4, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "RegRetryBaseTime"

    .line 530
    invoke-virtual {v4, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "RegRetryMaxTime"

    .line 531
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    monitor-exit v7

    return-object v4

    :catchall_0
    move-exception v0

    .line 533
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getRcsHomeNetworkDomain(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
    .locals 5

    .line 316
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 317
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v1

    .line 318
    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-string v4, "jibe"

    if-ne v0, v3, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 325
    :goto_0
    sget-object v3, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_3

    .line 326
    iget-object p0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 328
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p1, p0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v2

    :cond_3
    if-nez v2, :cond_4

    .line 332
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 333
    sget-object p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegiConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/RegiConfig;

    invoke-virtual {p0}, Lcom/sec/internal/helper/RegiConfig;->getHomeNetworkDomain()Ljava/lang/String;

    move-result-object p0

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Config Domain():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RcsPolicyMgr"

    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public getRcsNetworkUriType(ILjava/lang/String;Z)Lcom/sec/ims/util/ImsUri$UriType;
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-static {p0, p2, p3, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getNetworkUriType(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object p0

    return-object p0
.end method

.method public getRcsPcscfAddress(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
    .locals 4

    const-string p0, "RcsPolicyMgr"

    const-string v0, "getRcsPcscfAddress:"

    .line 230
    invoke-static {p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegiConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/RegiConfig;

    invoke-virtual {v0}, Lcom/sec/internal/helper/RegiConfig;->getLboPcscfAddressAndIpType()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "address"

    .line 233
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addresstype"

    .line 234
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_4

    const/16 v2, 0x3a

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string v3, "ipv4"

    .line 238
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "IP Address"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "FQDN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 v0, v2, 0x1

    .line 239
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 240
    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    const/4 v0, 0x0

    .line 241
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    const-string v2, "ipv6"

    .line 242
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x5b

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v2, 0x5d

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string v3, "]:"

    .line 245
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    add-int/lit8 v3, v3, 0x2

    .line 248
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 247
    invoke-virtual {p1, v3}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    :cond_2
    if-nez v0, :cond_3

    if-lez v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 251
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPcscfAddresses: LBO-PCSCF="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " port="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method public getRcsPrivateUserIdentity(Ljava/lang/String;Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
    .locals 1

    .line 294
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 296
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "RcsPolicyMgr"

    const-string p2, "RCS only"

    .line 298
    invoke-static {p0, p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    sget-object p2, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegiConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/helper/RegiConfig;

    invoke-virtual {p2}, Lcom/sec/internal/helper/RegiConfig;->getPrivateUserIdentity()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "impi: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method public getRcsPublicUserIdentity(I)Ljava/lang/String;
    .locals 0

    .line 310
    sget-object p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegiConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/RegiConfig;

    invoke-virtual {p0}, Lcom/sec/internal/helper/RegiConfig;->getPublicUserIdentity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRegiConfig(I)Lcom/sec/internal/helper/RegiConfig;
    .locals 0

    .line 670
    sget-object p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegiConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/RegiConfig;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsPolicyMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 172
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->updateRcsStrategy(I)V

    :goto_0
    return-void
.end method

.method public initSequentially()V
    .locals 6

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v3, 0x0

    .line 136
    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v2, 0x3

    .line 137
    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_ROAMING_PREF:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 142
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsContentObserver:Landroid/database/ContentObserver;

    .line 141
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_GLOBAL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 148
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 147
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 150
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsContentObserver:Landroid/database/ContentObserver;

    .line 149
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 152
    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsStrategy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz v1, :cond_1

    .line 155
    sget-object v2, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsStrategy:Ljava/util/Map;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;

    iget-object v5, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    .line 156
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-direct {v4, v5, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    .line 155
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public isRcsRoamingPref(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)Z
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    const-string v2, "rcs_roaming_pref"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    .line 344
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 345
    iget-object p0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    invoke-interface {p0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 347
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v2, p0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 348
    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 350
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-string p1, "RcsPolicyMgr"

    const-string p2, "not allowed as per RCS preference"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public pendingRcsRegister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;I)Z"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pendingRcsRegister: mActiveDataPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsPolicyMgr"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eq p3, v0, :cond_1

    return v1

    .line 207
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->isWaitingRcsDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;I)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public selectRcsDnsType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 262
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    .line 263
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getNeedIpv4Dns()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "jibe"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    if-eqz p2, :cond_2

    .line 267
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 268
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "IPV4"

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public selectRcsTransportType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 282
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object p2, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsTransport(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "udp-preferred"

    .line 284
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p0, "udp"

    .line 287
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public setRegistrationManager(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    return-void
.end method

.method public tryRcsConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 3

    .line 550
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object p0

    .line 551
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryRcsConfig for task : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsPolicyMgr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 553
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    if-ne v0, v1, :cond_0

    .line 554
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->FROM_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 361
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->checkDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    .line 365
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDualRcsPcscf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", curPcscfIp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RcsPolicyMgr"

    invoke-static {v2, v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p0, :cond_0

    .line 367
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->increasePcscfIdx()V

    if-eqz p2, :cond_0

    .line 369
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public updateRegiConfig(I)V
    .locals 0

    .line 665
    sget-object p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegiConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/RegiConfig;

    invoke-virtual {p0}, Lcom/sec/internal/helper/RegiConfig;->load()V

    return-void
.end method