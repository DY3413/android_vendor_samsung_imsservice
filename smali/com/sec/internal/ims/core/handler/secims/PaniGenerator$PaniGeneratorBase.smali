.class public Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;
.super Ljava/lang/Object;
.source "PaniGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PaniGeneratorBase"
.end annotation


# static fields
.field protected static final IWLAN_COUNTRY_TAG:Ljava/lang/String; = "country="

.field protected static final IWLAN_NODE_ID_TAG:Ljava/lang/String; = "i-wlan-node-id="

.field private static final LTE_PANI_FORMAT:Ljava/lang/String; = "%s%04x%07x"

.field private static final NR_PANI_FORMAT:Ljava/lang/String; = "%s%06x%09x"

.field protected static final PREF_WIFI_PANI_COUNTRY_CODE_KEY:Ljava/lang/String; = "wifiPaniCountryCode"

.field protected static final TEMPLATE_COUNTRY:Ljava/lang/String; = "<COUNTRY>"

.field protected static final TEMPLATE_NODE_ID:Ljava/lang/String; = "<NODE_ID>"

.field protected static final TEMPLATE_PREFIX:Ljava/lang/String; = "<PREFIX>"

.field protected static final TEMPLATE_TIMESTAMP:Ljava/lang/String; = "<TIMESTAMP>"

