.class public Lcom/sec/internal/ims/rcs/util/RcsUtils;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;,
        Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "RcsUtils"


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/rcs/util/RcsUtils;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetMatchedSalesCode(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->getMatchedSalesCode(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enabledSingleRegistration(Landroid/content/Context;I)Z
    .locals 0

    .line 548
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getSipNotifier()Lcom/sec/internal/interfaces/google/ISipTransportNotifier;

    move-result-object p0

    if-nez p0, :cond_0

    .line 550
    sget-object p0, Lcom/sec/internal/ims/rcs/util/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "enabledSingleRegistration : false"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 553
    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/google/ISipTransportNotifier;->hasSipDelegate(I)Z

    move-result p0

    return p0
.end method

.method private static getMatchedSalesCode(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 4

    .line 259
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getAllSalesCodes()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 260
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->getProperSalesCodeIfEmpty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_0
    array-length p1, v0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, v0, v2

    .line 264
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_2
    aget-object p0, v0, v1

    return-object p0
.end method

.method private static getProperSalesCodeIfEmpty(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "GCI_US"

    .line 248
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Geoverse_US"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Union_US"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DPAC_US"

    .line 249
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GTA_US"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ITE_US"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Interop_US"

    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "ACG"

    goto :goto_1

    :cond_1
    const-string p0, ""

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "XAA"

    :goto_1
    const-string v0, ","

    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRepresentSalesCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "APP"

    .line 273
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ATT"

    return-object p0

    :cond_0
    const-string v0, "VPP"

    .line 275
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "VZW"

    :cond_1
    return-object p0
.end method

.method public static getSingleRegistrationServiceList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 536
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getSipNotifier()Lcom/sec/internal/interfaces/google/ISipTransportNotifier;

    move-result-object v0

    .line 537
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    .line 539
    sget-object p0, Lcom/sec/internal/ims/rcs/util/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getSingleRegistrationServiceList : sipNotifier null"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 542
    :cond_0
    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/google/ISipTransportNotifier;->getServiceList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p0, "presence"

    .line 543
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static isAutoConfigNeeded(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 486
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 487
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isImsSingleRegiRequired(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "ims.ims_single_registration_required_bool"

    .line 561
    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->readBooleanCarrierConfigValue(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isRcsEnabledByProfile(Landroid/content/Context;I)Z
    .locals 2

    .line 498
    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    .line 499
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    .line 500
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 506
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/rcs/util/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRcsEnabledByProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isSingleIncludedForTss()Z
    .locals 4

    .line 491
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "single"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 492
    sget-object v1, Lcom/sec/internal/ims/rcs/util/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSingleIncludedForTss "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSingleRegiRequiredAndAndroidMessageAppInUsed(Landroid/content/Context;I)Z
    .locals 1

    .line 557
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isGoogDmaPackageInuse(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSrBulkCapabilityExchange(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "ims.rcs_bulk_capability_exchange_bool"

    .line 577
    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->readBooleanCarrierConfigValue(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSrEnablePresenceGroupSubscribe(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "ims.enable_presence_group_subscribe_bool"

    .line 581
    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->readBooleanCarrierConfigValue(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSrPresenceCapabilityExchange(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "ims.enable_presence_capability_exchange_bool"

    .line 573
    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->readBooleanCarrierConfigValue(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSrRcsOptionsEnabled(Landroid/content/Context;I)Z
    .locals 1

    const-string/jumbo v0, "use_rcs_sip_options_bool"

    .line 565
    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->readBooleanCarrierConfigValue(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSrRcsPresenceEnabled(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "ims.enable_presence_publish_bool"

    .line 569
    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->readBooleanCarrierConfigValue(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTssSecondVers()Z
    .locals 2

    const-string v0, "mdc.singlesku"

    .line 511
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mdc.unified"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    sget-object v0, Lcom/sec/internal/ims/rcs/util/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isTssSecondVersion = true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static readBooleanCarrierConfigValue(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 2

    const-string v0, "carrier_config"

    .line 520
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 522
    sget-object p0, Lcom/sec/internal/ims/rcs/util/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string p2, "readBooleanCarrierConfigValue: CarrierConfigManager is null"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 526
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_1

    .line 528
    sget-object p0, Lcom/sec/internal/ims/rcs/util/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string p2, "readBooleanCarrierConfigValue: PersistableBundle is null"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 532
    :cond_1
    invoke-virtual {p0, p2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
