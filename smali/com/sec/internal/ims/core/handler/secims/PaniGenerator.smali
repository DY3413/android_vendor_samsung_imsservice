.class public Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;
.super Ljava/lang/Object;
.source "PaniGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorCmc;,
        Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PaniGenerator"

.field private static final PLANIINTIME_PREF:Ljava/lang/String; = "PLANIINTIME"

.field protected static final PLANI_PREF:Ljava/lang/String; = "PLANI"

.field static final SUPPORTED_LINK_SPEED_11A_G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final SUPPORTED_LINK_SPEED_11B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isSoftPhone:Z

.field private mContext:Landroid/content/Context;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

.field protected mLastPaniList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field protected mPrevLastPaniList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$cRNcmcatK1Lm7VNrjWhQawch92k(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->lambda$getWiFiStandard$0(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisSoftPhone(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isSoftPhone:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPdnController(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAllCellInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getAllCellInfo(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAreaCode(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getAreaCode(Landroid/telephony/CellIdentity;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCid(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(Landroid/telephony/CellIdentity;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isValidInfo(Landroid/telephony/CellIdentity;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    const/16 v6, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->SUPPORTED_LINK_SPEED_11B:Ljava/util/List;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v6, 0x6

    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v4

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    const/16 v0, 0x36

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->SUPPORTED_LINK_SPEED_11A_G:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IPdnController;)V
    .locals 4

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    .line 89
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 91
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 92
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isSoftPhone:Z

    .line 93
    new-instance p1, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-direct {p1, p2, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const/4 p1, 0x0

    .line 95
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 96
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "imsconfig"

    const-string v3, "PLANI"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 97
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    const-string v0, ""

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;-><init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    return-void
.end method

.method private getAllCellInfo(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 948
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getAllCellInfo(IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getAreaCode(Landroid/telephony/CellIdentity;)I
    .locals 0

    if-eqz p1, :cond_4

    .line 980
    instance-of p0, p1, Landroid/telephony/CellIdentityNr;

    if-eqz p0, :cond_0

    .line 981
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result p0

    return p0

    .line 982
    :cond_0
    instance-of p0, p1, Landroid/telephony/CellIdentityLte;

    if-eqz p0, :cond_1

    .line 983
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result p0

    return p0

    .line 984
    :cond_1
    instance-of p0, p1, Landroid/telephony/CellIdentityTdscdma;

    if-eqz p0, :cond_2

    .line 985
    check-cast p1, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityTdscdma;->getLac()I

    move-result p0

    return p0

    .line 986
    :cond_2
    instance-of p0, p1, Landroid/telephony/CellIdentityWcdma;

    if-eqz p0, :cond_3

    .line 987
    check-cast p1, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p0

    return p0

    .line 988
    :cond_3
    instance-of p0, p1, Landroid/telephony/CellIdentityGsm;

    if-eqz p0, :cond_4

    .line 989
    check-cast p1, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p0

    return p0

    :cond_4
    const p0, 0x7fffffff

    return p0
.end method

.method private getCid(Landroid/telephony/CellIdentity;)J
    .locals 0

    if-eqz p1, :cond_4

    .line 125
    instance-of p0, p1, Landroid/telephony/CellIdentityLte;

    if-eqz p0, :cond_0

    .line 126
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 127
    :cond_0
    instance-of p0, p1, Landroid/telephony/CellIdentityNr;

    if-eqz p0, :cond_1

    .line 128
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide p0

    return-wide p0

    .line 129
    :cond_1
    instance-of p0, p1, Landroid/telephony/CellIdentityGsm;

    if-eqz p0, :cond_2

    .line 130
    check-cast p1, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 131
    :cond_2
    instance-of p0, p1, Landroid/telephony/CellIdentityWcdma;

    if-eqz p0, :cond_3

    .line 132
    check-cast p1, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 133
    :cond_3
    instance-of p0, p1, Landroid/telephony/CellIdentityTdscdma;

    if-eqz p0, :cond_4

    .line 134
    check-cast p1, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityTdscdma;->getCid()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_4
    const-wide/32 p0, 0x7fffffff

    return-wide p0
.end method

.method private getGenerator(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;
    .locals 0

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorCmc;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorCmc;-><init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V

    return-object p1

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    return-object p0
.end method

.method private getPrevioutPlani(I)Ljava/lang/String;
    .locals 0

    .line 917
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private getStoredLastPani(I)Ljava/lang/String;
    .locals 0

    .line 925
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private isValidAreaCode(I)Z
    .locals 0

    const p0, 0x7fffffff

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidCellId(ZJ)Z
    .locals 3

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0

    :cond_1
    const-wide/32 v1, 0x7fffffff

    cmp-long p1, p2, v1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    return p0
.end method

.method private isValidInfo(Landroid/telephony/CellIdentity;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 953
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getAreaCode(Landroid/telephony/CellIdentity;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isValidAreaCode(I)Z

    move-result v1

    .line 954
    instance-of v2, p1, Landroid/telephony/CellIdentityNr;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(Landroid/telephony/CellIdentity;)J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isValidCellId(ZJ)Z

    move-result v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 957
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->strangeCellInfoDiscovered(Landroid/telephony/CellIdentity;ZZ)V

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x0

    .line 961
    invoke-direct {p0, p1, v0, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->strangeCellInfoDiscovered(Landroid/telephony/CellIdentity;ZZ)V

    return v0
.end method

.method private static synthetic lambda$getWiFiStandard$0(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 9

    .line 885
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v0

    .line 886
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWiFiStandard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 p0, 0x4

    if-eq v0, p0, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p0, 0x6

    if-eq v0, p0, :cond_0

    return-object v2

    :cond_0
    const-string p0, "ax"

    return-object p0

    :cond_1
    const-string p0, "ac"

    return-object p0

    :cond_2
    const-string p0, "n"

    return-object p0

    .line 898
    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 899
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result p0

    .line 900
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v4, "getWiFiStandard: freq %dghz, %dmbps"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->SUPPORTED_LINK_SPEED_11B:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "b"

    return-object p0

    .line 903
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->SUPPORTED_LINK_SPEED_11A_G:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    if-ne v0, v3, :cond_5

    const-string p0, "a"

    goto :goto_0

    :cond_5
    const-string p0, "g"

    :goto_0
    return-object p0

    :cond_6
    return-object v2
.end method

.method private setPrevioutPlani(ILjava/lang/String;)V
    .locals 0

    .line 933
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 935
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "setPrevioutPlani: IndexOutOfBoundsException"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private storeLastPani(ILjava/lang/String;)V
    .locals 0

    .line 941
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 943
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "storeLastPani: IndexOutOfBoundsException"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private strangeCellInfoDiscovered(Landroid/telephony/CellIdentity;ZZ)V
    .locals 2

    if-nez p1, :cond_0

    .line 997
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p1, "strangeCellInfoDiscovered : cellIdentity null"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo p2, "tac or lac available"

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "tac or lac unavailable"

    :goto_0
    if-eqz p3, :cond_2

    const-string p3, "cid available"

    goto :goto_1

    :cond_2
    const-string p3, "cid unAvailable"

    .line 1004
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "strangeCellInfoDiscovered : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 1009
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Dump of PaniGenerator:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public generate(ILjava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 6

    .line 141
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 144
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generate: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p3, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x12

    const/16 v5, 0xf

    if-ne p1, v5, :cond_4

    .line 150
    iget-boolean v5, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isSoftPhone:Z

    if-nez v5, :cond_4

    .line 151
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEmergencyEpdgConnected(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    invoke-virtual {p0, v3, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne v1, v3, :cond_1

    .line 154
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilMobileDataRadioTechnology()I

    move-result p4

    invoke-static {p4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    .line 157
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generate: rat="

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilMobileDataRadioTechnology()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    const/4 p1, -0x1

    if-ne v0, p1, :cond_2

    .line 162
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getRatInNoSimCase(ILandroid/content/Context;)I

    move-result v1

    .line 164
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    const/16 p1, 0x14

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xd

    :goto_0
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v4, 0x1

    if-eq p1, v4, :cond_6

    .line 168
    sget v4, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_WIFI_P2P:I

    if-eq p1, v4, :cond_6

    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 170
    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 171
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isWifiConnected()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result p1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_5

    goto :goto_1

    :cond_5
    if-ne v1, v3, :cond_7

    .line 173
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 174
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    if-nez v1, :cond_7

    .line 176
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result v1

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generate: mobileDataNetworkType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v3

    :cond_7
    :goto_2
    if-nez v1, :cond_8

    const-string p0, "network is unknown."

    .line 183
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 187
    :cond_8
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getGenerator(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    move-result-object p0

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCid(I)J
    .locals 1

    .line 103
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getAllCellInfo(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 104
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 105
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellInfo;

    .line 106
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    .line 107
    instance-of v0, p1, Landroid/telephony/CellIdentityLte;

    if-eqz v0, :cond_1

    .line 108
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 109
    :cond_1
    instance-of v0, p1, Landroid/telephony/CellIdentityNr;

    if-eqz v0, :cond_2

    .line 110
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide p0

    return-wide p0

    .line 111
    :cond_2
    instance-of v0, p1, Landroid/telephony/CellIdentityGsm;

    if-eqz v0, :cond_3

    .line 112
    check-cast p1, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 113
    :cond_3
    instance-of v0, p1, Landroid/telephony/CellIdentityWcdma;

    if-eqz v0, :cond_4

    .line 114
    check-cast p1, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 115
    :cond_4
    instance-of v0, p1, Landroid/telephony/CellIdentityTdscdma;

    if-eqz v0, :cond_0

    .line 116
    check-cast p1, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityTdscdma;->getCid()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_5
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getLastPani(ILcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .line 802
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "imsconfig"

    const-string v3, "PLANI"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 807
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    .line 810
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needTimeStampForLastPani(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    .line 818
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_2

    .line 819
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    .line 820
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 821
    invoke-interface {p0, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceStateForSubscriber(I)I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, ";\"\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}.*$"

    const-string v1, ""

    .line 822
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_5

    .line 830
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 831
    sget-object p2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p0, p2, :cond_3

    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_0

    .line 833
    :cond_3
    sget-object p2, Lcom/sec/internal/constants/Mno;->CELLC_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne p0, p2, :cond_4

    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    goto :goto_0

    :cond_4
    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 836
    :goto_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 837
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 840
    :cond_5
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getLastPani: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getTimeInPlani(I)J
    .locals 6

    .line 699
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user_config"

    const-string v3, "PLANIINTIME"

    const-wide/16 v4, 0x0

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getLong(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 700
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeInPlani: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-wide v0
.end method

.method getWiFiStandard()Ljava/lang/String;
    .locals 1

    .line 882
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda0;-><init>()V

    .line 883
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda1;-><init>()V

    .line 884
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    .line 912
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isChangedPlani(ILjava/lang/String;)Z
    .locals 4

    .line 677
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getPrevioutPlani(I)Ljava/lang/String;

    move-result-object v0

    .line 678
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChangedPlani: prev plani "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", curr plani "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 679
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 682
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setPrevioutPlani(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected isValidPani(Ljava/lang/String;I)Z
    .locals 6

    .line 845
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 854
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 855
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v2

    .line 856
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceStateForSubscriber(I)I

    move-result v3

    .line 857
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataServiceState(I)I

    move-result p0

    .line 859
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidPani: PANI ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] network ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] voiceSvcState ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] dataSvcState ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p2, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const-string p2, "IEEE-802.11"

    .line 862
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const/16 p1, 0x12

    const/4 p2, 0x1

    if-ne v2, p1, :cond_1

    if-nez v3, :cond_2

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    :goto_0
    move v1, p2

    :cond_2
    return v1

    :cond_3
    if-eqz v3, :cond_4

    return v1

    :cond_4
    const-string p0, "i-wlan-node-id="

    .line 873
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public needCellInfoAge(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 705
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cellular-Network-Info_With_CIA"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needCellInfoAgeInactive(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 709
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cellular-Network-Info_With_CIA_Inactive"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needTimeStampForLastPani(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 713
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cellular-Network-Info_With_CIA"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 714
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected queryCellInfoForQualcomm()V
    .locals 2

    .line 718
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryCellInfoForQualcomm"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "cellInfo is null."

    .line 722
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removePreviousPlani(I)V
    .locals 4

    .line 688
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getPrevioutPlani(I)Ljava/lang/String;

    move-result-object v0

    .line 689
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePreviousPlani: prev plani "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, ""

    .line 690
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setPrevioutPlani(ILjava/lang/String;)V

    return-void
.end method

.method public setLkcForLastPani(ILjava/lang/String;Lcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)V
    .locals 2

    .line 745
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object v0

    .line 746
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setLkcForLastPani: No Last PANI header for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 751
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isValidPani(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 752
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "setLkcForLastPani: current PANI is not valid!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "IEEE-802.11"

    .line 757
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 758
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    goto :goto_0

    .line 760
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    invoke-interface {p2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result p2

    .line 761
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    invoke-virtual {v0, p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(II)Ljava/lang/String;

    move-result-object p2

    .line 763
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isValidPani(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 764
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "setLkcForLastPani: underlyingCellularPani is not valid!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 767
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    .line 770
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object p2

    .line 772
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needTimeStampForLastPani(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 774
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p3

    .line 775
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_4

    const-string/jumbo p3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_1

    .line 777
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/Mno;->CELLC_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_5

    const-string/jumbo p3, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    goto :goto_1

    :cond_5
    const-string/jumbo p3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 780
    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 781
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";\""

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    .line 785
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object p2

    .line 786
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string p3, "imsconfig"

    const-string p4, "PLANI"

    invoke-static {p1, p0, p3, p4, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setLkcForLastPani: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setTimeInPlani(IJ)V
    .locals 6

    .line 694
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user_config"

    const-string v3, "PLANIINTIME"

    move v0, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 695
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTimeInPlani: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
