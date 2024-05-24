.class public Lcom/sec/internal/ims/core/sim/MnoMap;
.super Ljava/lang/Object;
.source "MnoMap.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MnoMap"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCscNetParser:Lcom/sec/internal/ims/core/sim/CscNetParser;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mMnoMapJsonParser:Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;

.field private final mPhoneId:I

.field private final mTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RxLrz8wFXc9gMSRUkq0_vaoEwEg(Ljava/lang/String;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->lambda$getMnoNamesFromNetworkPlmn$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XatSOzKu-FeUqgyr3C03iSNxOJg(Ljava/lang/String;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->lambda$getMnoNamesFromNetworkPlmn$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tyMVVWKtmH04iW-UghjwqmDzR_w(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->lambda$getMnoNamesFromNetworkPlmn$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u_tZrzleUgW-ZIlbpD-LWzLj7xM(Ljava/util/List;)Ljava/util/Set;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->lambda$getMnoNamesFromNetworkPlmn$3(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mContext:Landroid/content/Context;

    .line 48
    iput p2, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    .line 49
    new-instance v1, Lcom/sec/internal/ims/core/sim/CscNetParser;

    invoke-direct {v1, p2}, Lcom/sec/internal/ims/core/sim/CscNetParser;-><init>(I)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mCscNetParser:Lcom/sec/internal/ims/core/sim/CscNetParser;

    .line 50
    new-instance v1, Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;

    invoke-direct {v1, p1, p2}, Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mMnoMapJsonParser:Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;

    .line 51
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "MnoMap"

    const/16 v3, 0xc8

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 53
    monitor-enter v0

    .line 54
    :try_start_28
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->createTable()V

    .line 55
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method private applyAutoUpdate(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;I)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 81
    :cond_b
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyMnoMapRemove(Ljava/util/List;ILcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyMnoMapAdd(Ljava/util/List;ILcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    .line 83
    invoke-direct {p0, p2, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyGcBlockMccList(ILcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    return-void
.end method

.method private applyAutoUpdates(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyAutoUpdate(Ljava/util/List;I)V

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyAutoUpdate(Ljava/util/List;I)V

    const/4 v0, 0x4

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyAutoUpdate(Ljava/util/List;I)V

    return-void
.end method

.method private applyGcBlockMccList(ILcom/sec/internal/ims/settings/ImsAutoUpdate;)V
    .registers 4

    .line 210
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mMnoMapJsonParser:Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;->getGcBlockList()Ljava/util/List;

    move-result-object p0

    const-string/jumbo v0, "replace_gc_block_mcc_list"

    .line 211
    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p2

    if-nez p2, :cond_44

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result p2

    if-eqz p2, :cond_44

    .line 213
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result p2

    if-nez p2, :cond_44

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result p2

    if-lez p2, :cond_44

    .line 215
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 216
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonElement;

    .line 217
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_44
    return-void
.end method

.method private applyMnoMapAdd(Ljava/util/List;ILcom/sec/internal/ims/settings/ImsAutoUpdate;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;I",
            "Lcom/sec/internal/ims/settings/ImsAutoUpdate;",
            ")V"
        }
    .end annotation

    move/from16 v0, p2

    const-string v1, "add_mnomap"

    move-object/from16 v2, p3

    .line 87
    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_da

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 89
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_da

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lez v2, :cond_da

    .line 91
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_da

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 92
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "mccmnc"

    .line 93
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d5

    const-string/jumbo v4, "subset"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d5

    const-string v5, "gid1"

    .line 94
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d5

    const-string v6, "gid2"

    .line 95
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d5

    const-string v7, "mnoname"

    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d5

    .line 96
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 97
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 98
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 99
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    .line 100
    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "spname"

    .line 102
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 103
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a7

    :cond_a5
    const-string v2, ""

    :goto_a7
    move-object v13, v2

    .line 105
    new-instance v2, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    move-object v8, v2

    move-object v14, v3

    invoke-direct/range {v8 .. v14}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, p0

    .line 106
    iget-object v5, v2, Lcom/sec/internal/ims/core/sim/MnoMap;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AutoUpdate : add MnoMap : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by resource : "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto/16 :goto_2a

    :cond_d5
    move-object v2, p0

    move-object/from16 v4, p1

    goto/16 :goto_2a

    :cond_da
    return-void
.end method

.method private applyMnoMapRemove(Ljava/util/List;ILcom/sec/internal/ims/settings/ImsAutoUpdate;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;I",
            "Lcom/sec/internal/ims/settings/ImsAutoUpdate;",
            ")V"
        }
    .end annotation

    move/from16 v0, p2

    const-string/jumbo v1, "remove_mnomap"

    move-object/from16 v2, p3

    .line 114
    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_db

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_db

    .line 116
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_db

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lez v2, :cond_db

    .line 118
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 119
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "mccmnc"

    .line 120
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d6

    const-string/jumbo v4, "subset"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d6

    const-string v5, "gid1"

    .line 121
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d6

    const-string v6, "gid2"

    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d6

    const-string v7, "mnoname"

    .line 122
    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 123
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 124
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 125
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 126
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v3, "spname"

    .line 128
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 129
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a0

    :cond_9e
    const-string v3, ""

    :goto_a0
    move-object v13, v3

    .line 131
    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 132
    new-instance v3, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    move-object v8, v3

    move-object v14, v2

    invoke-direct/range {v8 .. v14}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v3, p0

    .line 133
    iget-object v5, v3, Lcom/sec/internal/ims/core/sim/MnoMap;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AutoUpdate : remove MnoMap : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " by resource : "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto/16 :goto_2b

    :cond_d6
    move-object v3, p0

    move-object/from16 v4, p1

    goto/16 :goto_2b

    :cond_db
    return-void
.end method

.method private createTableFromMnoMap(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 143
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMccMnc()Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_23

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    :cond_23
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_2c
    return-void
.end method

.method private static synthetic lambda$getMnoNamesFromNetworkPlmn$0(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "DEFAULT"

    .line 329
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getMnoNamesFromNetworkPlmn$1(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "GoogleGC_ALL"

    .line 330
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getMnoNamesFromNetworkPlmn$2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 331
    sget-object v0, Lcom/sec/internal/constants/Mno;->GC_BLOCK_EXTENSION:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getMnoNamesFromNetworkPlmn$3(Ljava/util/List;)Ljava/util/Set;
    .registers 2

    .line 328
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda1;-><init>()V

    .line 329
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda2;-><init>()V

    .line 330
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda3;-><init>()V

    .line 331
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 332
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private mergeTableFromCustomerXml()V
    .registers 11

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mCscNetParser:Lcom/sec/internal/ims/core/sim/CscNetParser;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->getCscNetworkInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;

    .line 159
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->getIdentifiers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 160
    iget-object v7, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMccMnc()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_3c

    goto :goto_20

    .line 162
    :cond_3c
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_40
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 163
    invoke-virtual {v8, v5}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->equalsWithoutMnoName(Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 165
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->setMnoName(Ljava/lang/String;)V

    move v4, v6

    :cond_5a
    if-eqz v4, :cond_20

    :cond_5c
    const-string v2, "MnoMap"

    if-eqz v4, :cond_f1

    .line 176
    iget v4, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createTable merge: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->getIdentifiers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_82
    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 182
    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMccMnc()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_b4

    .line 184
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 185
    invoke-virtual {v7, v4}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->contains(Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)Z

    move-result v7

    if-eqz v7, :cond_a0

    move v5, v6

    goto :goto_b5

    :cond_b4
    move v5, v3

    :goto_b5
    if-nez v5, :cond_82

    .line 194
    iget v5, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add new networkd identifier: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v5, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMccMnc()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_e4

    .line 197
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 199
    :cond_e4
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v7, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMccMnc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    .line 204
    :cond_f1
    iget v3, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not found Mno for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_10d
    return-void
.end method


# virtual methods
.method public changeMnoNameByIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 232
    iget p0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeMnoNameByIccid(), simOp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MnoMap"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "CTC"

    .line 233
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 234
    sget-object p0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    const-string p0, "CTCMO"

    .line 236
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    .line 237
    sget-object p0, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    const-string p0, "CTG"

    .line 239
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 240
    sget-object p0, Lcom/sec/internal/constants/Mno;->CTG:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_45
    const-string p0, "APT"

    .line 242
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    .line 243
    sget-object p0, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 246
    :cond_54
    sget-object p0, Lcom/sec/internal/constants/Mno;->CORIOLIS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_61

    return-object p1

    :cond_61
    const-string p0, "20801"

    .line 249
    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_83

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_83

    const-string p0, "893327"

    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_83

    const-string p0, "CORIOLIS iccid is not match => Change Mno name to GoogleGC"

    .line 250
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object p0, Lcom/sec/internal/constants/Mno;->GOOGLEGC:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 253
    :cond_83
    sget-object p0, Lcom/sec/internal/constants/Mno;->CORIOLIS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createTable()V
    .registers 4

    .line 59
    iget v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    const-string v1, "createTable: init"

    const-string v2, "MnoMap"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->loadCarrierFeature()Z

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mMnoMapJsonParser:Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;->parse()Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyAutoUpdates(Ljava/util/List;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->createTableFromMnoMap(Ljava/util/List;)V

    .line 66
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->mergeTableFromCustomerXml()V

    return-void
.end method

.method public dump()V
    .registers 4

    .line 338
    iget v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    const-string v1, "\nDump of MnoMap"

    const-string v2, "MnoMap"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public getMnoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    monitor-enter v0

    .line 258
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 260
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/MnoMap;->isGcBlockListContains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    :goto_13
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_18
    sget-object v2, Lcom/sec/internal/constants/Mno;->GOOGLEGC:Lcom/sec/internal/constants/Mno;

    goto :goto_13

    :goto_1b
    if-nez v1, :cond_1f

    .line 262
    monitor-exit v0

    return-object v2

    .line 265
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 267
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_153

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 268
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_18d

    if-nez v4, :cond_98

    const/4 v4, 0x0

    .line 271
    :goto_42
    :try_start_42
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x78

    if-eq v5, v6, :cond_6f

    .line 272
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x58

    if-ne v5, v6, :cond_5b

    goto :goto_6f

    .line 275
    :cond_5b
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 277
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMnoName()Ljava/lang/String;

    move-result-object v2
    :try_end_6d
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_42 .. :try_end_6d} :catch_72
    .catchall {:try_start_42 .. :try_end_6d} :catchall_18d

    goto/16 :goto_153

    :cond_6f
    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :catch_72
    move-exception v4

    :try_start_73
    const-string v5, "MnoMap"

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid subset - mnomap:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", SIM:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v4}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 286
    :cond_98
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c0

    .line 287
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c0

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 289
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMnoName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_153

    .line 293
    :cond_c0
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e7

    .line 294
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e7

    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 296
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMnoName()Ljava/lang/String;

    move-result-object v2

    goto :goto_153

    .line 300
    :cond_e7
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_125

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_125

    .line 302
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->setSpName(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 305
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_125

    .line 306
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_125

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_125

    .line 308
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMnoName()Ljava/lang/String;

    move-result-object v2

    goto :goto_153

    .line 313
    :cond_125
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 314
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 316
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMnoName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_153
    :goto_153
    const-string p2, "MnoMap"

    .line 320
    iget p0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMnoName: ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") => "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    monitor-exit v0

    return-object v2

    :catchall_18d
    move-exception p0

    .line 322
    monitor-exit v0
    :try_end_18f
    .catchall {:try_start_73 .. :try_end_18f} :catchall_18d

    throw p0
.end method

.method public getMnoNamesFromNetworkPlmn(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    monitor-enter v0

    .line 327
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 333
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    .line 334
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public isGcBlockListContains(Ljava/lang/String;)Z
    .registers 5

    .line 224
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2e

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2e

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mMnoMapJsonParser:Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;->getGcBlockList()Ljava/util/List;

    move-result-object v0

    const-string v2, "*"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_2e

    .line 228
    :cond_1e
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mMnoMapJsonParser:Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;->getGcBlockList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2e
    :goto_2e
    const/4 p0, 0x1

    return p0
.end method
