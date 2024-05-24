.class public Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;
.super Landroid/content/ContentProvider;
.source "RcsPreferencesProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.ims.android.rcs"

.field private static final KEY_ENRICHED_CALLING:Ljava/lang/String; = "rcs_enriched_calling"

.field private static final KEY_MASTER_SWICH_VISIBILITY:Ljava/lang/String; = "master_switch"

.field private static final KEY_PERMANENT_DISABLE:Ljava/lang/String; = "permanent_disable_state"

.field private static final KEY_PERMANENT_DISABLE_AVAILABILITY:Ljava/lang/String; = "permanent_disable_availibility"

.field private static final KEY_RCSPROFILE:Ljava/lang/String; = "rcsprofile"

.field private static final KEY_RCS_ENABLED:Ljava/lang/String; = "rcs_enabled"

.field private static final KEY_RCS_NOTIFICATION_SETTING:Ljava/lang/String; = "rcs_connection_preference"

.field private static final KEY_REGISTRATION_STATUS:Ljava/lang/String; = "registration_status"

.field private static final KEY_STATIC_ENABLE_RCS:Ljava/lang/String; = "EnableRCS"

.field private static final KEY_STATIC_ENABLE_RCSCHAT:Ljava/lang/String; = "EnableRCSchat"

.field private static final KEY_SUPPORT_DUAL_RCS:Ljava/lang/String; = "support_dual_rcs"

.field private static final KEY_SUPPORT_DUAL_RCS_SETTINGS:Ljava/lang/String; = "support_dual_rcs_settings"

.field private static final KEY_SUPPORT_DUAL_RCS_SIM1:Ljava/lang/String; = "support_dual_rcs_sim1"

.field private static final KEY_SUPPORT_DUAL_RCS_SIM2:Ljava/lang/String; = "support_dual_rcs_sim2"

.field private static final KEY_USER_ALIAS:Ljava/lang/String; = "user_alias"

.field private static final KEY_VANILLA_APPLIED:Ljava/lang/String; = "vanilla_applied"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MATCH_ENRICHED_CALLING:I = 0xb

.field private static final MATCH_HOME_NETWORK:I = 0x2

.field private static final MATCH_PERMANENT_DISABLE:I = 0x4

.field private static final MATCH_PERMANENT_DISABLE_AVAILABILITY:I = 0x6

.field private static final MATCH_RCSPROFILE:I = 0x8

.field private static final MATCH_RCS_ENABLED_STATIC:I = 0xa

.field private static final MATCH_REGISTRATION:I = 0x7

.field private static final MATCH_ROAMING:I = 0x3

.field private static final MATCH_SETTINGS:I = 0x1

.field private static final MATCH_SUPPORT_DUAL_RCS:I = 0x9

.field private static final MATCH_SUPPORT_DUAL_RCS_SETTINGS:I = 0xc

.field private static final MATCH_USER_ALIAS:I = 0x5

.field private static final TABLE_ENRICHED_CALLING:Ljava/lang/String; = "rcs_enriched_calling"

.field private static final TABLE_HOME_NETWORK:Ljava/lang/String; = "home_network"

.field private static final TABLE_PERMANENT_DISALBE:Ljava/lang/String; = "permanent_disable_state"

.field private static final TABLE_PERMANENT_DISALBE_AVAILABILITY:Ljava/lang/String; = "permanent_disable_availibility"

.field private static final TABLE_PREFERENCES:Ljava/lang/String; = "preferences"

.field private static final TABLE_RCSPROFILE:Ljava/lang/String; = "rcsprofile"

.field private static final TABLE_RCS_ENABLED_STATIC:Ljava/lang/String; = "rcs_enabled_static"

.field private static final TABLE_REGISTRATION:Ljava/lang/String; = "registration"

.field private static final TABLE_ROAMING:Ljava/lang/String; = "roaming"

.field private static final TABLE_SUPPORT_DUAL_RCS:Ljava/lang/String; = "support_dual_rcs"

