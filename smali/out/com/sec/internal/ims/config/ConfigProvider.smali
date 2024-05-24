.class public Lcom/sec/internal/ims/config/ConfigProvider;
.super Landroid/content/ContentProvider;
.source "ConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/ConfigProvider$ReadRootParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadAppAuthParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadDataOffParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadPresenceParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadStandalonMsgParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadOtherParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadXdmsParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadTransportProtoParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadPublicAccountParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadPersonalProfileParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadUxParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadMsisdnParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadChatbotParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadMessageStoreParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadPluginsParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceExtParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;
    }
.end annotation


# static fields
.field public static final CONFIG_DB_NAME_PREFIX:Ljava/lang/String; = "config_"

.field private static final LOG_TAG:Ljava/lang/String; = "ConfigProvider"

.field private static final MAX_SERVER_COUNT:I

.field private static final N_PARAMETER:I = 0x1

.field private static final SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

.field static final mAppIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final mAppIdServerIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConfigTableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmptyStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

.field private mMatcher:Landroid/content/UriMatcher;

.field final mServerIdStorageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mgetLboPcscfAddresses(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPublicUserIdentities(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdentities(Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitStorage(Lcom/sec/internal/ims/config/ConfigProvider;Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigProvider;->initStorage(Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misChatParam(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->isChatParam(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misFtExtraParam(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->isFtExtraParam(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misImExtraParam(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->isImExtraParam(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 67
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants;->APPID_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    sput v1, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    .line 81
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    .line 86
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/config/ConfigProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 90
    sget-object v2, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_42

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    :cond_42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_55
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    .line 80
    new-instance v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mEmptyStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 445
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mConfigTableMap:Ljava/util/Map;

    return-void
.end method

.method static getCapAllowedPrefixes(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 948
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    move v3, v2

    :goto_1a
    if-eqz v1, :cond_3a

    .line 951
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 952
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/2addr v3, v2

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto :goto_1a

    :cond_3a
    return-object v0
.end method

.method static getIdentityByPhoneId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1311
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1314
    :cond_a
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->buildIdentity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLboPcscfAddresses(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "root/application/0/lbo_p-cscf_address/"

    .line 849
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 856
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_15

    :cond_e
    const-string/jumbo p0, "root/application/0/lbo_p-cscf_address/lbo_p-cscf_addresses/"

    .line 857
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 864
    :goto_15
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_23

    :cond_1c
    const-string/jumbo p0, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    .line 865
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 872
    :goto_23
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_31

    :cond_2a
    const-string/jumbo p0, "root/application/0/3gpp_ims/lbo_p-cscf_addresses/"

    .line 873
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    :goto_31
    return-object p0
.end method

.method static getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 782
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 783
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 784
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "address"

    .line 786
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "addresstype"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return-object v0

    :cond_20
    const/4 v1, 0x0

    move v3, v1

    .line 793
    :goto_22
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_c6

    goto :goto_5d

    :sswitch_2e
    const-string/jumbo v4, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    goto :goto_5d

    :cond_38
    const/4 v5, 0x3

    goto :goto_5d

    :sswitch_3a
    const-string/jumbo v4, "root/application/0/lbo_p-cscf_address/lbo_p-cscf_addresses/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    goto :goto_5d

    :cond_44
    const/4 v5, 0x2

    goto :goto_5d

    :sswitch_46
    const-string/jumbo v4, "root/application/0/lbo_p-cscf_address/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    goto :goto_5d

    :cond_50
    const/4 v5, 0x1

    goto :goto_5d

    :sswitch_52
    const-string/jumbo v4, "root/application/0/3gpp_ims/lbo_p-cscf_addresses/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    goto :goto_5d

    :cond_5c
    move v5, v1

    :goto_5d
    const-string v4, "/"

    packed-switch v5, :pswitch_data_d8

    const/4 v4, 0x0

    goto :goto_b5

    .line 803
    :pswitch_64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "node/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    goto :goto_b5

    .line 795
    :pswitch_83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    goto :goto_b5

    .line 800
    :pswitch_9d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    :goto_b5
    if-eqz v4, :cond_c4

    .line 809
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c4

    .line 810
    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_22

    :cond_c4
    return-object v0

    nop

    :sswitch_data_c6
    .sparse-switch
        -0x409a212a -> :sswitch_52
        0x6c8301b9 -> :sswitch_46
        0x70ebeb3d -> :sswitch_3a
        0x7236b704 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_83
        :pswitch_9d
        :pswitch_64
    .end packed-switch
.end method

.method private getPublicUserIdentities(Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "root/application/0/public_user_identity_list/"

    .line 825
    invoke-static {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdentities(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 830
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_15

    :cond_e
    const-string/jumbo p0, "root/application/0/public_user_identity_list/public_user_identities/"

    .line 831
    invoke-static {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdentities(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 836
    :goto_15
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_23

    :cond_1c
    const-string/jumbo p0, "root/application/0/3gpp_ims/public_user_identity_list/"

    .line 837
    invoke-static {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdentities(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    :goto_23
    return-object p0
.end method

.method static getPublicUserIdentities(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 752
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 753
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 757
    :goto_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_a8

    goto :goto_3c

    :sswitch_19
    const-string/jumbo v4, "root/application/0/public_user_identity_list/public_user_identities/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_3c

    :cond_23
    const/4 v5, 0x2

    goto :goto_3c

    :sswitch_25
    const-string/jumbo v4, "root/application/0/3gpp_ims/public_user_identity_list/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    goto :goto_3c

    :cond_2f
    const/4 v5, 0x1

    goto :goto_3c

    :sswitch_31
    const-string/jumbo v4, "root/application/0/public_user_identity_list/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    goto :goto_3c

    :cond_3b
    move v5, v2

    :goto_3c
    const-string v4, "/"

    const-string/jumbo v6, "public_user_identity"

    packed-switch v5, :pswitch_data_b6

    const/4 v4, 0x0

    goto :goto_97

    .line 762
    :pswitch_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    goto :goto_97

    .line 765
    :pswitch_5f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "node/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    goto :goto_97

    .line 759
    :pswitch_7e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    :goto_97
    if-eqz v4, :cond_a6

    .line 771
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a6

    .line 772
    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    :cond_a6
    return-object v0

    nop

    :sswitch_data_a8
    .sparse-switch
        -0x25dd5b27 -> :sswitch_31
        0x38c1752e -> :sswitch_25
        0x3bc5c97c -> :sswitch_19
    .end sparse-switch

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_5f
        :pswitch_46
    .end packed-switch
.end method

.method private initAdditionalStorage(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;"
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAdditionalStorage: phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 432
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v0, :cond_11e

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 394
    :goto_36
    sget v4, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    if-ge v0, v4, :cond_65

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "root/access-control/default/app-id/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p5, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_53

    goto :goto_65

    .line 400
    :cond_53
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_65
    :goto_65
    move v0, v2

    .line 408
    :goto_66
    sget v4, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    if-ge v0, v4, :cond_f2

    move v4, v2

    .line 409
    :goto_6b
    sget v5, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    if-ge v4, v5, :cond_a8

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "root/access-control/server/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/app-id/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p5, v5}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_90

    goto :goto_a8

    .line 415
    :cond_90
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 418
    :cond_a8
    :goto_a8
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c1

    goto :goto_f2

    .line 422
    :cond_c1
    new-instance v4, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v4}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 424
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_66

    .line 427
    :cond_f2
    :goto_f2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mAppIdServerIdMap "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mServerIdStorageMap "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11e
    if-nez p3, :cond_133

    .line 432
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object p0

    .line 434
    :cond_133
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_137
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_16a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 435
    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 436
    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    if-eqz p3, :cond_137

    return-object p3

    .line 441
    :cond_16a
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object p0
.end method

.method private initConfigTable()V
    .registers 7

    .line 473
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string/jumbo v1, "version"

    .line 474
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "validity"

    .line 475
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "token"

    .line 476
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 478
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "home_network_domain_name"

    .line 479
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "private_user_identity"

    .line 480
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "public_user_identity"

    .line 481
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "address"

    .line 482
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "addresstype"

    .line 483
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "keep_alive_enabled"

    .line 484
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "Timer_T1"

    .line 485
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "Timer_T2"

    .line 486
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "Timer_T4"

    .line 487
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "RegRetryBaseTime"

    .line 488
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "RegRetryMaxTime"

    .line 489
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 491
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "maxsizeimageshare"

    .line 492
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "maxtimevideoshare"

    .line 493
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v2, "q-value"

    .line 494
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v2, "inturlfmt"

    .line 495
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v2, "naturlfmt"

    .line 496
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v2, "rcsVolteSingleRegistration"

    .line 497
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v2, "endUserConfReqId"

    .line 498
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v2, "uuid_Value"

    .line 499
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 501
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadAppAuthParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadAppAuthParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v2, "UserName"

    .line 502
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v2, "UserPwd"

    .line 503
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v2, "realm"

    .line 504
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 506
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v2, "SupportedRCSVersions"

    .line 507
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v2, "SupportedRCSProfileVersions"

    .line 508
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v2, "rcsState"

    .line 509
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v3, "rcsDisabledState"

    .line 510
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "presencePrfl"

    .line 511
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "ChatAuth"

    .line 512
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "GroupChatAuth"

    .line 513
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "ftAuth"

    .line 514
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "standaloneMsgAuth"

    .line 515
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "geolocPullAuth"

    .line 516
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "geolocPushAuth"

    .line 517
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "vsAuth"

    .line 518
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "isAuth"

    .line 519
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "rcsIPVoiceCallAuth"

    .line 520
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "rcsIPVideoCallAuth"

    .line 521
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "IR94VideoAuth"

    .line 522
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "allowRCSExtensions"

    .line 523
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 525
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadDataOffParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadDataOffParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string/jumbo v4, "rcsMessagingDataOff"

    .line 526
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "fileTransferDataOff"

    .line 527
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "smsoIPDataOff"

    .line 528
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "mmsDataOff"

    .line 529
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "volteDataOff"

    .line 530
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "IPVideoCallDataOff"

    .line 531
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "provisioningDataOff"

    .line 532
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "syncDataOff"

    .line 533
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 535
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v4, "disableInitialAddressBookScan"

    .line 536
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "pollingperiod"

    .line 537
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "pollingrate"

    .line 538
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "pollingrateperiod"

    .line 539
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "capinfoexpiry"

    .line 540
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "nonRCScapInfoExpiry"

    .line 541
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "defaultdisc"

    .line 542
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "capDiscCommonStack"

    .line 543
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "maxentriesinlist"

    .line 544
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "capdiscoveryallowedprefixes"

    .line 545
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "msgcapvalidity"

    .line 546
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "lastseenactive"

    .line 547
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 549
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadPresenceParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPresenceParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v4, "PublishTimer"

    .line 550
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "source-throttlepublish"

    .line 551
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "max-number-ofsubscriptions-inpresence-list"

    .line 552
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "RLS-URI"

    .line 553
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "locinfomaxvalidtime"

    .line 554
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "client-obj-datalimit"

    .line 555
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 557
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v4, "imMsgTech"

    .line 558
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "imcapalwayson"

    .line 559
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "imWarnSF"

    .line 560
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "GroupChatFullStandFwd"

    .line 561
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "GroupChatOnlyFStandFwd"

    .line 562
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "smsfallbackauth"

    .line 563
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "imCapNonRCS"

    .line 564
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "imwarniw"

    .line 565
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "autaccept"

    .line 566
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "imsessionstart"

    .line 567
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "autacceptgroupchat"

    .line 568
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "firstMessageInvite"

    .line 569
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "TimerIdle"

    .line 570
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "maxConcurrentSession"

    .line 571
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "multiMediaChat"

    .line 572
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "MaxSize"

    .line 573
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "maxsize1to1"

    .line 574
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "maxsize1tom"

    .line 575
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftWarnSize"

    .line 576
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "MaxSizeFileTr"

    .line 577
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "MaxSizeFileTrIncoming"

    .line 578
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftThumb"

    .line 579
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftStAndFwEnabled"

    .line 580
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftCapalwaysON"

    .line 581
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftautaccept"

    .line 582
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPCSURI"

    .line 583
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPDLURI"

    .line 584
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPCSUser"

    .line 585
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPCSPwd"

    .line 586
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftDefaultMech"

    .line 587
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPFallback"

    .line 588
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "pres-srv-cap"

    .line 589
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "deferred-msg-func-uri"

    .line 590
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "max_adhoc_group_size"

    .line 591
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "conf-fcty-uri"

    .line 592
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "exploder-uri"

    .line 593
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "mass-fcty-uri"

    .line 594
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ChatRevokeTimer"

    .line 595
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPftWarnSize"

    .line 596
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPMaxSizeFileTr"

    .line 597
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPMaxSizeFileTrIncoming"

    .line 598
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "max_adhoc_open_group_size"

    .line 599
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "cbftHTTPCSURI"

    .line 600
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "MaxSizeExtraFileTr"

    .line 601
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPExtraCSURI"

    .line 602
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "MaxIMDNAggregation"

    .line 603
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 605
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v5, "composerAuth"

    .line 606
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v5, "sharedMapAuth"

    .line 607
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v5, "sharedSketchAuth"

    .line 608
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "postCallAuth"

    .line 609
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "VBCAuth"

    .line 610
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "contentShareDataOff"

    .line 611
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "preAndPostCallDataOff"

    .line 612
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 614
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadStandalonMsgParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadStandalonMsgParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v5, "MaxSizeStandalone"

    .line 615
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 616
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "SwitchoverSize"

    .line 617
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 619
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v4, "Url"

    .line 620
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "AuthProt"

    .line 621
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "messagestore/UserName"

    .line 622
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "messagestore/UserPwd"

    .line 623
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "EventRpting"

    .line 624
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "AuthArchive"

    .line 625
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "SyncTimer"

    .line 626
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "DataConnectionSyncTimer"

    .line 627
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "SMSStore"

    .line 628
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "MMSStore"

    .line 629
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 631
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadOtherParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadOtherParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string/jumbo v4, "warnsizeimageshare"

    .line 632
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 633
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "extensionsMaxMSRPSize"

    .line 634
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "callComposerTimerIdle"

    .line 635
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 639
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadXdmsParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadXdmsParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string/jumbo v1, "xcaprooturi"

    .line 640
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 642
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadTransportProtoParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadTransportProtoParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string/jumbo v1, "psmedia"

    .line 643
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "wifimedia"

    .line 644
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "pssignalling"

    .line 645
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "wifisignalling"

    .line 646
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "psrtmedia"

    .line 647
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "pssignallingroaming"

    .line 648
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "psmediaroaming"

    .line 649
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "psrtmediaroaming"

    .line 650
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "wifirtmedia"

    .line 651
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 653
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadPublicAccountParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPublicAccountParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string/jumbo v1, "publicaccount/Addr"

    .line 654
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "publicaccount/AddrType"

    .line 655
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 657
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadPersonalProfileParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPersonalProfileParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "profile/addr"

    .line 658
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "profile/addrtype"

    .line 659
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 661
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadUxParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadUxParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "messagingUX"

    .line 662
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "userAliasAuth"

    .line 663
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "spamNotificationText"

    .line 664
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "tokenLinkNotificationText"

    .line 665
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "unavailableEndpointText"

    .line 666
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "videoAndEnCallUX"

    .line 667
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "IR51SwitchUx"

    .line 668
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "msgFBDefault"

    .line 669
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "ftFBDefault"

    .line 670
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "callLogsBearerDiffer"

    .line 671
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "allowEnrichedChatbotSearchDefault"

    .line 672
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "ext/realtimeUserAliasAuth"

    .line 673
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 675
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string/jumbo v1, "reconnectGuardTimer"

    .line 676
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "cfsTrigger"

    .line 677
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "max1toManyRecipients"

    .line 678
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "1toManySelectedTech"

    .line 679
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "displayNotificationSwitch"

    .line 680
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "ftMax1ToManyRecipients"

    .line 681
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "serviceAvailabilityInfoExpiry"

    .line 682
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "ftHTTPCapAlwaysOn"

    .line 683
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 685
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadMsisdnParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadMsisdnParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string/jumbo v1, "skip_count"

    .line 686
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "msgui_display"

    .line 687
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 689
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadChatbotParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadChatbotParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "ChatbotDirectory"

    .line 690
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "BotinfoFQDNRoot"

    .line 691
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "ChatbotBlacklist"

    .line 692
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "MsgHistorySelectable"

    .line 693
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "SpecificChatbotsList"

    .line 694
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "IdentityInEnrichedSearch"

    .line 695
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "PrivacyDisable"

    .line 696
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "ChatbotMsgTech"

    .line 697
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 699
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadMessageStoreParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadMessageStoreParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "MsgStoreUrl"

    .line 700
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "MsgStoreNotifUrl"

    .line 701
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "MsgStoreAuth"

    .line 702
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "MsgStoreUserName"

    .line 703
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "MsgStoreUserPwd"

    .line 704
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 706
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadPluginsParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPluginsParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "catalogURI"

    .line 707
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 709
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceExtParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceExtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 710
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 711
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 713
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string/jumbo v1, "spgUrl"

    .line 714
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "params-url"

    .line 715
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "NMS_URL"

    .line 716
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "NC_URL"

    .line 717
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "fthttpGroupChat"

    .line 718
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "chatbot/Username"

    .line 719
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "chatbot/Password"

    .line 720
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    return-void
.end method

.method private initStorage(Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;"
        }
    .end annotation

    .line 316
    invoke-static {p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getIdentityByPhoneId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string p1, "ConfigProvider"

    .line 319
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initStorage: phone:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " no identity"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mEmptyStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object p0

    .line 330
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/helper/HashManager;->generateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 332
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    monitor-enter v1

    .line 333
    :try_start_40
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5a

    .line 334
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_5a
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 340
    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v2

    if-eqz v2, :cond_83

    const-string v3, "ConfigProvider"

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initStorage: phone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " get storage from configmodule"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    :cond_82
    const/4 v2, 0x0

    :cond_83
    :goto_83
    const/4 v3, 0x0

    if-nez v2, :cond_9c

    .line 348
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    :cond_9c
    const/4 v4, 0x1

    if-nez v2, :cond_c3

    const-string v5, "ConfigProvider"

    .line 352
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initStorage: phone:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " no storage :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 352
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c1
    move v5, v3

    goto :goto_114

    .line 355
    :cond_c3
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_113

    const-string v5, "ConfigProvider"

    .line 356
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initStorage: phone:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " different identity :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 356
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    .line 359
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1

    :cond_113
    move v5, v4

    :goto_114
    if-nez v5, :cond_12e

    .line 366
    new-instance v2, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v2}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    .line 367
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12e
    move-object v8, v2

    .line 370
    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v2

    if-eq v2, v4, :cond_15e

    const-string v2, "ConfigProvider"

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initStorage: phone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " open storage :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v8, v0, v7, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_15e
    const-string/jumbo v0, "root/access-control/server/0/app-id/0"

    .line 376
    invoke-interface {v8, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16f

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    .line 377
    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/config/ConfigProvider;->initAdditionalStorage(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v8

    .line 380
    :cond_16f
    monitor-exit v1

    return-object v8

    :catchall_171
    move-exception p0

    .line 381
    monitor-exit v1
    :try_end_173
    .catchall {:try_start_40 .. :try_end_173} :catchall_171

    throw p0
.end method

.method private isChatParam(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "autaccept"

    .line 1056
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3b

    const-string p0, "autacceptgroupchat"

    .line 1057
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3b

    const-string p0, "ChatRevokeTimer"

    .line 1058
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3b

    const-string p0, "conf-fcty-uri"

    .line 1059
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3b

    const-string p0, "max_adhoc_group_size"

    .line 1060
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3b

    const-string p0, "MaxSize"

    .line 1061
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3b

    const-string p0, "TimerIdle"

    .line 1062
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 p0, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 p0, 0x1

    :goto_3c
    return p0
.end method

.method private isFtExtraParam(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "ftautaccept"

    .line 1066
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    const-string p0, "ftHTTPCSPwd"

    .line 1067
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    const-string p0, "ftHTTPCSURI"

    .line 1068
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    const-string p0, "ftHTTPDLURI"

    .line 1069
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    const-string p0, "ftHTTPCSUser"

    .line 1070
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    const-string p0, "ftHTTPFallback"

    .line 1071
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    const-string p0, "ftWarnSize"

    .line 1072
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    const-string p0, "MaxSizeFileTr"

    .line 1073
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_43

    :cond_41
    const/4 p0, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 p0, 0x1

    :goto_44
    return p0
.end method

.method private isImExtraParam(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "cbftHTTPCSURI"

    .line 1049
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "MaxSizeExtraFileTr"

    .line 1050
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "ftHTTPExtraCSURI"

    .line 1051
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "MaxIMDNAggregation"

    .line 1052
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method private queryMultipleStorage(Landroid/net/Uri;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 216
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    new-instance v3, Ljava/util/TreeMap;

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queryMultipleStorage path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " map "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ConfigProvider"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3e

    const/4 p0, 0x0

    return-object p0

    :cond_3e
    const-string/jumbo v4, "root/application/*"

    .line 224
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b5

    const-string v5, "content://com.samsung.rcs.autoconfigurationprovider/*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_50

    goto :goto_b5

    :cond_50
    const/4 v5, 0x0

    .line 229
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo p1, "root"

    .line 230
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6d

    const-string v4, "application/*"

    .line 231
    :cond_6d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\*#simslot\\d"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    .line 236
    :goto_8d
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v0, v2, :cond_d1

    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b2

    .line 238
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_b2
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    .line 225
    :cond_b5
    :goto_b5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_bd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 226
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_bd

    :cond_d1
    return-object v3
.end method

.method private queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryStorage path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2a

    const-string/jumbo p0, "provider is not ready, return empty!"

    .line 182
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 187
    :cond_2a
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-string v2, "#simslot\\d"

    const-string v4, ""

    if-ne v1, v3, :cond_49

    .line 188
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p1

    const-string p2, "content://com.samsung.rcs.autoconfigurationprovider/parameter/"

    .line 189
    invoke-virtual {v0, p2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 190
    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 189
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->readDataByParam(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    goto :goto_57

    :cond_49
    const-string p0, "content://com.samsung.rcs.autoconfigurationprovider/"

    .line 192
    invoke-virtual {v0, p0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    :goto_57
    return-object p0
.end method

.method private readDataByParam(Ljava/lang/String;I)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 724
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_26

    .line 725
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_26

    .line 728
    :cond_e
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mConfigTableMap:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;

    if-eqz p0, :cond_26

    .line 730
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;->readParam(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    :cond_26
    :goto_26
    return-object v0
.end method

.method private setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V
    .registers 4

    .line 469
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mConfigTableMap:Ljava/util/Map;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .line 248
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 249
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete uri:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ConfigProvider"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "^content://com.samsung.rcs.autoconfigurationprovider/[\\.\\w-_/#]*"

    .line 250
    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5c

    .line 255
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p1

    .line 257
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_39

    const-string/jumbo p0, "provider is not ready, return empty!"

    .line 258
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_39
    const-string p3, "content://com.samsung.rcs.autoconfigurationprovider/"

    const-string v0, ""

    .line 262
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "#simslot\\d"

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 264
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->delete(Ljava/lang/String;)I

    move-result p1

    .line 265
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p1

    .line 251
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a correct AutoConfigurationProvider Uri"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getStorageByPath(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .registers 10

    const-string/jumbo v0, "root/application/"

    .line 1338
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    .line 1353
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_2f

    const/16 v0, 0x11

    .line 1339
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f

    .line 1340
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2f

    .line 1341
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1342
    sget-object v1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    :cond_2f
    const-string/jumbo v0, "root/vers/"

    .line 1348
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 1349
    sget-object p1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    const-string v0, "0"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    :cond_4f
    if-eqz v3, :cond_aa

    .line 1352
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5e

    goto :goto_aa

    .line 1355
    :cond_5e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_62
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1356
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_62

    .line 1358
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    if-eqz v0, :cond_62

    return-object v0

    .line 1364
    :cond_97
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object p0

    .line 1353
    :cond_aa
    :goto_aa
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object p0
.end method

.method getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .registers 6

    .line 1318
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 1320
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "root/application/"

    .line 1322
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/16 v1, 0x45

    .line 1323
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2f

    .line 1324
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_32

    const/4 v2, 0x0

    .line 1325
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1326
    sget-object v1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_3e

    .line 1329
    :cond_32
    sget-object p1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    const-string v1, "0"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_3e

    :cond_3d
    const/4 p1, 0x0

    .line 1333
    :goto_3e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->initStorage(Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 271
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12

    .line 276
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ConfigProvider"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "^content://com.samsung.rcs.autoconfigurationprovider/[\\.\\w-_/#]*"

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 284
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v1

    .line 286
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4b

    const-string/jumbo p0, "provider is not ready, return empty!"

    .line 287
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 291
    :cond_4b
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 293
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_58
    :goto_58
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 294
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_58

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.samsung.rcs.autoconfigurationprovider/"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "#simslot\\d"

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 295
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    .line 301
    :cond_99
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 302
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object p1

    .line 280
    :cond_a8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a correct AutoConfigurationProvider Uri"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .registers 5

    const-string v0, "ConfigProvider"

    const-string v1, "ConfigProvider was created"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/sec/internal/ims/config/ConfigProvider;->initConfigTable()V

    .line 105
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.rcs.autoconfigurationprovider"

    const-string v2, "parameter/*"

    const/4 v3, 0x1

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/config/ConfigProvider$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/ConfigProvider$1;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    sget-object p0, Lcom/sec/internal/ims/config/ConfigProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 129
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 130
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "query uri:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ConfigProvider"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "^content://com.samsung.rcs.autoconfigurationprovider/[\\.\\w-_/*#]*"

    .line 131
    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9d

    const-string/jumbo p3, "root/*"

    .line 139
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4b

    const-string/jumbo p3, "root/application/*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4b

    const-string p3, "content://com.samsung.rcs.autoconfigurationprovider/*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_42

    goto :goto_4b

    .line 142
    :cond_42
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    goto :goto_4f

    .line 140
    :cond_4b
    :goto_4b
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->queryMultipleStorage(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p0

    :goto_4f
    if-nez p0, :cond_58

    const-string p0, "can not find readData from mStorage"

    .line 146
    invoke-static {p4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 150
    :cond_58
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 151
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 154
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p3, 0x0

    :goto_75
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_94

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    aput-object p5, p1, p3

    .line 156
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    aput-object p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_75

    .line 160
    :cond_94
    new-instance p0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0

    .line 132
    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a correct AutoConfigurationProvider Uri"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 310
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p0

    return p0
.end method
