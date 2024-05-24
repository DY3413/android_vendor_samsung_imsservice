.class public Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;
.super Ljava/lang/Object;
.source "PaniGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;,
        Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorCmc;
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
.field isSoftPhone:Z

.field protected mConnectivityManager:Landroid/net/ConnectivityManager;

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
.method public static synthetic $r8$lambda$Z7Q6k5NaiewBD_N3JyxntkB0jbc(Landroid/net/TransportInfo;)Landroid/net/wifi/WifiInfo;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->lambda$getWiFiStandard$0(Landroid/net/TransportInfo;)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pqF3jdBt1Quem9jQ6yuOyazf6f8(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->convertToCharacter(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPdnController(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAllCellInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)Ljava/util/List;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getAllCellInfo(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isValidInfo(Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 9

    const/4 v0, 0x1

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->SUPPORTED_LINK_SPEED_11B:Ljava/util/List;

    const/4 v0, 0x6

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x36

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->SUPPORTED_LINK_SPEED_11A_G:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IPdnController;)V
    .registers 7

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    .line 88
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 90
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 91
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 93
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isSoftPhone:Z

    .line 94
    new-instance p1, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-direct {p1, p2, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const/4 p1, 0x0

    .line 96
    :goto_3b
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result p2

    if-ge p1, p2, :cond_5d

    .line 97
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string v1, "PLANI"

    const/4 v2, 0x0

    const-string v3, "imsconfig"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 98
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    const-string v0, ""

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3b

    .line 100
    :cond_5d
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;-><init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    return-void
.end method

.method private convertToCharacter(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .registers 7

    .line 846
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result p0

    .line 847
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWiFiStandard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, ""

    if-eq p0, v1, :cond_32

    packed-switch p0, :pswitch_data_78

    return-object v2

    :pswitch_23
    const-string p0, "be"

    return-object p0

    :pswitch_26
    const-string p0, "ad"

    return-object p0

    :pswitch_29
    const-string p0, "ax"

    return-object p0

    :pswitch_2c
    const-string p0, "ac"

    return-object p0

    :pswitch_2f
    const-string p0, "n"

    return-object p0

    .line 865
    :cond_32
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    .line 866
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result p1

    .line 867
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "getWiFiStandard: freq %dghz, %dmbps"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->SUPPORTED_LINK_SPEED_11B:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string p0, "b"

    return-object p0

    .line 870
    :cond_62
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->SUPPORTED_LINK_SPEED_11A_G:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_77

    const/4 p1, 0x5

    if-ne p0, p1, :cond_74

    const-string p0, "a"

    goto :goto_76

    :cond_74
    const-string p0, "g"

    :goto_76
    return-object p0

    :cond_77
    return-object v2

    :pswitch_data_78
    .packed-switch 0x4
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
    .end packed-switch
.end method

.method private generateEmergencyPani(Ljava/lang/String;III)Ljava/lang/String;
    .registers 8

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEmergencyEpdgConnected(I)Z

    move-result v0

    const/16 v1, 0x12

    if-eqz v0, :cond_11

    .line 163
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    if-ne p4, v1, :cond_3a

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 167
    new-instance p4, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-direct {p4, v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    invoke-virtual {p4}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataNetworkType()I

    move-result p4

    .line 168
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateEmergencyPani: from mobile network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3a
    const/4 v0, -0x1

    if-ne p3, v0, :cond_43

    .line 173
    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/sec/internal/ims/util/ImsUtil;->getRatInNoSimCase(ILandroid/content/Context;)I

    move-result p4

    .line 175
    :cond_43
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    const/16 p3, 0x14

    if-ne p4, p3, :cond_4a

    goto :goto_4c

    :cond_4a
    const/16 p4, 0xd

    :goto_4c
    invoke-virtual {p0, p4, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAllCellInfo(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 914
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getAllCellInfo(IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getGenerator(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;
    .registers 2

    if-eqz p1, :cond_e

    .line 149
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    if-eqz p1, :cond_e

    .line 150
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorCmc;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorCmc;-><init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V

    return-object p1

    .line 152
    :cond_e
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    return-object p0
.end method

.method private getPrevioutPlani(I)Ljava/lang/String;
    .registers 2

    .line 883
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const-string p0, ""

    return-object p0
.end method

.method private getStoredLastPani(I)Ljava/lang/String;
    .registers 2

    .line 891
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const-string p0, ""

    return-object p0
.end method

.method private isValidInfo(Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z
    .registers 5

    .line 918
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isValid()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 920
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strangeCellInfoDiscovered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    :cond_1d
    return v0
.end method

.method private static synthetic lambda$getWiFiStandard$0(Landroid/net/TransportInfo;)Landroid/net/wifi/WifiInfo;
    .registers 1

    .line 841
    check-cast p0, Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method private setPrevioutPlani(ILjava/lang/String;)V
    .registers 3

    .line 899
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    .line 901
    :catch_6
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "setPrevioutPlani: IndexOutOfBoundsException"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    :goto_e
    return-void
.end method

.method private storeLastPani(ILjava/lang/String;)V
    .registers 3

    .line 907
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    .line 909
    :catch_6
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "storeLastPani: IndexOutOfBoundsException"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    :goto_e
    return-void
.end method


# virtual methods
.method public dump()V
    .registers 3

    .line 926
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Dump of PaniGenerator:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public generate(ILjava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .registers 12

    .line 117
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 119
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generate: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pdn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p3, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0xf

    if-ne p1, v3, :cond_3d

    .line 121
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isSoftPhone:Z

    if-nez v3, :cond_3d

    .line 122
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->generateEmergencyPani(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_48

    .line 126
    sget v5, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_WIFI_P2P:I

    if-ne p1, v5, :cond_46

    goto :goto_48

    :cond_46
    move p1, v3

    goto :goto_49

    :cond_48
    :goto_48
    move p1, v4

    .line 127
    :goto_49
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v5, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v5

    if-eqz v5, :cond_63

    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isWifiConnected()Z

    move-result v5

    if-nez v5, :cond_62

    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 128
    invoke-interface {v5, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_63

    :cond_62
    move v3, v4

    :cond_63
    const/16 v4, 0x12

    if-nez p1, :cond_9b

    if-eqz v3, :cond_6a

    goto :goto_9b

    :cond_6a
    if-ne v1, v4, :cond_9c

    .line 131
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p1

    if-nez p1, :cond_9c

    .line 132
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    if-nez v1, :cond_9c

    .line 134
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result v1

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generate: mobileDataNetworkType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_9c

    :cond_9b
    :goto_9b
    move v1, v4

    :cond_9c
    :goto_9c
    if-nez v1, :cond_a5

    const-string p0, "network is unknown."

    .line 141
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 145
    :cond_a5
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getGenerator(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    move-result-object p0

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCid(I)J
    .registers 5

    .line 104
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getAllCellInfo(I)Ljava/util/List;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_10

    .line 106
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getCid: getAllCellInfo null"

    invoke-static {p0, p1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-wide v0

    .line 110
    :cond_10
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda1;-><init>()V

    .line 111
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda4;-><init>()V

    .line 112
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 113
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getLastPani(ILcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)Ljava/lang/String;
    .registers 8

    .line 762
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 763
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string v1, "PLANI"

    const/4 v2, 0x0

    const-string v3, "imsconfig"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return-object v0

    .line 767
    :cond_1c
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    .line 770
    :cond_1f
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needTimeStampForLastPani(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    .line 778
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 779
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p2, v2, :cond_50

    .line 780
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    .line 781
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    if-eqz v3, :cond_50

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 782
    invoke-interface {p0, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceStateForSubscriber(I)I

    move-result p0

    if-nez p0, :cond_50

    const-string p0, ";\"\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}.*$"

    const-string v1, ""

    .line 783
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :cond_50
    if-eqz v1, :cond_89

    .line 791
    sget-object p0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p2, p0, :cond_5a

    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_65

    .line 793
    :cond_5a
    sget-object p0, Lcom/sec/internal/constants/Mno;->CELLC_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne p2, p0, :cond_62

    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    goto :goto_65

    :cond_62
    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 796
    :goto_65
    new-instance p2, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 797
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

    .line 800
    :cond_89
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
    .registers 8

    .line 659
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user_config"

    const-string v3, "PLANIINTIME"

    const-wide/16 v4, 0x0

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getLong(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 660
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
    .registers 4

    .line 838
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 839
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda0;-><init>(Landroid/net/ConnectivityManager;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda1;-><init>()V

    .line 840
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda2;-><init>()V

    .line 841
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V

    .line 842
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isChangedPlani(ILjava/lang/String;)Z
    .registers 7

    .line 637
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getPrevioutPlani(I)Ljava/lang/String;

    move-result-object v0

    .line 638
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

    .line 639
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 p0, 0x0

    return p0

    .line 642
    :cond_2a
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setPrevioutPlani(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected isValidPani(Ljava/lang/String;I)Z
    .registers 9

    .line 805
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 814
    :cond_8
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 815
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v2

    .line 816
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceStateForSubscriber(I)I

    move-result v3

    .line 817
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataServiceState(I)I

    move-result p0

    .line 819
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

    .line 822
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_65

    const/16 p1, 0x12

    const/4 p2, 0x1

    if-ne v2, p1, :cond_61

    if-nez v3, :cond_64

    goto :goto_63

    :cond_61
    if-nez p0, :cond_64

    :goto_63
    move v1, p2

    :cond_64
    return v1

    :cond_65
    if-eqz v3, :cond_68

    return v1

    :cond_68
    const-string p0, "i-wlan-node-id="

    .line 833
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public needCellInfoAge(Lcom/sec/ims/settings/ImsProfile;)Z
    .registers 2

    if-eqz p1, :cond_10

    .line 665
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cellular-Network-Info_With_CIA"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public needCellInfoAgeInactive(Lcom/sec/ims/settings/ImsProfile;)Z
    .registers 2

    if-eqz p1, :cond_10

    .line 669
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cellular-Network-Info_With_CIA_Inactive"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public needTimeStampForLastPani(Lcom/sec/ims/settings/ImsProfile;)Z
    .registers 3

    if-eqz p1, :cond_1c

    .line 673
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cellular-Network-Info_With_CIA"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    .line 674
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    if-eq p0, p1, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method protected queryCellInfoForQualcomm()V
    .registers 3

    .line 678
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryCellInfoForQualcomm"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "cellInfo is null."

    .line 682
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public removePreviousPlani(I)V
    .registers 6

    .line 648
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getPrevioutPlani(I)Ljava/lang/String;

    move-result-object v0

    .line 649
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removePreviousPlani: prev plani "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, ""

    .line 650
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setPrevioutPlani(ILjava/lang/String;)V

    return-void
.end method

.method public setLkcForLastPani(ILjava/lang/String;Lcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)V
    .registers 7

    .line 705
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object v0

    .line 706
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 707
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

    .line 711
    :cond_26
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isValidPani(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 712
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "setLkcForLastPani: current PANI is not valid!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    const-string v0, "IEEE-802.11"

    .line 717
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 718
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    goto :goto_63

    .line 720
    :cond_41
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result p2

    .line 721
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    invoke-virtual {v0, p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(II)Ljava/lang/String;

    move-result-object p2

    .line 723
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isValidPani(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_60

    .line 724
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "setLkcForLastPani: underlyingCellularPani is not valid!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 727
    :cond_60
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    .line 730
    :goto_63
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object p2

    .line 732
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needTimeStampForLastPani(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 734
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p3

    .line 735
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_83

    const-string/jumbo p3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_8e

    .line 737
    :cond_83
    sget-object v0, Lcom/sec/internal/constants/Mno;->CELLC_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_8b

    const-string/jumbo p3, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    goto :goto_8e

    :cond_8b
    const-string/jumbo p3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 740
    :goto_8e
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 741
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

    .line 745
    :cond_b5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object p2

    .line 746
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string p3, "imsconfig"

    const-string p4, "PLANI"

    invoke-static {p1, p0, p3, p4, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
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
    .registers 10

    .line 654
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user_config"

    const-string v3, "PLANIINTIME"

    move v0, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 655
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