.field private static final TABLE_SUPPORT_DUAL_RCS_SETTINGS:Ljava/lang/String; = "support_dual_rcs_settings"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 36
    const-class v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferences"

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 93
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.sec.ims.android.rcs"

    .line 88
    invoke-virtual {v0, v5, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 101
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "home_network"

    const/4 v2, 0x2

    .line 104
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "roaming"

    const/4 v2, 0x3

    .line 105
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "permanent_disable_state"

    const/4 v2, 0x4

    .line 106
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "permanent_disable_availibility"

    const/4 v2, 0x6

    .line 107
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "registration"

    const/4 v2, 0x7

    .line 109
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "rcsprofile"

    const/16 v2, 0x8

    .line 110
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "support_dual_rcs"

    const/16 v2, 0x9

    .line 111
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "rcs_enabled_static"

    const/16 v2, 0xa

    .line 112
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "rcs_enriched_calling"

    const/16 v2, 0xb

    .line 113
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "support_dual_rcs_settings"

    const/16 v2, 0xc

    .line 114
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createMultiValueCursor([Ljava/lang/String;[Ljava/lang/Integer;)Landroid/database/Cursor;
    .registers 4

    .line 299
    new-instance p0, Landroid/database/MatrixCursor;

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 300
    invoke-virtual {p0, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method private createMultiValueCursor([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    .line 305
    new-instance p0, Landroid/database/MatrixCursor;

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 306
    invoke-virtual {p0, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method private createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;
    .registers 4

    .line 279
    new-instance p0, Landroid/database/MatrixCursor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 282
    filled-new-array {p2}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method private createSingleValueCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    .line 289
    new-instance p0, Landroid/database/MatrixCursor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 292
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method private getRcsEnabledStatic(I)[Ljava/lang/String;
    .registers 13

    .line 366
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, ", rcschat = "

    const/4 v3, 0x1

    const-string/jumbo v4, "true"

    const-string v5, "false"

    const/4 v6, 0x0

    if-eqz v0, :cond_7d

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForAmRcs(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    move p0, v3

    goto :goto_50

    .line 369
    :cond_1a
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForRcs(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 370
    iget-object p0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4f

    .line 371
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4f

    .line 372
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    if-eqz p1, :cond_32

    .line 373
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 374
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result p0

    .line 375
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcsChat()Z

    move-result p1

    goto :goto_51

    :cond_4f
    move p0, v6

    :goto_50
    move p1, p0

    .line 382
    :goto_51
    sget-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRcsEnabledStatic: SimMobility, rcs = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v1, [Ljava/lang/String;

    if-eqz p0, :cond_73

    move-object p0, v4

    goto :goto_74

    :cond_73
    move-object p0, v5

    :goto_74
    aput-object p0, v0, v6

    if-eqz p1, :cond_79

    goto :goto_7a

    :cond_79
    move-object v4, v5

    :goto_7a
    aput-object v4, v0, v3

    return-object v0

    .line 391
    :cond_7d
    sget-object v0, Lcom/sec/internal/constants/Mno;->MOCK_MNO_PROPERTY:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v0, v7}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_99

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    .line 394
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 395
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 397
    :cond_99
    sget-object v7, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRcsEnabledStatic: operator = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_bf

    const-string p0, "getRcsEnabledStatic: operator is empty, rcs = false, rcschat = false"

    .line 400
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    filled-new-array {v5, v5}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 406
    :cond_bf
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v8

    .line 407
    invoke-static {v8}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v8

    if-eqz v8, :cond_d1

    .line 408
    iget-object p0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result p0

    :goto_cf
    move p1, p0

    goto :goto_10e

    .line 411
    :cond_d1
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    if-eqz p0, :cond_107

    .line 412
    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-lez p1, :cond_107

    const-string p1, "EnableRCS"

    .line 416
    invoke-static {p0, p1, v6}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "EnableRCSchat"

    .line 417
    invoke-static {p0, v0, v6}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p0

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRcsEnabledStatic: Customer, rcs = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, p1

    move p1, p0

    move p0, v10

    goto :goto_10e

    :cond_107
    const-string p0, "getRcsEnabledStatic: cscSettings is null, rcs = false, rcschat = false"

    .line 420
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v6

    goto :goto_cf

    :goto_10e
    new-array v0, v1, [Ljava/lang/String;

    if-eqz p0, :cond_114

    move-object p0, v4

    goto :goto_115

    :cond_114
    move-object p0, v5

    :goto_115
    aput-object p0, v0, v6

    if-eqz p1, :cond_11a

    goto :goto_11b

    :cond_11a
    move-object v4, v5

    :goto_11b
    aput-object v4, v0, v3

    return-object v0
.end method

.method private getSupportDualRcs()[Ljava/lang/Integer;
    .registers 6

    .line 348
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    const-string v1, "dual_rcs_policy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1f

    .line 349
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    goto :goto_1f

    .line 350
    :cond_1a
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    goto :goto_23

    :cond_1f
    :goto_1f
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    .line 351
    :goto_23
    iget-object v1, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v1

    .line 352
    iget-object p0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {p0, v3}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result p0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Integer;

    .line 355
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 356
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    .line 357
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v4, v0

    return-object v4
.end method

.method private getSupportDualRcsSettings()I
    .registers 1

    .line 434
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result p0

    return p0
.end method

.method private isRcsRegistered(I)Z
    .registers 2

    .line 340
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isRcsRegistered(I)Z

    move-result p0

    return p0
.end method

.method private queryEnrichedCalling(I)I
    .registers 2

    .line 430
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledEnrichedCalling(I)Z

    move-result p0

    return p0
.end method

.method private queryUserAlias(I)Ljava/lang/String;
    .registers 2

    .line 324
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 326
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getUserAliasFromPreference(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, ""

    return-object p0
.end method

.method private readCurrentSettingsValues(I)[Ljava/lang/Integer;
    .registers 6

    const-string/jumbo v0, "rcs_user_setting"

    .line 261
    invoke-static {v0, p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result v0

    .line 262
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->isRcsEnabledByPhoneId(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    .line 266
    :try_start_e
    iget-object p0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isMainSwitchVisible(Landroid/content/Context;I)Z

    move-result p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    move-exception p0

    .line 268
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    move p0, v3

    :goto_1a
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Integer;

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    .line 274
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, p1, v0

    return-object p1
.end method

.method private updateRCSSetting(ZI)V
    .registers 3

    .line 344
    invoke-static {p1, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->enableRcsByPhoneId(ZI)V

    return-void
.end method

.method private updateUserAlias(ILjava/lang/String;)V
    .registers 4

    .line 311
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-nez p0, :cond_b

    return-void

    .line 316
    :cond_b
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->setUserAlias(ILjava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getPresenceModule()Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    move-result-object v0

    if-eqz v0, :cond_27

    if-eqz p2, :cond_27

    .line 318
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result p0

    if-eqz p0, :cond_27

    .line 319
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->setDisplayText(ILjava/lang/String;)V

    :cond_27
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .registers 2

    .line 139
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    .line 147
    sget-object p2, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    .line 148
    sget-object p3, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "query ["

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, "] match ["

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "]"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result p4

    const/4 p5, 0x0

    .line 175
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p4, :cond_39

    .line 152
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneIdFromTelephony()I

    move-result p5

    .line 155
    :cond_39
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_59

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v1, "simslot"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_59

    .line 156
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x7

    invoke-virtual {p4, p5}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-static {p4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p5

    :cond_59
    const/4 p4, 0x1

    const-string/jumbo v1, "rcs_connection_preference"

    packed-switch p2, :pswitch_data_11e

    .line 211
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "query: uri not implemented: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto/16 :goto_11d

    .line 208
    :pswitch_78
    invoke-direct {p0}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->getSupportDualRcsSettings()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "support_dual_rcs_settings"

    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_11d

    .line 205
    :pswitch_89
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->queryEnrichedCalling(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "rcs_enriched_calling"

    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_11d

    :pswitch_9a
    const-string p1, "EnableRCS"

    const-string p2, "EnableRCSchat"

    .line 199
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->getRcsEnabledStatic(I)[Ljava/lang/String;

    move-result-object p2

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createMultiValueCursor([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_11d

    :pswitch_ab
    const-string/jumbo p1, "support_dual_rcs_sim1"

    const-string/jumbo p2, "support_dual_rcs_sim2"

    const-string/jumbo p3, "support_dual_rcs"

    .line 192
    filled-new-array {p3, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-direct {p0}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->getSupportDualRcs()[Ljava/lang/Integer;

    move-result-object p2

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createMultiValueCursor([Ljava/lang/String;[Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_11d

    .line 188
    :pswitch_c1
    invoke-static {p5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "rcsprofile"

    .line 189
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_11d

    .line 184
    :pswitch_cd
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->isRcsRegistered(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "registration_status"

    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_11d

    :pswitch_dd
    const-string p1, "permanent_disable_availibility"

    .line 178
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_11d

    :pswitch_e4
    const-string/jumbo p1, "user_alias"

    .line 181
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->queryUserAlias(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_11d

    :pswitch_f0
    const-string p1, "permanent_disable_state"

    .line 175
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_11d

    .line 172
    :pswitch_f7
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_11d

    .line 169
    :pswitch_100
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_11d

    :pswitch_109
    const-string/jumbo p1, "vanilla_applied"

    const-string p2, "master_switch"

    const-string/jumbo p3, "rcs_enabled"

    .line 162
    filled-new-array {p3, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->readCurrentSettingsValues(I)[Ljava/lang/Integer;

    move-result-object p2

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createMultiValueCursor([Ljava/lang/String;[Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    :goto_11d
    return-object p0

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_109
        :pswitch_100
        :pswitch_f7
        :pswitch_f0
        :pswitch_e4
        :pswitch_dd
        :pswitch_cd
        :pswitch_c1
        :pswitch_ab
        :pswitch_9a
        :pswitch_89
        :pswitch_78
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9

    .line 219
    sget-object p3, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x0

    if-nez p2, :cond_21

    const-string/jumbo p0, "update: values are null"

    .line 224
    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 228
    :cond_21
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 229
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneIdFromTelephony()I

    move-result v0

    goto :goto_2d

    :cond_2c
    move v0, p4

    .line 232
    :goto_2d
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 233
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v0

    .line 236
    :cond_4d
    sget-object v1, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9f

    const/4 v3, 0x5

    if-eq v1, v3, :cond_6f

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "update: uri not implemented: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    :cond_6f
    const-string/jumbo v1, "user_alias"

    .line 245
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 246
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 247
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User alias: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->updateUserAlias(ILjava/lang/String;)V

    .line 249
    iget-object p0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :goto_9d
    move p4, v2

    goto :goto_ba

    :cond_9f
    const-string/jumbo p1, "rcs_enabled"

    .line 238
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_ba

    .line 239
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_b6

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    .line 240
    :cond_b6
    invoke-direct {p0, p4, v0}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->updateRCSSetting(ZI)V

    goto :goto_9d

    :cond_ba
    :goto_ba
    return p4
.end method
