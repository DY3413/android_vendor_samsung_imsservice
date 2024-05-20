.class public Lcom/sec/internal/ims/settings/ImsProfileCache;
.super Ljava/lang/Object;
.source "ImsProfileCache.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

.field private final mContext:Landroid/content/Context;

.field private mIsMvno:Z

.field private mMnoName:Ljava/lang/String;

.field private mNextId:I

.field private mPMnoName:Ljava/lang/String;

.field private mPhoneId:I

.field private mProfileGlobalGC:Lcom/sec/ims/settings/ImsProfile;

.field private final mProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1SPASzvLHm6Lp6IoMAAnQTfxafU(Lcom/sec/internal/ims/settings/ImsProfileCache;Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->lambda$dump$0(Lcom/sec/ims/settings/ImsProfile;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-class v0, Lcom/sec/internal/ims/settings/ImsProfileCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    const/4 v1, 0x1

    .line 46
    iput v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    .line 50
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    const/4 v2, 0x0

    .line 60
    iput-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileGlobalGC:Lcom/sec/ims/settings/ImsProfile;

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    .line 65
    sget-char v2, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v2, 0x0

    if-eq p2, v0, :cond_0

    .line 67
    iput-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    const-string p2, ""

    .line 71
    iput-object p2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    .line 73
    :goto_0
    invoke-static {p1, p3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    .line 74
    iput p3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    return-void
.end method

.method private clearAllFromStorage()V
    .locals 2

    .line 466
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v1, "imsprofile"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->clear(ILandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getAllProfileFromStorage()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 472
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->load(Z)V

    .line 474
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 477
    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->init(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    .line 478
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p0

    .line 474
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private init(ZLjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v2, "init : imsprofile.json"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 225
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string p1, "init: selection is empty. Return no profile."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 230
    :cond_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 231
    new-instance v2, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    .line 232
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v2, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 234
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 236
    :try_start_0
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v3, "init: Close failed. Keep going"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "profile"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 242
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    .line 247
    :cond_1
    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 248
    sget-object v3, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 249
    monitor-enter p0

    const/4 v4, 0x1

    .line 250
    :try_start_1
    iput v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    .line 251
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 252
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 253
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v6, "name"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "default"

    .line 254
    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v5

    goto :goto_1

    :cond_3
    const-string v4, "id"

    .line 258
    iget v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 262
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_1

    :cond_4
    const-string v4, "GoogleGC_ALL"

    .line 264
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "mnoname"

    invoke-virtual {v5, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "GoogleGC_ALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 265
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_2

    :cond_5
    const-string v4, "mdmn_type"

    .line 267
    invoke-virtual {v5, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v4, "mdmn_type"

    invoke-virtual {v5, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    const-string v4, "mnoname"

    .line 268
    invoke-virtual {v5, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 269
    :cond_7
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_1

    .line 274
    :cond_8
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 277
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string p1, "init: No default profile."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 282
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-virtual {p1, v2, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsProfileUpdate(Lcom/google/gson/JsonArray;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 284
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 287
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: Found "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " profiles to merge."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-enter p0

    .line 290
    :try_start_2
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonElement;

    .line 291
    invoke-static {v3, p2}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p2

    .line 292
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 293
    iget-object p2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v1, "init: merge failed! check json is valid."

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 295
    :cond_b
    invoke-static {p2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->removeNote(Lcom/google/gson/JsonElement;)V

    .line 296
    new-instance v1, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p2

    if-nez p2, :cond_c

    .line 299
    iget-object p2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init: profile name["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget p2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    add-int/lit8 v2, p2, 0x1

    iput v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setId(I)V

    .line 302
    :cond_c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 305
    :cond_d
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: merge completed. "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " profiles initiated."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 274
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 243
    :cond_e
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string p1, "init: parse failed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private isVersionUpdated()Z
    .locals 6

    const-string v0, "ro.build.PDA"

    const-string v1, ""

    .line 78
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ril.official_cscver"

    .line 79
    invoke-static {v2, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    iget v3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v4, "imsprofile"

    const-string v5, "buildinfo"

    invoke-static {v3, p0, v4, v5, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$dump$0(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static readFromJsonFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 527
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 528
    new-instance v2, Ljava/io/InputStreamReader;

    .line 529
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f060002

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 530
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 531
    new-instance v3, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v3, p0}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 532
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 535
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 536
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 537
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :catch_0
    :try_start_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v1, "profile"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_2

    .line 545
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 550
    :try_start_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "name"

    .line 551
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {v1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_2
    :cond_2
    :goto_1
    return-object v0
.end method

.method private removeFromStorage(I)V
    .locals 2

    .line 462
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "imsprofile"

    invoke-static {v0, p0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->remove(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static removeNote(Lcom/google/gson/JsonElement;)V
    .locals 2

    const-string v0, "note"

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 166
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private saveBuildInfo()V
    .locals 4

    const-string v0, "ro.build.PDA"

    const-string v1, ""

    .line 92
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ril.official_cscver"

    .line 93
    invoke-static {v2, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v2, "imsprofile"

    const-string v3, "buildinfo"

    invoke-static {v1, p0, v2, v3, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveToStorage(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 3

    .line 457
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    .line 458
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v2, "imsprofile"

    .line 457
    invoke-static {v0, p0, v2, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v2, "Dump of ImsProfileCache:"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/settings/ImsProfileCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/settings/ImsProfileCache$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/settings/ImsProfileCache;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 489
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 490
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAllProfileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getAllProfileFromStorage()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getProfile(I)Lcom/sec/ims/settings/ImsProfile;
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile;

    monitor-exit v0

    return-object p0

    .line 415
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getAllProfileFromStorage()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile;

    return-object p0

    :catchall_0
    move-exception p0

    .line 415
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getProfileListByMdmnType(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 387
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMdmnType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    new-instance v4, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v4, v3}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 391
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v2, "not found from loaded profile by mdmn type"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 395
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->init(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 396
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMdmnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    new-instance v3, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v3, v2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 402
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProfileListByMdmnType: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_0
    move-exception p0

    .line 391
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getProfileListByMnoName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfileListByMnoName(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getProfileListByMnoName(Ljava/lang/String;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 323
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 324
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileList by loaded mno - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    if-eqz p2, :cond_1

    const-string v4, "mmtel"

    .line 328
    invoke-virtual {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    :cond_1
    new-instance v4, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v4, v3}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_2
    monitor-exit v1

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 335
    :cond_3
    sget-char v1, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v3, ""

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    const/4 v3, 0x1

    .line 340
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v3

    move v3, v2

    .line 343
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProfileList by new mno - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", loaded mno - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isMvno - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 345
    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->init(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/settings/ImsProfile;

    .line 346
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz p2, :cond_6

    const-string v7, "mmtel"

    .line 347
    invoke-virtual {v6, v7}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 348
    :cond_6
    new-instance v7, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v7, v6}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v3, :cond_9

    .line 351
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 352
    iget-object v7, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getProfileList by new mno - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", Parent mno - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_8

    const-string v7, "mmtel"

    .line 353
    invoke-virtual {v6, v7}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 354
    :cond_8
    new-instance v7, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v7, v6}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz p2, :cond_5

    .line 357
    iget-object v7, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileGlobalGC:Lcom/sec/ims/settings/ImsProfile;

    if-nez v7, :cond_5

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GoogleGC_ALL"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 358
    new-instance v7, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v7, v6}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    iput-object v7, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileGlobalGC:Lcom/sec/ims/settings/ImsProfile;

    goto/16 :goto_2

    :cond_a
    if-eqz v3, :cond_b

    .line 361
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 362
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    move-object v0, p1

    :cond_b
    :goto_3
    if-eqz p2, :cond_e

    .line 366
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileGlobalGC:Lcom/sec/ims/settings/ImsProfile;

    if-eqz p1, :cond_c

    .line 367
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    const-string p1, "GoogleGC_ALL"

    .line 369
    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->init(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/settings/ImsProfile;

    .line 370
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GoogleGC_ALL"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 371
    new-instance v1, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v1, p2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileGlobalGC:Lcom/sec/ims/settings/ImsProfile;

    .line 372
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 378
    :cond_e
    :goto_5
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getProfileListByMnoName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public initFromResource()V
    .locals 7

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->init(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 177
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v3, "initFromResource : Save to storage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v4, "imsprofile"

    invoke-static {v2, v3, v4, v1, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 180
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 182
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 184
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    .line 187
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    iget-boolean v5, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    if-eqz v5, :cond_2

    .line 190
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 201
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v1, "initFromResource : Prepare local cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 206
    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    if-eqz v1, :cond_5

    .line 207
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 208
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v2, "init: This mno is MVNO but no profile defined. Use Parent profiles"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 211
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 214
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 216
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->saveBuildInfo()V

    return-void

    :catchall_0
    move-exception p0

    .line 216
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public insert(Lcom/sec/ims/settings/ImsProfile;)I
    .locals 3

    .line 421
    monitor-enter p0

    .line 422
    :try_start_0
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setId(I)V

    .line 423
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 425
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 426
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->saveToStorage(Lcom/sec/ims/settings/ImsProfile;)V

    .line 429
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 427
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    .line 423
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public load(Z)V
    .locals 5

    .line 99
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v2, "imsprofile"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->isVersionUpdated()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isUpdateNeeded()Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p1, "buildinfo"

    .line 107
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 110
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 114
    check-cast v2, Ljava/lang/String;

    .line 115
    new-instance v3, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v3, v2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v0, "Invalid ImsProfile from sharedpref, reset to default"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->clearAllFromStorage()V

    .line 120
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->initFromResource()V

    .line 121
    monitor-exit p0

    return-void

    .line 124
    :cond_2
    iget v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    .line 126
    iget-boolean v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    if-eqz v2, :cond_4

    .line 127
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 138
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 141
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 143
    iget-boolean v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    if-eqz v2, :cond_7

    .line 144
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 145
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v2, "load: This mno is MVNO but no profile defined. Use Parent profiles"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 148
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 151
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 153
    :goto_1
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    .line 138
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 103
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v0, "load: map empty or version update or autoupdate needed or SIM MNO changed."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->clearAllFromStorage()V

    .line 105
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->initFromResource()V

    :goto_3
    return-void
.end method

.method public remove(I)V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->removeFromStorage(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 452
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public resetToDefault()V
    .locals 1

    .line 312
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->clearAllFromStorage()V

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->load(Z)V

    return-void
.end method

.method public update(ILandroid/content/ContentValues;)I
    .locals 2

    .line 433
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 435
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "update: profile not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 439
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/ims/settings/ImsProfile;->update(Landroid/content/ContentValues;)V

    .line 440
    iget-object p2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter p2

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 442
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->saveToStorage(Lcom/sec/ims/settings/ImsProfile;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 444
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateMno(Landroid/content/ContentValues;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "mnoname"

    .line 495
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mvnoname"

    .line 496
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move v2, v3

    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    goto :goto_0

    :cond_0
    const-string p1, ""

    move v2, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 508
    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 509
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMno: Mno Changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iput-boolean v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    .line 511
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    .line 512
    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 514
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMno: This mno is MVNO, Parent Mno is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/settings/ImsProfileCache;->load(Z)V

    return v3

    :cond_2
    return v0
.end method
