.class public abstract Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.source "WorkflowUpBase.java"


# static fields
.field protected static final AUTH_HIDDENTRY_MAX_COUNT:I = 0x3

.field protected static final AUTH_TRY_MAX_COUNT:I = 0x1

.field protected static final INTERNALERR_RETRY_MAX_COUNT:I = 0x5

.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mAlternateVersions:[Ljava/lang/String;

.field protected mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected mNewVersion:I

.field protected mOldVersion:I


# direct methods
.method public static synthetic $r8$lambda$TyhiROcIKLqRteJKamU1SbwxeiM(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->lambda$handleResponseForUp$0(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V
    .locals 0

    .line 62
    invoke-direct/range {p0 .. p10}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 p2, 0x0

    .line 57
    iput p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    .line 58
    iput p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    .line 63
    iget p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string p3, "alt_provisioning_versions"

    invoke-static {p2, p3, p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mAlternateVersions:[Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 65
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "rcs_up_profile"

    invoke-static {p1, p3, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsUPProfile:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$handleResponseForUp$0(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected HandleResponseForUpOther(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public changeOpMode(Z)V
    .locals 4

    .line 455
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeOpMode: isRcsEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 457
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ENABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    goto :goto_0

    .line 459
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method protected checkAndUpdateData(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 240
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdateData: oldToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "checkAndUpdateData: token is changed, update it"

    .line 244
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->UPDATE_TOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setToken(Ljava/lang/String;Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 249
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity(Ljava/util/Map;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndUpdateData: oldValidity: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " newValidity: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "checkAndUpdateData: validity is changed, update it"

    .line 256
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidity(I)V

    :cond_3
    return-void
.end method

.method protected checkMobileConnection(Landroid/net/ConnectivityManager;)Z
    .locals 6

    .line 534
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 535
    invoke-virtual {p1, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 536
    invoke-virtual {v4, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xc

    .line 537
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 538
    invoke-virtual {p1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 540
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkMobileConnection: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected checkWifiConnection(Landroid/net/ConnectivityManager;)Z
    .locals 4

    .line 514
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 516
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string p1, "checkWifiConnection: Default NW is null "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 520
    :cond_0
    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 521
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xc

    .line 522
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 525
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkWifiConnection: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method protected convertRcsDisabledStateToOpMode(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 1

    .line 592
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 593
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    goto :goto_0

    .line 595
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    goto :goto_0

    .line 597
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    goto :goto_0

    .line 599
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 600
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    :cond_3
    :goto_0
    return-object p0
.end method

.method protected convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I
    .locals 1

    .line 606
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p0

    .line 607
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v0, :cond_0

    .line 608
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p0

    goto :goto_0

    .line 609
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v0, :cond_1

    .line 610
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p0

    goto :goto_0

    .line 611
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v0, :cond_2

    .line 612
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p0

    goto :goto_0

    .line 613
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v0, :cond_3

    .line 614
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p0

    :cond_3
    :goto_0
    return p0
.end method

.method protected convertRcsStateWithSpecificParam()Ljava/lang/String;
    .locals 2

    .line 631
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsStateWithSpecificParam(Ljava/lang/String;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected convertRcsStateWithSpecificParam(Ljava/lang/String;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Ljava/lang/String;
    .locals 1

    .line 635
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 638
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 639
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 641
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    .line 642
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isActiveVersion(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected endAutoConfig(Z)V
    .locals 4

    .line 663
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endAutoConfig: result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 664
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    const/16 v3, 0x34

    if-eqz p1, :cond_0

    .line 666
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    if-lez p1, :cond_1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    if-lez p1, :cond_1

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 665
    :goto_1
    invoke-interface {v0, v3, p1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->notifyAutoConfigurationListener(IZ)V

    .line 669
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 670
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastErrorCode(I)V

    .line 672
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setCompleted(Z)V

    .line 673
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 674
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    return-void
.end method

.method protected executeAutoConfig()V
    .locals 3

    .line 658
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "executeAutoConfig"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->work()V

    return-void
.end method

.method public forceAutoConfig(Z)V
    .locals 4

    .line 81
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-eqz v0, :cond_0

    .line 82
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string p1, "forceAutoConfig ongoing"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceAutoConfig mobile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    const/4 p1, 0x0

    .line 86
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public forceAutoConfigNeedResetConfig(Z)V
    .locals 7

    .line 92
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-eqz v0, :cond_0

    .line 93
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string p1, "forceAutoConfigNeedResetConfig ongoing"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 95
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceAutoConfigNeedResetConfig mobile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    .line 98
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/params/ACSConfig;->isTriggeredByNrcr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    aput-object v5, v4, v1

    const/4 v5, 0x1

    sget-object v6, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 103
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsVersion(I)V

    goto :goto_0

    .line 105
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 108
    :goto_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method protected getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 3

    const-string/jumbo v0, "storage_data"

    const-string v1, "root/application/1/services/rcsdisabledstate"

    const/4 v2, 0x0

    .line 562
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object p0

    return-object p0
.end method

.method protected getRcsDisabledState(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;"
        }
    .end annotation

    .line 574
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string/jumbo v1, "storage_data"

    .line 576
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 577
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v1, "parsedxml_data"

    .line 578
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 579
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v2, p1

    .line 582
    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 583
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getRcsDisabledState: empty"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 586
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsDisabledStateToOpMode(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object p0

    .line 587
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getRcsDisabledState: mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method protected getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;"
        }
    .end annotation

    const-string v0, "parsedxml_data"

    const-string v1, "root/application/1/services/rcsdisabledstate"

    .line 570
    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object p0

    return-object p0
.end method

.method protected getRcsState()Ljava/lang/String;
    .locals 1

    .line 650
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v0, "root/application/1/services/rcsstate"

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;,
            Lcom/sec/internal/ims/config/exception/UnknownStatusException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastErrorCode(I)V

    .line 123
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResponseForUp: mLastErrorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mLastErrorCode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mLastErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mAlternateVersions:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Supported-Versions"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase$$ExternalSyntheticLambda0;-><init>()V

    .line 129
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setAcsSeverSupportedVersions(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 135
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELEFONICA_GERMANY:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELEFONICA_SPAIN:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    sget-object v8, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    aput-object v8, v4, v5

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->HandleResponseForUpOther(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 140
    :cond_2
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mLastErrorCode:I

    if-eqz v2, :cond_d

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_c

    const/16 v4, 0x193

    if-eq v2, v4, :cond_b

    const/16 v4, 0x196

    if-eq v2, v4, :cond_7

    const/16 p2, 0x1f4

    if-eq v2, p2, :cond_6

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_5

    const/16 p2, 0x1ff

    if-eq v2, p2, :cond_4

    const/16 p0, 0x320

    if-ne v2, p0, :cond_3

    const-string p0, "SSL handshake is failed"

    .line 222
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 227
    :cond_3
    new-instance p0, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string/jumbo p1, "unknown http status code"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p2, "The token is no longer valid"

    .line 180
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object p2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->INVALID_TOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string p3, ""

    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setToken(Ljava/lang/String;Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 182
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->removeValidToken()V

    goto/16 :goto_5

    .line 166
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getretryAfterTime()J

    move-result-wide p1

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int p1, p1

    .line 168
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    .line 170
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_e

    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object p1

    const-string p2, "OTP"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "got 503 response for request with OTP, restart autoconf"

    .line 172
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpClean()V

    goto/16 :goto_4

    :cond_6
    const-string p2, "internal server error"

    .line 153
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p2}, Lcom/sec/internal/ims/config/SharedInfo;->getInternalErrRetryCount()I

    move-result p2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    if-gt p2, v0, :cond_e

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    add-int/2addr p2, v7

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/SharedInfo;->setInternalErrRetryCount(I)V

    goto :goto_5

    .line 189
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mAlternateVersions:[Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 190
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "rcs_provisioning_version"

    const-string v2, "2.0"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_a

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v3, p1

    goto :goto_2

    .line 198
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mAlternateVersions:[Ljava/lang/String;

    array-length v1, p1

    :goto_1
    if-ge v6, v1, :cond_a

    aget-object v2, p1, v6

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v3, v2

    goto :goto_2

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    if-eqz v3, :cond_e

    .line 209
    iput-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProvisioningVersion:Ljava/lang/String;

    goto :goto_3

    :cond_b
    const-string p1, "set version to zero"

    .line 147
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    goto :goto_4

    :cond_c
    const-string p0, "normal case"

    .line 142
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object p1, p2

    goto :goto_5

    :cond_d
    const-string p0, "RCS configuration server is unreachable"

    .line 217
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_4
    move-object p1, p3

    :goto_5
    return-object p1
.end method

.method protected isActiveVersion(I)Z
    .locals 0

    .line 646
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isDataFullUpdateNeeded(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 326
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result p1

    if-lt v0, p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 327
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected isMobilePreferred()Z
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->checkWifiConnection(Landroid/net/ConnectivityManager;)Z

    move-result v0

    .line 556
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->checkMobileConnection(Landroid/net/ConnectivityManager;)Z

    move-result p0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z
    .locals 0

    .line 624
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    return-void
.end method

.method protected registerMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1

    .line 492
    :try_start_0
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string v0, "register mobile network"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p1, p2, p3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 494
    invoke-virtual {p1, p2, p3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 499
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendIidToken(Ljava/lang/String;)V
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->sendIidToken(Ljava/lang/String;)V

    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;)V
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->sendMsisdnNumber(Ljava/lang/String;)V

    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;)V
    .locals 2

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",VC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13020002

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 476
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->sendVerificationCode(Ljava/lang/String;)V

    return-void
.end method

.method protected setAcsSeverSupportedVersions(Ljava/lang/String;)V
    .locals 1

    .line 566
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v0, "info/server_supported_vesions"

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected setActiveOpMode(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isDataFullUpdateNeeded(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->writeDataToStorage(Ljava/util/Map;)V

    .line 334
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersionBackup(I)V

    .line 335
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMSI_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "save valid token"

    .line 338
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "validrcsconfig"

    invoke-static {v0, v2, v3, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "the same or lower version, remain previous data"

    .line 342
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->checkAndUpdateData(Ljava/util/Map;)V

    .line 345
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    return-void
.end method

.method protected setActiveOpModeWithEmptyData()V
    .locals 3

    .line 353
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getParsedIntVersionBackup()I

    move-result v0

    .line 354
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 355
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "retreive backup version of configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    goto :goto_0

    .line 358
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string v0, "data is empty, remain previous data and mode"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected setDisableOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 363
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->DISABLE_RCS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->clearStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    if-eqz p2, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 371
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 372
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidity(I)V

    return-void
.end method

.method protected setDisableRcsByUserOpMode()V
    .locals 3

    .line 416
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersionBackup(I)V

    .line 419
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    .line 420
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rcsState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 422
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTime(J)V

    return-void
.end method

.method protected setDisabledStateOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p2, v0, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersionBackup(I)V

    .line 401
    :cond_1
    sget-object p2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, p2, :cond_2

    .line 402
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    goto :goto_0

    .line 403
    :cond_2
    sget-object p2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, p2, :cond_3

    .line 404
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    goto :goto_0

    .line 405
    :cond_3
    sget-object p2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, p2, :cond_4

    .line 406
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    goto :goto_0

    .line 408
    :cond_4
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 410
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 412
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTime(J)V

    return-void
.end method

.method protected setDormantOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V
    .locals 3

    .line 376
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    .line 377
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getParsedIntVersionBackup()I

    move-result v1

    .line 386
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 387
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersionBackup(I)V

    .line 390
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    return-void
.end method

.method public setEnableRcsByMigration()V
    .locals 2

    .line 445
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 446
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    const-string v1, ""

    .line 447
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsDisabledState(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidity(I)V

    .line 449
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 450
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTime(J)V

    return-void
.end method

.method protected setEnableRcsByUserOpMode()V
    .locals 3

    .line 426
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getParsedIntVersionBackup()I

    move-result v0

    .line 427
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v1, v2, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 430
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 431
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->DISABLE_RCS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->clearStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 434
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 435
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    :goto_0
    const-string v0, ""

    .line 437
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsDisabledState(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 439
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTime(J)V

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->disableRcsByAcs(Z)V

    return-void
.end method

.method protected setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 263
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOpMode: mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase$1;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string/jumbo p0, "unknown mode"

    .line 320
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setEnableRcsByUserOpMode()V

    goto :goto_0

    .line 312
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setDisableRcsByUserOpMode()V

    goto :goto_0

    .line 308
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setDisabledStateOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    goto :goto_0

    .line 298
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setDormantOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    goto :goto_0

    :pswitch_4
    if-eqz p2, :cond_0

    .line 282
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity(Ljava/util/Map;)I

    move-result v0

    .line 283
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v1

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    .line 284
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 285
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidity(I)V

    .line 286
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    goto :goto_0

    .line 294
    :cond_0
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setDisableOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_6
    if-nez p2, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setActiveOpModeWithEmptyData()V

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setActiveOpMode(Ljava/util/Map;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setRcsDisabledState(Ljava/lang/String;)V
    .locals 1

    .line 620
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v0, "root/application/1/services/rcsdisabledstate"

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected setRcsState(Ljava/lang/String;)V
    .locals 1

    .line 654
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v0, "root/application/1/services/rcsstate"

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public startAutoConfig(Z)V
    .locals 4

    .line 70
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-eqz v0, :cond_0

    .line 71
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "startAutoConfig ongoing"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAutoConfig mobile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    return-void
.end method

.method protected unregisterMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1

    .line 506
    :try_start_0
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "unregister mobile network"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 509
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method work()V
    .locals 0

    return-void
.end method
