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
.field protected static final EDGE_PANI_FORMAT:Ljava/lang/String; = "%s%04x%04x"

.field protected static final IWLAN_COUNTRY_TAG:Ljava/lang/String; = "country="

.field protected static final IWLAN_NODE_ID_TAG:Ljava/lang/String; = "i-wlan-node-id="

.field protected static final IWLAN_TIMESTAMP_TAG:Ljava/lang/String; = "local-time-zone="

.field protected static final LTE_PANI_FORMAT:Ljava/lang/String; = "%s%04x%07x"

.field protected static final NR_PANI_FORMAT:Ljava/lang/String; = "%s%06x%09x"

.field protected static final PREF_WIFI_PANI_COUNTRY_CODE_KEY:Ljava/lang/String; = "wifiPaniCountryCode"

.field protected static final TEMPLATE_COUNTRY:Ljava/lang/String; = "<COUNTRY>"

.field protected static final TEMPLATE_NODE_ID:Ljava/lang/String; = "<NODE_ID>"

.field protected static final TEMPLATE_PREFIX:Ljava/lang/String; = "<PREFIX>"

.field protected static final TEMPLATE_TIMESTAMP:Ljava/lang/String; = "<TIMESTAMP>"

.field protected static final TEMPLATE_TYPED_PREFIX:Ljava/lang/String; = "<TYPED_PREFIX>"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;


