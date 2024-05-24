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
    .registers 1

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
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getFromDmStorage(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;
    .registers 12

    const-class v0, Lcom/sec/internal/ims/settings/DmProfileLoader;

    monitor-enter v0

    :try_start_3
    const-string v1, "./3GPP_IMS/LBO_P-CSCF_Address"

    const-string v2, "Address"

    .line 46
    sget-object v3, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 47
    sget-object v3, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, -0x1

    .line 48
    sput v3, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    .line 49
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    sput-boolean v4, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    const-string v4, "DmProfileLoader"

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsKorOp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "omadm/*"

    .line 53
    invoke-static {p0, v4, p2}, Lcom/sec/internal/helper/DmConfigHelper;->read(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v4

    .line 55
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_48
    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 57
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "omadm/"

    const-string v8, ""

    .line 58
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-static {v6, v5}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setValueWithUri(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_48

    .line 62
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_48

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-virtual {v6, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48

    const/16 v6, 0x5b

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_bf

    const/16 v7, 0x5d

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_bf

    const-string v8, "]:"

    .line 64
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_ab

    const-string v8, "]:"

    .line 65
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_ab

    add-int/lit8 v8, v8, 0x2

    .line 67
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    .line 70
    :cond_ab
    sget-object v8, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_dd

    :cond_bf
    const/16 v6, 0x3a

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_d8

    add-int/lit8 v7, v6, 0x1

    .line 76
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    const/4 v7, 0x0

    .line 77
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 79
    :cond_d8
    sget-object v6, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_dd
    sget v5, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    if-ne v5, v3, :cond_48

    .line 83
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v5

    sput v5, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    goto/16 :goto_48

    .line 88
    :cond_e9
    sget-object v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10a

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10a

    .line 89
    sget-object v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v1

    sput v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    .line 93
    :cond_10a
    sget-boolean v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v1, :cond_138

    const-string/jumbo v1, "sms_over_ip_network_indication"

    const-string v2, ""

    .line 94
    invoke-static {p0, v1, v2, p2}, Lcom/sec/ims/settings/NvConfiguration;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "1"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    sput-boolean p0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    const-string p0, "DmProfileLoader"

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSmsOverIms: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e

    .line 97
    :cond_138
    invoke-static {p0, p2}, Lcom/sec/ims/settings/NvConfiguration;->getSmsIpNetworkIndi(Landroid/content/Context;I)Z

    move-result p0

    sput-boolean p0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    .line 100
    :goto_13e
    new-instance p0, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    .line 101
    invoke-static {p0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->updateDbInfoToProfile(Lcom/sec/ims/settings/ImsProfile;)V
    :try_end_146
    .catchall {:try_start_3 .. :try_end_146} :catchall_148

    .line 103
    monitor-exit v0

    return-object p0

    :catchall_148
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getIntValue(Ljava/lang/String;)I
    .registers 4

    .line 219
    sget-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v0, :cond_8

    const v0, -0x186a0

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    .line 223
    :goto_9
    :try_start_9
    sget-object v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-virtual {v1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_15} :catch_16

    goto :goto_2c

    .line 225
    :catch_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no Value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DmProfileLoader"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return v0
.end method

.method public static getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;
    .registers 3

    .line 40
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getFromDmStorage(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method private static getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 231
    sget-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-virtual {v0, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getUriIndex(Ljava/lang/String;)I
    .registers 6

    .line 236
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    .line 237
    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getType()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "./3GPP_IMS/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    :cond_2d
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 243
    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getIndex()I

    move-result p0

    return p0

    :cond_38
    const/4 p0, -0x1

    return p0
.end method

.method private static setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V
    .registers 4

    .line 262
    sget-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v0, :cond_11

    const v0, -0x186a0

    if-eq p2, v0, :cond_1a

    .line 264
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1a

    :cond_11
    if-lez p2, :cond_1a

    .line 268
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private static setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p2, :cond_5

    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static setValueWithUri(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_16

    if-nez p1, :cond_5

    goto :goto_16

    .line 254
    :cond_5
    invoke-static {p0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getUriIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_d

    return-void

    .line 258
    :cond_d
    sget-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_16
    return-void
.end method

.method private static updateDbInfoToProfile(Lcom/sec/ims/settings/ImsProfile;)V
    .registers 7

    const-string v0, "DmProfileLoader"

    const-string/jumbo v1, "updateDbInfoToProfile"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "12"

    .line 108
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_17

    .line 109
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimer1(I)V

    :cond_17
    const-string v0, "13"

    .line 111
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_26

    .line 112
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimer2(I)V

    :cond_26
    const-string v0, "14"

    .line 114
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_35

    .line 115
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimer4(I)V

    :cond_35
    const-string v0, "15"

    .line 117
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_44

    .line 118
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerA(I)V

    :cond_44
    const-string v0, "16"

    .line 120
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_53

    .line 121
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerB(I)V

    :cond_53
    const-string v0, "17"

    .line 123
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_62

    .line 124
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerC(I)V

    :cond_62
    const-string v0, "18"

    .line 126
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_71

    .line 127
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerD(I)V

    :cond_71
    const-string v0, "19"

    .line 129
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_80

    .line 130
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerE(I)V

    :cond_80
    const-string v0, "20"

    .line 132
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_8f

    .line 133
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerF(I)V

    :cond_8f
    const-string v0, "21"

    .line 135
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9e

    .line 136
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerG(I)V

    :cond_9e
    const-string v0, "22"

    .line 138
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_ad

    .line 139
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerH(I)V

    :cond_ad
    const-string v0, "23"

    .line 141
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_bc

    .line 142
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerI(I)V

    :cond_bc
    const-string v0, "24"

    .line 144
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_cb

    .line 145
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerJ(I)V

    :cond_cb
    const-string v0, "25"

    .line 147
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_da

    .line 148
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerK(I)V

    :cond_da
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

    if-eqz v1, :cond_19b

    const-string v1, "evs_payload"

    .line 167
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v1, v4}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 168
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_191

    move v0, v3

    goto :goto_192

    :cond_191
    move v0, v2

    :goto_192
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_evs_codec"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_19b
    const-string v0, "131"

    .line 170
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1ac

    const-string v1, "evs_default_bitrate"

    .line 172
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ac
    const-string v0, "130"

    .line 174
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1bd

    const-string v1, "evs_default_bandwidth"

    .line 176
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1bd
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

    const-string/jumbo v1, "publish_timer"

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

    if-ne v0, v3, :cond_234

    move v0, v3

    goto :goto_235

    :cond_234
    move v0, v2

    :goto_235
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

    if-ltz v1, :cond_275

    .line 197
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_26d

    move v1, v3

    goto :goto_26e

    :cond_26d
    move v1, v2

    :goto_26e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 199
    :cond_275
    sget-boolean v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v1, :cond_292

    .line 200
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const v5, -0x186a0

    if-eq v1, v5, :cond_292

    .line 201
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_28a

    move v0, v3

    goto :goto_28b

    :cond_28a
    move v0, v2

    :goto_28b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_292
    const-string v0, "72"

    .line 204
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2ab

    .line 206
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2a1

    move v2, v3

    :cond_2a1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "volte_service_status"

    .line 205
    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_2ab
    const-string v0, "55"

    .line 208
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c8

    const-string v0, "55"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c8

    const-string v0, "audio_capabilities"

    const-string v1, "3"

    .line 209
    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c8
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

    const-string/jumbo v1, "reg_retry_base_time"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    const-string v0, "85"

    .line 213
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "reg_retry_max_time"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    return-void
.end method
