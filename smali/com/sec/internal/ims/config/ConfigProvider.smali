.class public Lcom/sec/internal/ims/config/ConfigProvider;
.super Landroid/content/ContentProvider;
.source "ConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceExtParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadDataOffParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadPluginsParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadMessageStoreParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadChatbotParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadMsisdnParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadUxParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadPersonalProfileParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadPublicAccountParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadTransportProtoParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadXdmsParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadOtherParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadStandalonMsgParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadPresenceParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadAppAuthParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$ReadRootParm;,
        Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;
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
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLboPcscfAddressesBackwardCompatibility(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddressesBackwardCompatibility(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPublicUserIdentities(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdentities(Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPublicUserIdentitiesBackwardCompatibility(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdentitiesBackwardCompatibility(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitStorage(Lcom/sec/internal/ims/config/ConfigProvider;Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigProvider;->initStorage(Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misChatParam(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->isChatParam(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misFtExtraParam(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->isFtExtraParam(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misImExtraParam(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->isImExtraParam(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 68
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants;->APPID_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    sput v1, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    .line 82
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    .line 87
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/config/ConfigProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    sget-object v2, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 95
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    .line 81
    new-instance v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mEmptyStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 447
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mConfigTableMap:Ljava/util/Map;

    return-void
.end method

.method static getCapAllowedPrefixes(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 5
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

    .line 1053
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1054
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

    :goto_0
    if-eqz v1, :cond_0

    .line 1056
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1057
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/2addr v3, v2

    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getIdentityByPhoneId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1416
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1419
    :cond_0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->buildIdentity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLboPcscfAddresses(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 1
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

    const-string p0, "root/application/0/lbo_p-cscf_address/"

    .line 914
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 921
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "root/application/0/lbo_p-cscf_address/lbo_p-cscf_addresses/"

    .line 922
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 929
    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    .line 930
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 937
    :goto_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "root/application/0/3gpp_ims/lbo_p-cscf_addresses/"

    .line 938
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method static getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 7
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

    .line 825
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 826
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 827
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "address"

    .line 829
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "addresstype"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    const/4 v4, 0x0

    .line 836
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_1
    const-string v6, "root/application/0/lbo_p-cscf_address/lbo_p-cscf_addresses/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_2
    const-string v6, "root/application/0/lbo_p-cscf_address/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_3
    const-string v6, "root/application/0/3gpp_ims/lbo_p-cscf_addresses/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    const-string v6, "/"

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 846
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "node/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    goto :goto_2

    .line 838
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    goto :goto_2

    .line 843
    :pswitch_2
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

    :goto_2
    if-eqz v4, :cond_5

    .line 852
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 853
    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x409a212a -> :sswitch_3
        0x6c8301b9 -> :sswitch_2
        0x70ebeb3d -> :sswitch_1
        0x7236b704 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getLboPcscfAddressesBackwardCompatibility(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 1
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

    const-string p0, "root/application/0/lbo_p-cscf_address/"

    .line 950
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 957
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "root/application/0/lbo_p-cscf_address/0/lbo_p-cscf_addresses/"

    .line 958
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 965
    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    .line 966
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 973
    :goto_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "root/application/0/3gpp_ims/lbo_p-cscf_addresses/"

    .line 974
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method static getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 9
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "root/application/0/3gpp_ims/public_user_identity_list/"

    .line 757
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    .line 758
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const-string v3, "root/application/0/public_user_identity_list/"

    .line 760
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "/"

    const-string v5, ""

    if-nez v3, :cond_4

    const-string v3, "root/application/0/lbo_p-cscf_address/"

    .line 761
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const-string v3, "/node/"

    goto :goto_3

    :cond_3
    move-object v3, v5

    goto :goto_3

    :cond_4
    :goto_2
    move-object v3, v4

    .line 766
    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 767
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 768
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    :goto_5
    if-eqz v7, :cond_7

    .line 770
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 771
    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/2addr v5, v2

    .line 773
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    goto :goto_5

    .line 776
    :cond_7
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    .line 779
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0/node/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 780
    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 781
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_9

    .line 784
    :cond_8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 785
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    :goto_9
    return-object v6
.end method

.method private getPublicUserIdentities(Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 1
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

    const-string p0, "root/application/0/public_user_identity_list/"

    .line 868
    invoke-static {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdentities(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 873
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "root/application/0/public_user_identity_list/public_user_identities/"

    .line 874
    invoke-static {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdentities(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 879
    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "root/application/0/3gpp_ims/public_user_identity_list/"

    .line 880
    invoke-static {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdentities(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static getPublicUserIdentities(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 8
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

    .line 795
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 796
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    .line 800
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "root/application/0/public_user_identity_list/public_user_identities/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "root/application/0/3gpp_ims/public_user_identity_list/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "root/application/0/public_user_identity_list/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    const-string v6, "/"

    const-string v7, "public_user_identity"

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 805
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    goto :goto_2

    .line 808
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "node/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    goto :goto_2

    .line 802
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_3

    .line 814
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 815
    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x25dd5b27 -> :sswitch_2
        0x38c1752e -> :sswitch_1
        0x3bc5c97c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPublicUserIdentitiesBackwardCompatibility(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 1
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

    const-string p0, "root/application/0/public_user_identity_list/"

    .line 890
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 895
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "root/application/0/public_user_identity_list/0/public_user_identities/"

    .line 896
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 901
    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "root/application/0/3gpp_ims/public_user_identity_list/"

    .line 902
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private initAdditionalStorage(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 8
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

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAdditionalStorage: phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 434
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v0, :cond_6

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 396
    :goto_0
    sget v4, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    if-ge v0, v4, :cond_1

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "root/access-control/default/app-id/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p5, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 402
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v0, v2

    .line 410
    :goto_2
    sget v4, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    if-ge v0, v4, :cond_5

    move v4, v2

    .line 411
    :goto_3
    sget v5, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    if-ge v4, v5, :cond_3

    .line 412
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "root/access-control/server/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/app-id/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p5, v5}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_4

    .line 417
    :cond_2
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

    goto :goto_3

    .line 420
    :cond_3
    :goto_4
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

    if-nez v4, :cond_4

    goto :goto_5

    .line 424
    :cond_4
    new-instance v4, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v4}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 426
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 429
    :cond_5
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mAppIdServerIdMap "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mServerIdStorageMap "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez p3, :cond_7

    .line 434
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

    .line 436
    :cond_7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 437
    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 438
    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    if-eqz p3, :cond_8

    return-object p3

    .line 443
    :cond_9
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
    .locals 6

    .line 475
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string/jumbo v1, "version"

    .line 476
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "validity"

    .line 477
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "token"

    .line 478
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 480
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "home_network_domain_name"

    .line 481
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "private_user_identity"

    .line 482
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "public_user_identity"

    .line 483
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "address"

    .line 484
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "addresstype"

    .line 485
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "keep_alive_enabled"

    .line 486
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "Timer_T1"

    .line 487
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "Timer_T2"

    .line 488
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "Timer_T4"

    .line 489
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "RegRetryBaseTime"

    .line 490
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "RegRetryMaxTime"

    .line 491
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 493
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "maxsizeimageshare"

    .line 494
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "maxtimevideoshare"

    .line 495
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v2, "q-value"

    .line 496
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v2, "inturlfmt"

    .line 497
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v2, "naturlfmt"

    .line 498
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v2, "rcsVolteSingleRegistration"

    .line 499
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v2, "endUserConfReqId"

    .line 500
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v2, "uuid_Value"

    .line 501
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 503
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadAppAuthParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadAppAuthParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v2, "UserName"

    .line 504
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v2, "UserPwd"

    .line 505
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v2, "realm"

    .line 506
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 508
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v2, "SupportedRCSVersions"

    .line 509
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v2, "SupportedRCSProfileVersions"

    .line 510
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v2, "rcsState"

    .line 511
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v3, "rcsDisabledState"

    .line 512
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "presencePrfl"

    .line 513
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "ChatAuth"

    .line 514
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "GroupChatAuth"

    .line 515
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "ftAuth"

    .line 516
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "standaloneMsgAuth"

    .line 517
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "geolocPullAuth"

    .line 518
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "geolocPushAuth"

    .line 519
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "vsAuth"

    .line 520
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "isAuth"

    .line 521
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "rcsIPVoiceCallAuth"

    .line 522
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "rcsIPVideoCallAuth"

    .line 523
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "IR94VideoAuth"

    .line 524
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "allowRCSExtensions"

    .line 525
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 527
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadDataOffParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadDataOffParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v4, "rcsMessagingDataOff"

    .line 528
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "fileTransferDataOff"

    .line 529
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "smsoIPDataOff"

    .line 530
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "mmsDataOff"

    .line 531
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "volteDataOff"

    .line 532
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "IPVideoCallDataOff"

    .line 533
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "provisioningDataOff"

    .line 534
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "syncDataOff"

    .line 535
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 537
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v4, "disableInitialAddressBookScan"

    .line 538
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "pollingperiod"

    .line 539
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "pollingrate"

    .line 540
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "pollingrateperiod"

    .line 541
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "capinfoexpiry"

    .line 542
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "nonRCScapInfoExpiry"

    .line 543
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "defaultdisc"

    .line 544
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "capDiscCommonStack"

    .line 545
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "maxentriesinlist"

    .line 546
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "capdiscoveryallowedprefixes"

    .line 547
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "msgcapvalidity"

    .line 548
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "lastseenactive"

    .line 549
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 551
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadPresenceParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPresenceParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v4, "PublishTimer"

    .line 552
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "source-throttlepublish"

    .line 553
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "max-number-ofsubscriptions-inpresence-list"

    .line 554
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "RLS-URI"

    .line 555
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "locinfomaxvalidtime"

    .line 556
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "client-obj-datalimit"

    .line 557
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 559
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v4, "imMsgTech"

    .line 560
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "imcapalwayson"

    .line 561
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "imWarnSF"

    .line 562
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "GroupChatFullStandFwd"

    .line 563
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "GroupChatOnlyFStandFwd"

    .line 564
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v4, "smsfallbackauth"

    .line 565
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "imCapNonRCS"

    .line 566
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "imwarniw"

    .line 567
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "autaccept"

    .line 568
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "imsessionstart"

    .line 569
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "autacceptgroupchat"

    .line 570
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "firstMessageInvite"

    .line 571
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "TimerIdle"

    .line 572
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "maxConcurrentSession"

    .line 573
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "multiMediaChat"

    .line 574
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "MaxSize"

    .line 575
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "maxsize1to1"

    .line 576
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "maxsize1tom"

    .line 577
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftWarnSize"

    .line 578
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "MaxSizeFileTr"

    .line 579
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "MaxSizeFileTrIncoming"

    .line 580
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftThumb"

    .line 581
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftStAndFwEnabled"

    .line 582
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftCapalwaysON"

    .line 583
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftautaccept"

    .line 584
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPCSURI"

    .line 585
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPDLURI"

    .line 586
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPCSUser"

    .line 587
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPCSPwd"

    .line 588
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftDefaultMech"

    .line 589
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPFallback"

    .line 590
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "pres-srv-cap"

    .line 591
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "deferred-msg-func-uri"

    .line 592
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "max_adhoc_group_size"

    .line 593
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "conf-fcty-uri"

    .line 594
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "exploder-uri"

    .line 595
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "mass-fcty-uri"

    .line 596
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ChatRevokeTimer"

    .line 597
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPftWarnSize"

    .line 598
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPMaxSizeFileTr"

    .line 599
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPMaxSizeFileTrIncoming"

    .line 600
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "max_adhoc_open_group_size"

    .line 601
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "cbftHTTPCSURI"

    .line 602
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "MaxSizeExtraFileTr"

    .line 603
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "ftHTTPExtraCSURI"

    .line 604
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "MaxIMDNAggregation"

    .line 605
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 607
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v5, "composerAuth"

    .line 608
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v5, "sharedMapAuth"

    .line 609
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v5, "sharedSketchAuth"

    .line 610
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "postCallAuth"

    .line 611
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "VBCAuth"

    .line 612
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "contentShareDataOff"

    .line 613
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v5, "preAndPostCallDataOff"

    .line 614
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 616
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadStandalonMsgParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadStandalonMsgParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v5, "MaxSizeStandalone"

    .line 617
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 618
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "SwitchoverSize"

    .line 619
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 621
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v4, "Url"

    .line 622
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "AuthProt"

    .line 623
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "messagestore/UserName"

    .line 624
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "messagestore/UserPwd"

    .line 625
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "EventRpting"

    .line 626
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "AuthArchive"

    .line 627
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "SyncTimer"

    .line 628
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "DataConnectionSyncTimer"

    .line 629
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "SMSStore"

    .line 630
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v4, "MMSStore"

    .line 631
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 633
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadOtherParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadOtherParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string/jumbo v4, "warnsizeimageshare"

    .line 634
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 635
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "extensionsMaxMSRPSize"

    .line 636
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "callComposerTimerIdle"

    .line 637
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 641
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadXdmsParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadXdmsParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string/jumbo v1, "xcaprooturi"

    .line 642
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 644
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadTransportProtoParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadTransportProtoParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "psmedia"

    .line 645
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "wifimedia"

    .line 646
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "pssignalling"

    .line 647
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "wifisignalling"

    .line 648
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "psrtmedia"

    .line 649
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "pssignallingroaming"

    .line 650
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "psmediaroaming"

    .line 651
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "psrtmediaroaming"

    .line 652
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "wifirtmedia"

    .line 653
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 655
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadPublicAccountParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPublicAccountParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "publicaccount/Addr"

    .line 656
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "publicaccount/AddrType"

    .line 657
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 659
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadPersonalProfileParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPersonalProfileParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "profile/addr"

    .line 660
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "profile/addrtype"

    .line 661
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 663
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadUxParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadUxParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "messagingUX"

    .line 664
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "userAliasAuth"

    .line 665
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "spamNotificationText"

    .line 666
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "tokenLinkNotificationText"

    .line 667
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "unavailableEndpointText"

    .line 668
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string/jumbo v1, "videoAndEnCallUX"

    .line 669
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "IR51SwitchUx"

    .line 670
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "msgFBDefault"

    .line 671
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "ftFBDefault"

    .line 672
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "callLogsBearerDiffer"

    .line 673
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "allowEnrichedChatbotSearchDefault"

    .line 674
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "ext/realtimeUserAliasAuth"

    .line 675
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 677
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "reconnectGuardTimer"

    .line 678
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "cfsTrigger"

    .line 679
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "max1toManyRecipients"

    .line 680
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "1toManySelectedTech"

    .line 681
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "displayNotificationSwitch"

    .line 682
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "ftMax1ToManyRecipients"

    .line 683
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "serviceAvailabilityInfoExpiry"

    .line 684
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "ftHTTPCapAlwaysOn"

    .line 685
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 687
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadMsisdnParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadMsisdnParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string/jumbo v1, "skip_count"

    .line 688
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "msgui_display"

    .line 689
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 691
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadChatbotParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadChatbotParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "ChatbotDirectory"

    .line 692
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "BotinfoFQDNRoot"

    .line 693
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "ChatbotBlacklist"

    .line 694
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "MsgHistorySelectable"

    .line 695
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "SpecificChatbotsList"

    .line 696
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "IdentityInEnrichedSearch"

    .line 697
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "PrivacyDisable"

    .line 698
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "ChatbotMsgTech"

    .line 699
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 701
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadMessageStoreParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadMessageStoreParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "MsgStoreUrl"

    .line 702
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "MsgStoreNotifUrl"

    .line 703
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "MsgStoreAuth"

    .line 704
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "MsgStoreUserName"

    .line 705
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "MsgStoreUserPwd"

    .line 706
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 708
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadPluginsParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPluginsParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string v1, "catalogURI"

    .line 709
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 711
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceExtParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceExtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 712
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 713
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 715
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    const-string/jumbo v1, "spgUrl"

    .line 716
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "params-url"

    .line 717
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "NMS_URL"

    .line 718
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "NC_URL"

    .line 719
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "fthttpGroupChat"

    .line 720
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "chatbot/Username"

    .line 721
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    const-string v1, "chatbot/Password"

    .line 722
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    return-void
.end method

.method private initStorage(Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 9
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

    .line 318
    invoke-static {p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getIdentityByPhoneId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "ConfigProvider"

    .line 321
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

    .line 323
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mEmptyStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object p0

    .line 332
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/helper/HashManager;->generateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 334
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 342
    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v2, "ConfigProvider"

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initStorage: phone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " get storage from configmodule"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    if-nez v3, :cond_3

    .line 350
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    :cond_3
    const/4 v4, 0x1

    if-nez v3, :cond_4

    const-string v5, "ConfigProvider"

    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initStorage: phone:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " no storage :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 354
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v5, v2

    goto :goto_1

    .line 357
    :cond_4
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "ConfigProvider"

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initStorage: phone:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " different identity :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 358
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    .line 361
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    move v5, v4

    :goto_1
    if-nez v5, :cond_6

    .line 368
    new-instance v3, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v3}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    .line 369
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v8, v3

    .line 372
    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v2

    if-eq v2, v4, :cond_7

    const-string v2, "ConfigProvider"

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initStorage: phone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " open storage :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v8, v0, v7, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_7
    const-string v0, "root/access-control/server/0/app-id/0"

    .line 378
    invoke-interface {v8, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    .line 379
    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/config/ConfigProvider;->initAdditionalStorage(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v8

    .line 382
    :cond_8
    monitor-exit v1

    return-object v8

    :catchall_0
    move-exception p0

    .line 383
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isChatParam(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "autaccept"

    .line 1161
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "autacceptgroupchat"

    .line 1162
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ChatRevokeTimer"

    .line 1163
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "conf-fcty-uri"

    .line 1164
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "max_adhoc_group_size"

    .line 1165
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "MaxSize"

    .line 1166
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "TimerIdle"

    .line 1167
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private isFtExtraParam(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "ftautaccept"

    .line 1171
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ftHTTPCSPwd"

    .line 1172
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ftHTTPCSURI"

    .line 1173
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ftHTTPDLURI"

    .line 1174
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ftHTTPCSUser"

    .line 1175
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ftHTTPFallback"

    .line 1176
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ftWarnSize"

    .line 1177
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "MaxSizeFileTr"

    .line 1178
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private isImExtraParam(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "cbftHTTPCSURI"

    .line 1154
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "MaxSizeExtraFileTr"

    .line 1155
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ftHTTPExtraCSURI"

    .line 1156
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "MaxIMDNAggregation"

    .line 1157
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private queryMultipleStorage(Landroid/net/Uri;)Ljava/util/Map;
    .locals 7
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

    .line 216
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 218
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    new-instance v3, Ljava/util/TreeMap;

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryMultipleStorage path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " map "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ConfigProvider"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v4, "root/application/*"

    .line 226
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "content://com.samsung.rcs.autoconfigurationprovider/*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 231
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string p1, "root"

    .line 232
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v4, "application/*"

    .line 233
    :cond_2
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

    .line 236
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    .line 238
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 228
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    :cond_5
    return-object v3
.end method

.method private queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 5
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

    .line 181
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryStorage path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const-string p0, "provider is not ready, return empty!"

    .line 184
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-string v2, "#simslot\\d"

    const-string v4, ""

    if-ne v1, v3, :cond_1

    .line 190
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p1

    const-string p2, "content://com.samsung.rcs.autoconfigurationprovider/parameter/"

    .line 191
    invoke-virtual {v0, p2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 192
    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 191
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->readDataByParam(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "content://com.samsung.rcs.autoconfigurationprovider/"

    .line 194
    invoke-virtual {v0, p0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 195
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 194
    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private readDataByParam(Ljava/lang/String;I)Ljava/util/Map;
    .locals 3
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

    .line 726
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 727
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mConfigTableMap:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;

    if-eqz p0, :cond_1

    .line 732
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;->readParam(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V
    .locals 1

    .line 471
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mConfigTableMap:Ljava/util/Map;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 250
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 251
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

    .line 252
    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 257
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p1

    .line 259
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    const-string p0, "provider is not ready, return empty!"

    .line 260
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p3, "content://com.samsung.rcs.autoconfigurationprovider/"

    const-string v0, ""

    .line 264
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "#simslot\\d"

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 266
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->delete(Ljava/lang/String;)I

    move-result p1

    .line 267
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p1

    .line 253
    :cond_1
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
    .locals 7

    const-string v0, "root/application/"

    .line 1443
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1458
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    .line 1444
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f

    .line 1445
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1446
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1447
    sget-object v1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    :cond_0
    const-string v0, "root/vers/"

    .line 1453
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1454
    sget-object p1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    const-string v0, "0"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    :cond_1
    if-eqz v1, :cond_5

    .line 1457
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 1460
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1461
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 1463
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    if-eqz v0, :cond_3

    return-object v0

    .line 1469
    :cond_4
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

    .line 1458
    :cond_5
    :goto_0
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

.method getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 4

    .line 1423
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 1425
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "root/application/"

    .line 1427
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x45

    .line 1428
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2f

    .line 1429
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 1430
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1431
    sget-object v1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    .line 1434
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    const-string v1, "0"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1438
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->initStorage(Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 273
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    .line 278
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ConfigProvider"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
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

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v1

    .line 288
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_0

    const-string p0, "provider is not ready, return empty!"

    .line 289
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 293
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 295
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 297
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

    .line 298
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 297
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 303
    :cond_2
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 304
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object p1

    .line 282
    :cond_3
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
    .locals 4

    const-string v0, "ConfigProvider"

    const-string v1, "ConfigProvider was created"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lcom/sec/internal/ims/config/ConfigProvider;->initConfigTable()V

    .line 106
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.rcs.autoconfigurationprovider"

    const-string v2, "parameter/*"

    const/4 v3, 0x1

    .line 107
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/config/ConfigProvider$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/ConfigProvider$1;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    sget-object p0, Lcom/sec/internal/ims/config/ConfigProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 130
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 131
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "query uri:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ConfigProvider"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "^content://com.samsung.rcs.autoconfigurationprovider/[\\.\\w-_/*#]*"

    .line 132
    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 138
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p3

    const-string p5, "root/*"

    .line 141
    invoke-virtual {p2, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_1

    const-string p5, "root/application/*"

    invoke-virtual {p2, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_1

    const-string p5, "content://com.samsung.rcs.autoconfigurationprovider/*"

    invoke-virtual {p2, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    goto :goto_1

    .line 142
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->queryMultipleStorage(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_2

    const-string p0, "can not find readData from mStorage"

    .line 148
    invoke-static {p4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 152
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 153
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    .line 156
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    aput-object p5, p1, p3

    .line 158
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    aput-object p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 162
    :cond_3
    new-instance p0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0

    .line 133
    :cond_4
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
    .locals 0

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 312
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p0

    return p0
.end method