# direct methods
.method public static synthetic $r8$lambda$7JlzH-bFxwzjw_d5tZ-l7nM6v9o(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->lambda$generate$0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLocalMac()Ljava/lang/String;
    .registers 2

    .line 605
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p0, :cond_16

    .line 608
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method private getPlmnFromCellInfo(I)Ljava/lang/String;
    .registers 5

    .line 322
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetAllCellInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_66

    .line 323
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 324
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 325
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    .line 326
    instance-of v1, v0, Landroid/telephony/CellIdentityLte;

    if-nez v1, :cond_2a

    instance-of v1, v0, Landroid/telephony/CellIdentityNr;

    if-eqz v1, :cond_12

    .line 327
    :cond_2a
    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 328
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPsPlmn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_68

    :cond_66
    const-string p0, ""

    :goto_68
    return-object p0
.end method

.method private getWifiBssid()Ljava/lang/String;
    .registers 4

    .line 615
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_3d

    .line 619
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 621
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    .line 622
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

    goto :goto_3e

    :cond_3d
    const/4 p0, 0x0

    :goto_3e
    return-object p0
.end method

.method private synthetic lambda$generate$0(I)Ljava/lang/String;
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generate(II)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generate(ILjava/lang/String;I)Ljava/lang/String;
    .registers 10

    .line 204
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

    if-ne p1, v0, :cond_29

    .line 207
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateWifiPani(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 210
    :cond_29
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getCurrentCellIdentity(II)Lcom/sec/internal/helper/os/CellIdentityWrapper;

    move-result-object v0

    .line 213
    invoke-virtual {p0, p3, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getPsPlmn(ILcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;I)V

    .line 214
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    const-string v4, ""

    if-lt v2, v3, :cond_7f

    const-string v2, "00000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    const-string v2, "000000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    goto :goto_7f

    .line 230
    :cond_60
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

    goto :goto_d3

    .line 217
    :cond_7f
    :goto_7f
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

    .line 218
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9e

    goto :goto_d3

    :cond_9e
    const-string p2, "persist.ril.ims.sipserverDebug"

    const-string v1, "false"

    .line 221
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "true"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_169

    .line 222
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p2

    if-nez p2, :cond_b7

    move-object p2, v4

    goto :goto_bb

    .line 223
    :cond_b7
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p2

    .line 224
    :goto_bb
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

    :goto_d3
    const/16 v1, 0xd

    const/16 v2, 0x1f

    if-ne p1, v1, :cond_ed

    .line 234
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string/jumbo v3, "ril.ltenetworktype"

    invoke-interface {v1, p3, v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TDD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    move p1, v2

    :cond_ed
    const/4 v1, 0x1

    if-eq p1, v1, :cond_164

    const/4 v3, 0x2

    if-eq p1, v3, :cond_164

    const/4 v3, 0x3

    if-eq p1, v3, :cond_15f

    const/16 v3, 0x14

    if-eq p1, v3, :cond_15a

    const/16 v5, 0x1e

    if-eq p1, v5, :cond_15f

    if-eq p1, v2, :cond_155

    packed-switch p1, :pswitch_data_16c

    packed-switch p1, :pswitch_data_176

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

    goto :goto_168

    .line 274
    :pswitch_11f
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateEhrpdPani()Ljava/lang/String;

    move-result-object v4

    goto :goto_168

    .line 241
    :pswitch_124
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateLtePani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_168

    .line 243
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result p1

    if-nez p1, :cond_168

    .line 246
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p1

    invoke-interface {p1, p3, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getAllCellInfo(IZ)Ljava/util/List;

    .line 247
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p1

    invoke-interface {p1, p3, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getCurrentCellIdentity(II)Lcom/sec/internal/helper/os/CellIdentityWrapper;

    move-result-object p1

    .line 248
    invoke-virtual {p0, p3, p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateNrPani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    goto :goto_168

    .line 286
    :cond_155
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateTdLtePani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;

    move-result-object v4

    goto :goto_168

    .line 254
    :cond_15a
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateNrPani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;

    move-result-object v4

    goto :goto_168

    .line 270
    :cond_15f
    :pswitch_15f
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateUmtsPani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;

    move-result-object v4

    goto :goto_168

    .line 282
    :cond_164
    :pswitch_164
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateGeranPani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;

    move-result-object v4

    :cond_168
    :goto_168
    return-object v4

    :cond_169
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_16c
    .packed-switch 0x8
        :pswitch_15f
        :pswitch_15f
        :pswitch_15f
    .end packed-switch

    :pswitch_data_176
    .packed-switch 0xd
        :pswitch_124
        :pswitch_11f
        :pswitch_15f
        :pswitch_164
        :pswitch_15f
    .end packed-switch
.end method

.method protected generateCountryCode(I)Ljava/lang/String;
    .registers 7

    .line 580
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_70

    .line 582
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 585
    iget-object v1, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    goto :goto_12

    :cond_11
    move-object v1, v0

    .line 587
    :goto_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "country="

    if-nez v2, :cond_30

    .line 588
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

    .line 589
    :cond_30
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_70

    .line 590
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getLastAccessedNetworkCountryIso(I)Ljava/lang/String;

    move-result-object p0

    .line 591
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

    .line 593
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 594
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

    .line 598
    :cond_70
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result p0

    if-eqz p0, :cond_7d

    const-string p0, "country=XX"

    return-object p0

    :cond_7d
    return-object v0
.end method

.method protected generateEhrpdPani()Ljava/lang/String;
    .registers 7

    .line 458
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getCurrentUATI(Landroid/content/Context;)[B

    move-result-object p0

    if-eqz p0, :cond_56

    .line 461
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

    .line 463
    array-length v0, p0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_5f

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/16 v2, 0x10

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 467
    aget-byte v5, p0, v4

    aput-byte v5, v1, v4

    .line 473
    invoke-static {p0, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    invoke-static {v3}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 476
    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3GPP2-1X-HRPD;ci-3gpp2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_60

    .line 480
    :cond_56
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Got NULL UATI from RIL!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    const/4 p0, 0x0

    :goto_60
    return-object p0
.end method

.method protected generateGeranPani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;
    .registers 7

    .line 431
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result p0

    if-nez p0, :cond_14

    .line 432
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "generateGeranPani: Invalid Cell Id : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 436
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "3GPP-GERAN;cgi-3gpp="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 437
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getAreaCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getCellId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%s%04x%04x"

    .line 436
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateIwlanNodeId(I)Ljava/lang/String;
    .registers 4

    .line 556
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_12

    .line 557
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getLocalMac()Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    .line 559
    :cond_12
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getWifiBssid()Ljava/lang/String;

    move-result-object p0

    :goto_16
    const-string p1, ""

    if-eqz p0, :cond_31

    .line 563
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

    :cond_31
    return-object p1
.end method

.method protected generateLtePani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;
    .registers 8

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 384
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "generateLtePani: Invalid Cell Id : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 388
    :cond_14
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 389
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getAreaCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getCellId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, v1, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%s%04x%07x"

    .line 388
    invoke-static {v0, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 403
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p3

    const-string v0, "3GPP-E-UTRAN-FDD;utran-cell-id-3gpp="

    if-eqz p3, :cond_5c

    .line 404
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOVISTAR_PERU:Lcom/sec/internal/constants/Mno;

    if-ne p3, v1, :cond_5c

    .line 405
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

    .line 407
    :cond_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateNrPani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;
    .registers 9

    .line 351
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_14

    .line 352
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Invalid tac or nrCid : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 357
    :cond_14
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const-string v2, "%s%06x%09x"

    const-string v3, "3GPP-NR-TDD;utran-cell-id-3gpp="

    if-eqz v0, :cond_52

    .line 358
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 365
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 366
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getAreaCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getCellId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 365
    invoke-static {p1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 368
    :cond_52
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string/jumbo v0, "ril.nrnetworktype"

    invoke-interface {p0, p1, v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 369
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

    .line 372
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    goto :goto_8b

    :cond_7e
    const-string p1, "FDD"

    .line 374
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_89

    const-string v3, "3GPP-NR-FDD;utran-cell-id-3gpp="

    goto :goto_8b

    :cond_89
    const-string v3, "3GPP-NR;utran-cell-id-3gpp="

    .line 378
    :goto_8b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 379
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getAreaCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getCellId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 378
    invoke-static {p1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateTdLtePani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;
    .registers 9

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 442
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "generateTdLtePani: Invalid Cell Id : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 446
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3GPP-E-UTRAN-TDD;utran-cell-id-3gpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 447
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getAreaCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getCellId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, v2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%s%04x%07x"

    .line 446
    invoke-static {v1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 448
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p3

    if-eqz p3, :cond_68

    .line 449
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    sget-object v0, Lcom/sec/internal/constants/Mno;->MOVISTAR_PERU:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_68

    .line 450
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateCountryCode(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_68
    return-object p2
.end method

.method protected generateTimeStamp(I)Ljava/lang/String;
    .registers 3

    .line 571
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 572
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_12

    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_15

    :cond_12
    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 575
    :goto_15
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 576
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

.method protected generateUmtsPani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;
    .registers 7

    .line 412
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 413
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2d

    .line 414
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getCellId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%07x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "7fffffff"

    .line 416
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 417
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->queryCellInfoForQualcomm()V

    .line 421
    :cond_2d
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result p0

    if-nez p0, :cond_41

    .line 422
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "generateUmtsPani: Invalid Cell Id : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 426
    :cond_41
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "3GPP-UTRAN-FDD;utran-cell-id-3gpp="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 427
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getAreaCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getCellId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%s%04x%07x"

    .line 426
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateWifiPani(I)Ljava/lang/String;
    .registers 8

    .line 487
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getWifiPaniFormatFromSetting(I)Ljava/lang/String;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-boolean v1, v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isSoftPhone:Z

    const-string v2, "<PREFIX>"

    if-eqz v1, :cond_12

    const-string v1, "<PREFIX><COUNTRY>"

    .line 498
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    const-string v1, "><"

    const-string v3, ">;<"

    .line 502
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 503
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

    .line 505
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 506
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateCountryCode(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_7d

    .line 508
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/constants/Mno;->LIFECELL_UA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_7d

    .line 509
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v4, "wifiPaniCountryCode"

    const-string v5, "ims_user_data"

    if-nez v1, :cond_59

    .line 510
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1, v5, v4, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 513
    :cond_59
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object v1

    const-string v3, ""

    invoke-static {p1, v1, v5, v4, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 515
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

    :cond_7d
    :goto_7d
    const-string v1, "IEEE-802.11"

    .line 519
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<NODE_ID>"

    .line 520
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateIwlanNodeId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<COUNTRY>"

    .line 521
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<TIMESTAMP>"

    .line 522
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateTimeStamp(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<TYPED_PREFIX>"

    .line 523
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 524
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

    :cond_be
    :goto_be
    const-string p0, ";;"

    .line 529
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cd

    const-string v1, ";"

    .line 530
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_be

    .line 533
    :cond_cd
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 534
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_e0

    const/4 v1, 0x0

    .line 535
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 537
    :cond_e0
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

.method protected getPsPlmn(ILcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;
    .registers 5

    .line 299
    invoke-virtual {p2}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isCdma()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_78

    .line 300
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getPlmnFromCellInfo(I)Ljava/lang/String;

    move-result-object p0

    .line 305
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_60

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x5

    if-lt p1, p2, :cond_60

    const-string p1, "00000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    const-string p1, "000000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_60

    .line 310
    :cond_29
    :try_start_29
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2c} :catch_45

    .line 316
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

    :catch_45
    move-exception p0

    .line 312
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rePlmn by RIL is not guaranteed to be a numeric String. : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 306
    :cond_60
    :goto_60
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

    :cond_78
    return-object v0
.end method

.method protected getWifiPaniFormatFromSetting(I)Ljava/lang/String;
    .registers 3

    const-string p0, "iwlan_pani_format"

    const-string v0, "<PREFIX><NODE_ID>"

    .line 544
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 546
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    move-object v0, p0

    :cond_f
    return-object v0
.end method