.field protected static final TEMPLATE_TYPED_PREFIX:Ljava/lang/String; = "<TYPED_PREFIX>"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLocalMac()Ljava/lang/String;
    .locals 1

    .line 645
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getWifiBssid()Ljava/lang/String;
    .locals 3

    .line 655
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 659
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 661
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    .line 662
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiManager.getBSSID(): ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public generate(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generate(ILjava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 220
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generate: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fallbackPlmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 223
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateWifiPani(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 225
    :cond_0
    invoke-virtual {p0, p3, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getCurrentCellIdentity(II)Landroid/telephony/CellIdentity;

    move-result-object v0

    .line 227
    invoke-virtual {p0, p3, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getPsPlmn(ILandroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, p3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    const-string v4, ""

    if-lt v2, v3, :cond_2

    const-string v2, "00000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "000000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generate: change to NW PLMN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v1

    goto :goto_2

    .line 229
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generate: invalid network operator "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const-string p2, "persist.ril.ims.sipserverDebug"

    const-string v1, "false"

    .line 233
    invoke-static {p2, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "true"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 234
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p2

    if-nez p2, :cond_4

    move-object p2, v4

    goto :goto_1

    .line 235
    :cond_4
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p2

    .line 236
    :goto_1
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generate: use SIM operator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/16 v1, 0xd

    const/16 v2, 0x1f

    if-ne p1, v1, :cond_5

    .line 246
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string v3, "ril.ltenetworktype"

    invoke-interface {v1, p3, v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TDD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move p1, v2

    :cond_5
    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v3, 0x2

    if-eq p1, v3, :cond_9

    const/4 v3, 0x3

    if-eq p1, v3, :cond_8

    const/16 v3, 0x14

    if-eq p1, v3, :cond_7

    const/16 v5, 0x1e

    if-eq p1, v5, :cond_8

    if-eq p1, v2, :cond_6

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 290
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PaniGenerator: Not supported network."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 268
    :pswitch_0
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateTdsCdmaPani(ILjava/lang/String;Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 279
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateEhrpdPani()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 253
    :pswitch_2
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateLtePani(ILjava/lang/String;Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 255
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    .line 256
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result p1

    if-nez p1, :cond_a

    .line 258
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p1

    invoke-interface {p1, p3, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getAllCellInfo(IZ)Ljava/util/List;

    .line 259
    invoke-virtual {p0, p3, v3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getCurrentCellIdentity(II)Landroid/telephony/CellIdentity;

    move-result-object p1

    .line 260
    invoke-virtual {p0, p3, p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateNrPani(ILjava/lang/String;Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    goto :goto_3

    .line 287
    :cond_6
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateTdLtePani(ILjava/lang/String;Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 265
    :cond_7
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateNrPani(ILjava/lang/String;Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 276
    :cond_8
    :pswitch_3
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateUmtsPani(ILjava/lang/String;Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 284
    :cond_9
    :pswitch_4
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateGeranPani(ILjava/lang/String;Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v4

    :cond_a
    :goto_3
    return-object v4

    :cond_b
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected generateCountryCode(I)Ljava/lang/String;
    .locals 5

    .line 590
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_2

    .line 592
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 597
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "country="

    if-nez v2, :cond_1

    .line 598
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 599
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_2

    .line 600
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getLastAccessedNetworkCountryIso(I)Ljava/lang/String;

    move-result-object p0

    .line 601
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateCountryCode: last accessed network country iso: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 603
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 608
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "country=XX"

    return-object p0

    :cond_3
    return-object v0
.end method

.method protected generateEhrpdPani()Ljava/lang/String;
    .locals 6

    .line 468
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getCurrentUATI(Landroid/content/Context;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 471
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateEhrpdPaniHeaderString(SectorId+SubnetLen) len= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    array-length v0, p0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/16 v2, 0x10

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 477
    aget-byte v5, p0, v4

    aput-byte v5, v1, v4

    .line 483
    invoke-static {p0, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    invoke-static {v3}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 486
    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3GPP2-1X-HRPD;ci-3gpp2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 491
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Got NULL UATI from RIL!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected generateGeranPani(ILjava/lang/String;Landroid/telephony/CellIdentity;)Ljava/lang/String;
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "generateGeranPani: Invalid Cell Id : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 447
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "3GPP-GERAN;cgi-3gpp="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetAreaCode(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    const/4 p2, 0x2

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetCid(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, p2

    const-string p0, "%s%04x%04x"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateIwlanNodeId(I)Ljava/lang/String;
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getLocalMac()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getWifiBssid()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, ""

    if-eqz p0, :cond_1

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i-wlan-node-id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected generateLtePani(ILjava/lang/String;Landroid/telephony/CellIdentity;)Ljava/lang/String;
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "generateLtePani: Invalid Cell Id : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 383
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetAreaCode(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    const/4 p2, 0x2

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetCid(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v1, p2

    const-string p2, "%s%04x%07x"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 397
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p3

    const-string v0, "3GPP-E-UTRAN-FDD;utran-cell-id-3gpp="

    if-eqz p3, :cond_1

    .line 398
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOVISTAR_PERU:Lcom/sec/internal/constants/Mno;

    if-ne p3, v1, :cond_1

    .line 399
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateCountryCode(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 401
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateNrPani(ILjava/lang/String;Landroid/telephony/CellIdentity;)Ljava/lang/String;
    .locals 10

    .line 347
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 348
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Invalid tac or nrCid : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetAreaCode(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)I

    move-result p3

    .line 352
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(I)J

    move-result-wide v2

    .line 354
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const-string v4, "3GPP-NR-TDD;utran-cell-id-3gpp="

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    const-string v9, "%s%06x%09x"

    if-eqz v0, :cond_1

    .line 355
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v8, [Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 363
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v5

    .line 362
    invoke-static {p1, v9, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 365
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string v0, "ril.nrnetworktype"

    invoke-interface {p0, p1, v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 366
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NR Access Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "TDD"

    .line 367
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 368
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v8, [Ljava/lang/Object;

    aput-object p2, v0, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v5

    invoke-static {p1, v9, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, "FDD"

    .line 369
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 370
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "3GPP-NR-FDD;utran-cell-id-3gpp="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v8, [Ljava/lang/Object;

    aput-object p2, v0, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v5

    invoke-static {p1, v9, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 372
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "3GPP-NR;utran-cell-id-3gpp="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v8, [Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 373
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v5

    .line 372
    invoke-static {p1, v9, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateTdLtePani(ILjava/lang/String;Landroid/telephony/CellIdentity;)Ljava/lang/String;
    .locals 8

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "generateTdLtePani: Invalid Cell Id : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 456
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v5, "%s%04x%07x"

    const-string v6, "3GPP-E-UTRAN-TDD;utran-cell-id-3gpp="

    if-eqz v0, :cond_1

    .line 457
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v7, Lcom/sec/internal/constants/Mno;->MOVISTAR_PERU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v7, :cond_1

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    .line 459
    invoke-static {p2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetAreaCode(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetCid(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v4, v1

    .line 458
    invoke-static {v6, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateCountryCode(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 461
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    .line 462
    invoke-static {p2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetAreaCode(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetCid(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v1

    .line 461
    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateTdsCdmaPani(ILjava/lang/String;Landroid/telephony/CellIdentity;)Ljava/lang/String;
    .locals 5

    .line 406
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 407
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 408
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v3, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetCid(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "%07x"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "7fffffff"

    .line 410
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->queryCellInfoForQualcomm()V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "generateTdsCdmaPani: Invalid Cell Id : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 420
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "3GPP-UTRAN-FDD;utran-cell-id-3gpp="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetAreaCode(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    const/4 p2, 0x2

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetCid(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, p2

    const-string p0, "%s%04x%07x"

    invoke-static {v0, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateTimeStamp(I)Ljava/lang/String;
    .locals 1

    .line 581
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 582
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_0

    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 585
    :goto_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 586
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "local-time-zone=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateUmtsPani(ILjava/lang/String;Landroid/telephony/CellIdentity;)Ljava/lang/String;
    .locals 5

    .line 424
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 425
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 426
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v3, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetCid(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "%07x"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "7fffffff"

    .line 428
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->queryCellInfoForQualcomm()V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "generateUmtsPani: Invalid Cell Id : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 438
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "3GPP-UTRAN-FDD;utran-cell-id-3gpp="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetAreaCode(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    const/4 p2, 0x2

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetCid(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/telephony/CellIdentity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, p2

    const-string p0, "%s%04x%07x"

    invoke-static {v0, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateWifiPani(I)Ljava/lang/String;
    .locals 6

    .line 497
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getWifiPaniFormatFromSetting(I)Ljava/lang/String;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetisSoftPhone(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Z

    move-result v1

    const-string v2, "<PREFIX>"

    if-eqz v1, :cond_0

    const-string v1, "<PREFIX><COUNTRY>"

    .line 508
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "><"

    const-string v3, ">;<"

    .line 512
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateWiFiPani: Format for generating PANI - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 515
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 516
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateCountryCode(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    .line 518
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/constants/Mno;->LIFECELL_UA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_2

    .line 519
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v4, "wifiPaniCountryCode"

    const-string v5, "ims_user_data"

    if-nez v1, :cond_1

    .line 520
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1, v5, v4, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object v1

    const-string v3, ""

    invoke-static {p1, v1, v5, v4, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 525
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "countryCode read from sharedPrefs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    :goto_0
    const-string v1, "IEEE-802.11"

    .line 529
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateIwlanNodeId(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "<NODE_ID>"

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<COUNTRY>"

    .line 531
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateTimeStamp(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<TIMESTAMP>"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<TYPED_PREFIX>"

    .line 533
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getWiFiStandard()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    const-string p0, ";;"

    .line 539
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ";"

    .line 540
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 543
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 544
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    .line 545
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 547
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateWiFiPani: normalized PANI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected getCurrentCellIdentity(II)Landroid/telephony/CellIdentity;
    .locals 8

    .line 615
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 616
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getCellIdentity(IZ)Landroid/telephony/CellIdentity;

    move-result-object p0

    return-object p0

    .line 619
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetAllCellInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_b

    .line 620
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 623
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 624
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    .line 625
    instance-of v2, v0, Landroid/telephony/CellIdentityGsm;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    if-eq p2, v3, :cond_3

    const/16 v2, 0x10

    if-ne p2, v2, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    .line 628
    :goto_0
    instance-of v4, v0, Landroid/telephony/CellIdentityWcdma;

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    if-eq p2, v4, :cond_5

    const/16 v4, 0xa

    if-eq p2, v4, :cond_5

    const/16 v4, 0x8

    if-eq p2, v4, :cond_5

    const/16 v4, 0x9

    if-eq p2, v4, :cond_5

    const/16 v4, 0xf

    if-eq p2, v4, :cond_5

    const/16 v4, 0x1e

    if-ne p2, v4, :cond_6

    :cond_5
    move v4, v3

    goto :goto_1

    :cond_6
    move v4, v1

    .line 634
    :goto_1
    instance-of v5, v0, Landroid/telephony/CellIdentityTdscdma;

    if-eqz v5, :cond_7

    const/16 v5, 0x11

    if-ne p2, v5, :cond_7

    move v5, v3

    goto :goto_2

    :cond_7
    move v5, v1

    .line 635
    :goto_2
    instance-of v6, v0, Landroid/telephony/CellIdentityLte;

    if-eqz v6, :cond_8

    const/16 v6, 0xd

    if-ne p2, v6, :cond_8

    move v6, v3

    goto :goto_3

    :cond_8
    move v6, v1

    .line 636
    :goto_3
    instance-of v7, v0, Landroid/telephony/CellIdentityNr;

    if-eqz v7, :cond_9

    const/16 v7, 0x14

    if-ne p2, v7, :cond_9

    goto :goto_4

    :cond_9
    move v3, v1

    :goto_4
    if-nez v2, :cond_a

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    if-nez v6, :cond_a

    if-eqz v3, :cond_2

    :cond_a
    return-object v0

    :cond_b
    :goto_5
    return-object p1
.end method

.method protected getPsPlmn(ILandroid/telephony/CellIdentity;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 300
    instance-of v1, p2, Landroid/telephony/CellIdentityCdma;

    if-nez v1, :cond_1

    instance-of p2, p2, Landroid/telephony/CellIdentityTdscdma;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 301
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetAllCellInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 302
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 303
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CellInfo;

    .line 304
    invoke-virtual {p2}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p2

    .line 305
    instance-of v1, p2, Landroid/telephony/CellIdentityLte;

    if-nez v1, :cond_3

    instance-of v1, p2, Landroid/telephony/CellIdentityNr;

    if-eqz v1, :cond_2

    .line 306
    :cond_3
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 307
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 308
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPsPlmn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object p0, v0

    .line 319
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x5

    if-lt p1, p2, :cond_6

    const-string p1, "00000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "000000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 324
    :cond_5
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDataPlmn returns "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catch_0
    move-exception p0

    .line 326
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rePlmn by RIL is not guaranteed to be a numeric String. : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 320
    :cond_6
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataPlmn from RIL returns invalid dataPlmn: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected getWifiPaniFormatFromSetting(I)Ljava/lang/String;
    .locals 1

    const-string p0, "iwlan_pani_format"

    const-string v0, "<PREFIX><NODE_ID>"

    .line 554
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 556
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method
