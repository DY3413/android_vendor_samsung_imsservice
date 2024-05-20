.class public Lcom/sec/internal/helper/os/TelephonyManagerWrapper;
.super Ljava/lang/Object;
.source "TelephonyManagerWrapper.java"

# interfaces
.implements Lcom/sec/internal/helper/os/ITelephonyManager;


# static fields
.field public static final DEFAULT_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyManagerWrapper"

.field private static volatile mInstance:Lcom/sec/internal/helper/os/TelephonyManagerWrapper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceType:Ljava/lang/String;

.field private mGid1:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGid2:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeDomain:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImei:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImpi:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImpus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImsi:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorCode:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImei:Landroid/util/SparseArray;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpi:Landroid/util/SparseArray;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpus:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mHomeDomain:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mOperatorCode:Landroid/util/SparseArray;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid1:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid2:Landroid/util/SparseArray;

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private extractNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 447
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    .line 448
    invoke-virtual {p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "@"

    .line 449
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 451
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getCdmaMdn()Ljava/lang/String;
    .locals 0

    .line 647
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCdmaMdn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCdmaMdn(I)Ljava/lang/String;
    .locals 0

    .line 643
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCellLocation()Landroid/telephony/CellLocation;
    .locals 0

    .line 593
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;
    .locals 2

    const-class v0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mInstance:Lcom/sec/internal/helper/os/TelephonyManagerWrapper;

    if-nez v1, :cond_1

    .line 60
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    :try_start_1
    sget-object v1, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mInstance:Lcom/sec/internal/helper/os/TelephonyManagerWrapper;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;

    invoke-direct {v1, p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mInstance:Lcom/sec/internal/helper/os/TelephonyManagerWrapper;

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 67
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mInstance:Lcom/sec/internal/helper/os/TelephonyManagerWrapper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private getTelephonyManager(I)Landroid/telephony/TelephonyManager;
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 80
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method private isCmcSecondaryDevice()Z
    .locals 7

    .line 740
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "sd"

    const-string v3, "TelephonyManagerWrapper"

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoneCount: isCmcSecondaryDevice: cache "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v4

    .line 748
    :cond_1
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;-><init>()V

    .line 749
    iget-object v5, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->init(Landroid/content/Context;)Z

    .line 750
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v5

    .line 751
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->deInit()V

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhoneCount: isCmcSecondaryDevice: api: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v5, v0, :cond_2

    .line 754
    iput-object v2, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    return v1

    .line 756
    :cond_2
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v5, v0, :cond_3

    const-string v0, "pd"

    .line 757
    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    return v4

    .line 761
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ro.cmc.device_type"

    const-string v5, ""

    .line 762
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 764
    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    .line 765
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhoneCount: isCmcSecondaryDevice: prop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v4

    :cond_5
    const-string/jumbo v0, "unknown"

    .line 772
    iput-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mDeviceType:Ljava/lang/String;

    :cond_6
    return v4
.end method

.method private isValidIsimMsisdn(I)Z
    .locals 5

    .line 432
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 435
    array-length v1, p1

    if-eqz v1, :cond_2

    .line 436
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    const-string v4, "+"

    .line 437
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "tel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 438
    :cond_0
    invoke-direct {p0, v3}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "+8200000000000"

    .line 443
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public checkCallControl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 812
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p2

    if-eqz p2, :cond_0

    .line 813
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 814
    aget p2, p2, v0

    .line 815
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->checkCallControl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public clearCache()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImei:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 137
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 138
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpi:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 139
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpus:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 140
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mHomeDomain:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 141
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mOperatorCode:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 142
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid1:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 143
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid2:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public getAidForAppType(I)Ljava/lang/String;
    .locals 0

    .line 565
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getAidForAppType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAidForAppType(II)Ljava/lang/String;
    .locals 0

    .line 570
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getAidForAppType(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 604
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllCellInfoBySubId(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 609
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getAllCellInfoBySubId(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getApnOperatorCode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_0

    return-object v0

    .line 228
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "LRA"

    .line 229
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ACG"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "gsm.apn.sim.operator.numeric"

    .line 231
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ","

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-ltz p2, :cond_2

    .line 234
    array-length v1, v0

    if-ge p2, v1, :cond_2

    aget-object v1, v0, p2

    if-eqz v1, :cond_2

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " use apnOperatorCode "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v0, p2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    aget-object p0, v0, p2

    return-object p0

    :cond_2
    return-object p1
.end method

.method public getBtid(I)Ljava/lang/String;
    .locals 0

    .line 580
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getBtid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCallState()I
    .locals 0

    .line 458
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    return p0
.end method

.method public getCallState(I)I
    .locals 0

    .line 463
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCallStateForSlot(I)I

    move-result p0

    return p0
.end method

.method public getCurrentPhoneTypeForSlot(I)I
    .locals 0

    .line 468
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result p0

    return p0
.end method

.method public getDataNetworkType()I
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    return p0
.end method

.method public getDataNetworkType(I)I
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    return p0
.end method

.method public getDataServiceState()I
    .locals 0

    .line 516
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->semGetDataServiceState()I

    move-result p0

    return p0
.end method

.method public getDataServiceState(I)I
    .locals 0

    .line 521
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->semGetDataServiceState(I)I

    move-result p0

    return p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .line 526
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 528
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImei:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 529
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "use backup deviceId : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImei:Landroid/util/SparseArray;

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 2

    .line 538
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImei:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 541
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "use backup deviceId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 543
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImei:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 0

    .line 550
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEmergencyNumberList()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation

    .line 806
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGid2(I)Ljava/lang/String;
    .locals 2

    .line 498
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel2(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid2:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 502
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "use backup gid2 : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid2:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 3

    .line 473
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 475
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid1:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 476
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "use backup gid : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid1:Landroid/util/SparseArray;

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getGroupIdLevel1(I)Ljava/lang/String;
    .locals 2

    .line 485
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid1:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 489
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "use backup gid : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mGid1:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImei()Ljava/lang/String;
    .locals 0

    .line 652
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImei(I)Ljava/lang/String;
    .locals 0

    .line 657
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 0

    .line 727
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    invoke-static {p1, p2, p3}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 729
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getIntAtIndex exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerWrapper"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 3

    .line 684
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    .line 686
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 687
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mHomeDomain:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 688
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "use backup domain : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 690
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mHomeDomain:Landroid/util/SparseArray;

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getIsimDomain(I)Ljava/lang/String;
    .locals 2

    .line 316
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mHomeDomain:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "use backup domain : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mHomeDomain:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 3

    .line 698
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 701
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpi:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 702
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "use backup impi : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 704
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpi:Landroid/util/SparseArray;

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getIsimImpi(I)Ljava/lang/String;
    .locals 2

    .line 303
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpi:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 307
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "use backup impi : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpi:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 3

    .line 330
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 332
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpus:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 333
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpus:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    .line 334
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "use backup domain : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method public getIsimImpu(I)[Ljava/lang/String;
    .locals 2

    .line 343
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpus:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 346
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImpus:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    .line 347
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "use backup impu : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 0

    .line 511
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getIsimPcscf()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyLifetime(I)Ljava/lang/String;
    .locals 0

    .line 585
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getKeyLifetime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 0

    .line 356
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 0

    .line 361
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 0

    .line 662
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMeid(I)Ljava/lang/String;
    .locals 0

    .line 667
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 0

    .line 639
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkOperatorForPhone(I)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkType()I
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    return p0
.end method

.method public getNextRetryTime()J
    .locals 2

    .line 846
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNextRetryTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneCount()I
    .locals 1

    .line 188
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->isCmcSecondaryDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getPreferredNetworkType(I)I
    .locals 0

    .line 634
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType(I)I

    move-result p0

    return p0
.end method

.method public getRand(I)[B
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getRand()[B

    move-result-object p0

    return-object p0
.end method

.method public getServiceState()I
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 156
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getServiceState(I)Landroid/telephony/ServiceState;
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0
.end method

.method public getServiceStateForSubscriber(I)I
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 0

    .line 614
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimCountryIsoForPhone(I)Ljava/lang/String;
    .locals 0

    .line 624
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimCountryIsoForSubId(I)Ljava/lang/String;
    .locals 0

    .line 619
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 4

    .line 245
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneIdFromTelephony()I

    move-result v1

    .line 247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mOperatorCode:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use backup operatorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManagerWrapper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mOperatorCode:Landroid/util/SparseArray;

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getApnOperatorCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 4

    .line 259
    invoke-static {p1}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 261
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ril.simoperator"

    const-string v3, "ETC"

    .line 263
    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "46003"

    .line 265
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "46011"

    if-nez v2, :cond_0

    const-string v2, "46001"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "20404"

    .line 266
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45502"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45403"

    .line 267
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45431"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, v3

    .line 271
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 272
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "8985307"

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "8985302"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const-string v1, "45507"

    goto :goto_0

    :cond_3
    const-string v3, "APT"

    .line 279
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "52505"

    .line 281
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "46605"

    .line 286
    :cond_4
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 287
    iget-object v1, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mOperatorCode:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use backup operatorCode : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TelephonyManagerWrapper"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 290
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mOperatorCode:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    const/4 p1, -0x1

    if-ne v0, p1, :cond_6

    .line 295
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneIdFromTelephony()I

    move-result v0

    .line 298
    :cond_6
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getApnOperatorCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 0

    .line 736
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 0

    .line 402
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 0

    .line 407
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimState()I
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    return p0
.end method

.method public getSimState(I)I
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    return p0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    .line 672
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 674
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 675
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "use backup imsi : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 677
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3

    .line 366
    invoke-static {p1}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getSlotId(I)I

    move-result v0

    const-string v1, "ril.simoperator"

    const-string v2, "ETC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 370
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getSubscriberIdForUiccAppType(II)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 376
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 380
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "use backup imsi : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getSubscriberIdForUiccAppType(II)Ljava/lang/String;
    .locals 1

    .line 389
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getSubscriberIdForUiccAppType(II)Ljava/lang/String;

    move-result-object p2

    .line 391
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    .line 393
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "use backup imsi : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->mImsi:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-object p2
.end method

.method public getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 716
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    invoke-static {p1, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVoiceNetworkType()I
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result p0

    return p0
.end method

.method public getVoiceNetworkType(I)I
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result p0

    return p0
.end method

.method public hasCall(Ljava/lang/String;)Z
    .locals 0

    .line 785
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public iccCloseLogicalChannel(II)Z
    .locals 0

    .line 801
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(II)Z

    move-result p0

    return p0
.end method

.method public iccOpenLogicalChannelAndGetChannel(ILjava/lang/String;)I
    .locals 1

    .line 790
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/TelephonyManager;->iccOpenLogicalChannel(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result p0

    return p0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 795
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/TelephonyManager;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGbaSupported()Z
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isGbaSupported()Z

    move-result p0

    return p0
.end method

.method public isGbaSupported(I)Z
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->isGbaSupported(I)Z

    move-result p0

    return p0
.end method

.method public isNetworkRoaming()Z
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p0

    return p0
.end method

.method public isNetworkRoaming(I)Z
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p0

    return p0
.end method

.method public isVoiceCapable()Z
    .locals 0

    .line 780
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p0

    return p0
.end method

.method public semGetDataState(I)I
    .locals 0

    .line 823
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->semGetDataState(I)I

    move-result p0

    return p0
.end method

.method public semGetNrMode(I)I
    .locals 2

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "semGetNrMode: phoneId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 836
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->semGetNrMode()I

    move-result p0

    return p0
.end method

.method public semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 841
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    invoke-static {p1, p2, p3}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semSetNrMode(II)V
    .locals 2

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "semSetNrMode: phoneId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,mode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/TelephonyManager;->semSetNrMode(IIZ)Z

    return-void
.end method

.method public sendRawRequestToTelephony(Landroid/content/Context;[B)V
    .locals 0

    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 86
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    return-void
.end method

.method public setCallState(I)V
    .locals 0

    return-void
.end method

.method public setGbaBootstrappingParams(I[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 560
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Landroid/telephony/TelephonyManager;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 555
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPreferredNetworkType(II)Z
    .locals 0

    .line 629
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result p0

    return p0
.end method

.method public setRadioPower(Z)V
    .locals 0

    .line 711
    invoke-direct {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setRadioPower(Z)Z

    return-void
.end method

.method public setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public validateMsisdn(I)Z
    .locals 4

    .line 412
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TelephonyManagerWrapper"

    if-eqz v0, :cond_0

    const-string p0, "empty msisdn"

    .line 413
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 417
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0000000000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "empty mdn"

    .line 418
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 423
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->isValidIsimMsisdn(I)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "empty iSimMsisdn"

    .line 424
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
