.class public Lcom/sec/internal/ims/settings/DmProfileLoader;
.super Ljava/lang/Object;
.source "DmProfileLoader.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DmProfileLoader"

.field protected static mIsKorOp:Z

.field protected static mLboPcscfAddrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static mLboPcscfPort:I

.field protected static mSmsOverIms:Z

.field protected static mValueList:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    const/4 v0, -0x1

    .line 35
    sput v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    .line 37
    sput-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFromDmStorage(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;
    .locals 8

    .line 46
    sget-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 47
    sget-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 48
    sput v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    .line 49
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    sput-boolean v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsKorOp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DmProfileLoader"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "omadm/*"

    .line 53
    invoke-static {p0, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->read(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 57
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "omadm/"

    .line 58
    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-static {v4, v3}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setValueWithUri(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    .line 62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "./3GPP_IMS/LBO_P-CSCF_Address"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Address"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x5b

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_2

    const/16 v5, 0x5d

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_2

    const-string v6, "]:"

    .line 64
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    .line 65
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    add-int/lit8 v6, v6, 0x2

    .line 67
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    .line 70
    :cond_1
    sget-object v6, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 v4, 0x3a

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_3

    add-int/lit8 v5, v4, 0x1

    .line 76
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    const/4 v5, 0x0

    .line 77
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 79
    :cond_3
    sget-object v4, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_1
    sget v3, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    if-ne v3, v0, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v3

    sput v3, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    goto/16 :goto_0

    .line 88
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 89
    sget-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v0

    sput v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    .line 93
    :cond_5
    sget-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "sms_over_ip_network_indication"

    .line 94
    invoke-static {p0, v0, v4, p2}, Lcom/sec/ims/settings/NvConfiguration;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "1"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    sput-boolean p0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSmsOverIms: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 97
    :cond_6
    invoke-static {p0, p2}, Lcom/sec/ims/settings/NvConfiguration;->getSmsIpNetworkIndi(Landroid/content/Context;I)Z

    move-result p0

    sput-boolean p0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    .line 100
    :goto_2
    new-instance p0, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    .line 101
    invoke-static {p0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->updateDbInfoToProfile(Lcom/sec/ims/settings/ImsProfile;)V

    return-object p0
.end method

.method private static getIntValue(Ljava/lang/String;)I
    .locals 3

    .line 219
    sget-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v0, :cond_0

    const v0, -0x186a0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 223
    :goto_0
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-virtual {v1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 225
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no Value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DmProfileLoader"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method public static getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getFromDmStorage(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method private static getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 231
    sget-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-virtual {v0, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getUriIndex(Ljava/lang/String;)I
    .locals 5

    .line 236
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    .line 237
    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getType()I

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "./3GPP_IMS/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getIndex()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V
    .locals 1

    .line 262
    sget-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v0, :cond_0

    const v0, -0x186a0

    if-eq p2, v0, :cond_1

    .line 264
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    .line 268
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setValueWithUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getUriIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    return-void

    .line 258
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static updateDbInfoToProfile(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 6

    const-string v0, "DmProfileLoader"

    const-string/jumbo v1, "updateDbInfoToProfile"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "12"

    .line 108
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 109
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimer1(I)V

    :cond_0
    const-string v0, "13"

    .line 111
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 112
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimer2(I)V

    :cond_1
    const-string v0, "14"

    .line 114
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 115
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimer4(I)V

    :cond_2
    const-string v0, "15"

    .line 117
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 118
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerA(I)V

    :cond_3
    const-string v0, "16"

    .line 120
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    .line 121
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerB(I)V

    :cond_4
    const-string v0, "17"

    .line 123
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    .line 124
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerC(I)V

    :cond_5
    const-string v0, "18"

    .line 126
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6

    .line 127
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerD(I)V

    :cond_6
    const-string v0, "19"

    .line 129
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7

    .line 130
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerE(I)V

    :cond_7
    const-string v0, "20"

    .line 132
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_8

    .line 133
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerF(I)V

    :cond_8
    const-string v0, "21"

    .line 135
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    .line 136
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerG(I)V

    :cond_9
    const-string v0, "22"

    .line 138
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_a

    .line 139
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerH(I)V

    :cond_a
    const-string v0, "23"

    .line 141
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_b

    .line 142
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerI(I)V

    :cond_b
    const-string v0, "24"

    .line 144
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_c

    .line 145
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerJ(I)V

    :cond_c
    const-string v0, "25"

    .line 147
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d

    .line 148
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerK(I)V

    :cond_d
    const-string v0, "66"

    .line 151
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "amrnboa_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "67"

    .line 152
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "amrnbbe_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "64"

    .line 153
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "amrwboa_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "65"

    .line 155
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "amrwbbe_payload"

    .line 154
    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "71"

    .line 156
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "dtmf_nb_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "70"

    .line 157
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "dtmf_wb_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "69"

    .line 158
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h264_qvga_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "68"

    .line 159
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h264_vga_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "108"

    .line 160
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h264_vgal_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "132"

    .line 161
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h263_qcif_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "60"

    .line 162
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "audio_port_start"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "61"

    .line 163
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "audio_port_end"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "62"

    .line 164
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "video_port_start"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "63"

    .line 165
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "video_port_end"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "129"

    .line 166
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_f

    .line 167
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const-string v4, "evs_payload"

    invoke-static {p0, v4, v1}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 168
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    move v0, v3

    goto :goto_0

    :cond_e
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_evs_codec"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_f
    const-string v0, "131"

    .line 170
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 172
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "evs_default_bitrate"

    .line 171
    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-string v0, "130"

    .line 174
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 176
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "evs_default_bandwidth"

    .line 175
    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const-string v0, "73"

    .line 178
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setSmsPsi(Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setLboPcscfAddressList(Ljava/util/List;)V

    .line 180
    sget v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setLboPcscfPort(I)V

    const-string v0, "6"

    .line 181
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amrnb_mode"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "7"

    .line 182
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amrwb_mode"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "36"

    .line 183
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "publish_timer"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "37"

    .line 185
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "extended_publish_timer"

    .line 184
    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "26"

    .line 186
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cap_cache_exp"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "27"

    .line 187
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cap_poll_interval"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "28"

    .line 189
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "src_throttle_publish"

    .line 188
    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "35"

    .line 190
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "poll_list_sub_exp"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "38"

    .line 191
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_12

    move v0, v3

    goto :goto_1

    :cond_12
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_gzip"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "29"

    .line 193
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "subscribe_max_entry"

    .line 192
    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 194
    sget-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setSupportSmsOverIms(Z)V

    const-string v0, "90"

    .line 195
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "dm_polling_period"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "116"

    .line 196
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "support_ipsec"

    if-ltz v1, :cond_14

    .line 197
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_13

    move v1, v3

    goto :goto_2

    :cond_13
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 199
    :cond_14
    sget-boolean v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v1, :cond_16

    .line 200
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const v5, -0x186a0

    if-eq v1, v5, :cond_16

    .line 201
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_15

    move v0, v3

    goto :goto_3

    :cond_15
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_16
    const-string v0, "72"

    .line 204
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_18

    .line 206
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_17

    move v2, v3

    :cond_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "volte_service_status"

    .line 205
    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_18
    const-string v0, "55"

    .line 208
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v0, "55"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "audio_capabilities"

    const-string v1, "3"

    .line 209
    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const-string v0, "159"

    .line 211
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h265_hd720p_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "84"

    .line 212
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "reg_retry_base_time"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "85"

    .line 213
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "reg_retry_max_time"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    return-void
.end method
