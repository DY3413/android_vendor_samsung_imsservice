.class public Lcom/sec/internal/ims/settings/ImsProfileCache;
.super Ljava/lang/Object;
.source "ImsProfileCache.java"


# instance fields
.field private final BUILD_INFO:Ljava/lang/String;

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
.method public static synthetic $r8$lambda$rmpIb1XJ3HsQeEkAM5mvru_Nz0s(Lcom/sec/internal/ims/settings/ImsProfileCache;Lcom/sec/ims/settings/ImsProfile;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->lambda$dump$0(Lcom/sec/ims/settings/ImsProfile;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-class v0, Lcom/sec/internal/ims/settings/ImsProfileCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v0, "buildinfo"

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->BUILD_INFO:Ljava/lang/String;

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    const/4 v1, 0x1

    .line 48
    iput v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    .line 52
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    const/4 v2, 0x0

    .line 62
    iput-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileGlobalGC:Lcom/sec/ims/settings/ImsProfile;

    .line 65
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    .line 67
    sget-char v2, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v2, 0x0

    if-eq p2, v0, :cond_37

    .line 69
    iput-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    goto :goto_3d

    .line 72
    :cond_37
    iput-boolean v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    const-string p2, ""

    .line 73
    iput-object p2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    .line 75
    :goto_3d
    invoke-static {p1, p3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    .line 76
    iput p3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    return-void
.end method

.method private clearAllFromStorage()V
    .registers 3

    .line 484
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v1, "imsprofile"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->clear(ILandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private createProfileMap()V
    .registers 1

    .line 169
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->clearAllFromStorage()V

    .line 170
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->initFromResource()V

    return-void
.end method

.method private getAllProfileFromStorage()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 489
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    .line 490
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->load(Z)V

    .line 492
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_38

    .line 494
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 495
    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->init(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    .line 496
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_37
    return-object v0

    :catchall_38
    move-exception p0

    .line 492
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method private init(ZLjava/lang/String;)Ljava/util/List;
    .registers 11
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

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v2, "init : imsprofile.json"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1c

    .line 243
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string p1, "init: selection is empty. Return no profile."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 248
    :cond_1c
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 249
    new-instance v2, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    .line 250
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v2, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 252
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 254
    :try_start_41
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_4c

    .line 256
    :catch_45
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v3, "init: Close failed. Keep going"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_4c
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "profile"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    if-eqz v1, :cond_1cc

    .line 260
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_60

    goto/16 :goto_1cc

    .line 265
    :cond_60
    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 266
    sget-object v3, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 267
    monitor-enter p0

    const/4 v4, 0x1

    .line 268
    :try_start_69
    iput v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    .line 269
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6f
    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_100

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 270
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 271
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v6, "name"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "default"

    .line 272
    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_97

    move-object v3, v5

    goto :goto_6f

    :cond_97
    const-string v4, "id"

    .line 276
    iget v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_ac

    .line 280
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_6f

    :cond_ac
    const-string v4, "GoogleGC_ALL"

    .line 282
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ca

    const-string v4, "mnoname"

    invoke-virtual {v5, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "GoogleGC_ALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 283
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_100

    :cond_ca
    const-string v4, "mdmn_type"

    .line 285
    invoke-virtual {v5, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_e2

    const-string v4, "mdmn_type"

    invoke-virtual {v5, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fb

    :cond_e2
    const-string v4, "mnoname"

    .line 286
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

    if-eqz v4, :cond_6f

    .line 287
    :cond_fb
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_6f

    .line 292
    :cond_100
    :goto_100
    monitor-exit p0
    :try_end_101
    .catchall {:try_start_69 .. :try_end_101} :catchall_1c9

    .line 294
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p1

    if-eqz p1, :cond_10f

    .line 295
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string p1, "init: No default profile."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 300
    :cond_10f
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-virtual {p1, v2, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsProfileUpdate(Lcom/google/gson/JsonArray;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p2

    if-nez p2, :cond_125

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result p2

    if-eqz p2, :cond_125

    .line 302
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 305
    :cond_125
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

    .line 307
    monitor-enter p0

    .line 308
    :try_start_145
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_149
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonElement;

    .line 309
    invoke-static {v3, p2}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p2

    .line 310
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_167

    .line 311
    iget-object p2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v1, "init: merge failed! check json is valid."

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_149

    .line 313
    :cond_167
    invoke-static {p2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->removeNote(Lcom/google/gson/JsonElement;)V

    .line 314
    new-instance v1, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p2

    if-nez p2, :cond_1a1

    .line 317
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

    .line 318
    iget p2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    add-int/lit8 v2, p2, 0x1

    iput v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setId(I)V

    .line 320
    :cond_1a1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_149

    .line 323
    :cond_1a5
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

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    monitor-exit p0

    return-object v0

    :catchall_1c6
    move-exception p1

    monitor-exit p0
    :try_end_1c8
    .catchall {:try_start_145 .. :try_end_1c8} :catchall_1c6

    throw p1

    :catchall_1c9
    move-exception p1

    .line 292
    :try_start_1ca
    monitor-exit p0
    :try_end_1cb
    .catchall {:try_start_1ca .. :try_end_1cb} :catchall_1c9

    throw p1

    .line 261
    :cond_1cc
    :goto_1cc
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string p1, "init: parse failed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private isVersionUpdated()Z
    .registers 7

    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, ""

    .line 80
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ril.official_cscver"

    .line 81
    invoke-static {v2, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    iget v3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v4, "imsprofile"

    const-string v5, "buildinfo"

    invoke-static {v3, p0, v4, v5, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    const/4 p0, 0x1

    return p0

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$dump$0(Lcom/sec/ims/settings/ImsProfile;)V
    .registers 2

    .line 506
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static readFromJsonFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    .line 545
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 546
    new-instance v2, Ljava/io/InputStreamReader;

    .line 547
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f060002

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 548
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 549
    new-instance v3, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v3, p0}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 550
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 553
    :try_start_25
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 554
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 555
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_2e

    .line 559
    :catch_2e
    :try_start_2e
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v1, "profile"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p0
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_38} :catch_6f

    if-eqz p0, :cond_6f

    .line 563
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_6f

    .line 566
    :cond_41
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_45
    :goto_45
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 568
    :try_start_51
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "name"

    .line 569
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    goto :goto_45

    .line 572
    :cond_66
    invoke-virtual {v1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0
    :try_end_6e
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_6e} :catch_45

    return-object p0

    :catch_6f
    :cond_6f
    :goto_6f
    return-object v0
.end method

.method private removeFromStorage(I)V
    .registers 4

    .line 480
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v1, "imsprofile"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->remove(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static removeNote(Lcom/google/gson/JsonElement;)V
    .registers 3

    const-string v0, "note"

    .line 181
    :try_start_2
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 182
    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 183
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_6

    :catch_10
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_14
    return-void
.end method

.method private saveBuildInfo()V
    .registers 5

    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, ""

    .line 94
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ril.official_cscver"

    .line 95
    invoke-static {v2, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v2, "imsprofile"

    const-string v3, "buildinfo"

    invoke-static {v1, p0, v2, v3, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveToStorage(Lcom/sec/ims/settings/ImsProfile;)V
    .registers 5

    .line 475
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    .line 476
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v2, "imsprofile"

    .line 475
    invoke-static {v0, p0, v2, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump()V
    .registers 4

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 504
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v2, "Dump of ImsProfileCache:"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/settings/ImsProfileCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/settings/ImsProfileCache$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/settings/ImsProfileCache;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 507
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 508
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public getAllProfileList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getAllProfileFromStorage()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getProfile(I)Lcom/sec/ims/settings/ImsProfile;
    .registers 5

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 430
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 431
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile;

    monitor-exit v0

    return-object p0

    .line 433
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2d

    .line 435
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getAllProfileFromStorage()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile;

    return-object p0

    :catchall_2d
    move-exception p0

    .line 433
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public getProfileListByMdmnType(Ljava/lang/String;)Ljava/util/List;
    .registers 7
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

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v1

    .line 404
    :try_start_8
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 405
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMdmnType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 406
    new-instance v4, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v4, v3}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 409
    :cond_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_7e

    .line 411
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 412
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v2, "not found from loaded profile by mdmn type"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 413
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->init(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_48
    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 414
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMdmnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 415
    new-instance v3, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v3, v2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 420
    :cond_67
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

    :catchall_7e
    move-exception p0

    .line 409
    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p0
.end method

.method public getProfileListByMnoName(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    .line 335
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfileListByMnoName(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getProfileListByMnoName(Ljava/lang/String;Z)Ljava/util/List;
    .registers 13
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

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16c

    .line 341
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5c

    .line 342
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileList by loaded mno - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v1

    .line 345
    :try_start_2d
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_37
    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    if-eqz p2, :cond_4d

    const-string v4, "mmtel"

    .line 346
    invoke-virtual {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 347
    :cond_4d
    new-instance v4, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v4, v3}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 350
    :cond_56
    monitor-exit v1

    goto/16 :goto_135

    :catchall_59
    move-exception p0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_2d .. :try_end_5b} :catchall_59

    throw p0

    .line 353
    :cond_5c
    sget-char v1, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v3, ""

    const/4 v4, -0x1

    if-eq v1, v4, :cond_6d

    .line 358
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    goto :goto_6e

    :cond_6d
    move v1, v2

    .line 361
    :goto_6e
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

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 363
    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->init(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a3
    :goto_a3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_126

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/settings/ImsProfile;

    .line 364
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_cb

    if-eqz p2, :cond_c3

    const-string v7, "mmtel"

    .line 365
    invoke-virtual {v6, v7}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 366
    :cond_c3
    new-instance v7, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v7, v6}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cb
    if-eqz v1, :cond_10b

    .line 369
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10b

    .line 370
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

    if-eqz p2, :cond_103

    const-string v7, "mmtel"

    .line 371
    invoke-virtual {v6, v7}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10b

    .line 372
    :cond_103
    new-instance v7, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v7, v6}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10b
    if-eqz p2, :cond_a3

    .line 375
    iget-object v7, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileGlobalGC:Lcom/sec/ims/settings/ImsProfile;

    if-nez v7, :cond_a3

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GoogleGC_ALL"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 376
    new-instance v7, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v7, v6}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    iput-object v7, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileGlobalGC:Lcom/sec/ims/settings/ImsProfile;

    goto/16 :goto_a3

    :cond_126
    if-eqz v1, :cond_135

    .line 379
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_135

    .line 380
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    move-object v0, p1

    :cond_135
    :goto_135
    if-eqz p2, :cond_16c

    .line 384
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileGlobalGC:Lcom/sec/ims/settings/ImsProfile;

    if-eqz p1, :cond_13f

    .line 385
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16c

    :cond_13f
    const-string p1, "GoogleGC_ALL"

    .line 387
    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->init(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_149
    :goto_149
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_16c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/settings/ImsProfile;

    .line 388
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GoogleGC_ALL"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 389
    new-instance v1, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v1, p2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileGlobalGC:Lcom/sec/ims/settings/ImsProfile;

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_149

    .line 396
    :cond_16c
    :goto_16c
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
    .registers 8

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->init(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 193
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v3, "initFromResource : Save to storage"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v4, "imsprofile"

    invoke-static {v2, v3, v4, v1, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 196
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 198
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 200
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    .line 203
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    iget-boolean v5, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    if-eqz v5, :cond_79

    .line 206
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 207
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 208
    :cond_61
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 209
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 212
    :cond_79
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 213
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 217
    :cond_91
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v1, "initFromResource : Prepare local cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 221
    :try_start_9e
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 222
    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    if-eqz v1, :cond_c0

    .line 223
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 224
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v2, "init: This mno is MVNO but no profile defined. Use Parent profiles"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_c5

    .line 227
    :cond_ba
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_c5

    .line 230
    :cond_c0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 232
    :goto_c5
    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_9e .. :try_end_c6} :catchall_e6

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFromResource : mProfileMap size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->saveBuildInfo()V

    return-void

    :catchall_e6
    move-exception p0

    .line 232
    :try_start_e7
    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw p0
.end method

.method public insert(Lcom/sec/ims/settings/ImsProfile;)I
    .registers 5

    .line 439
    monitor-enter p0

    .line 440
    :try_start_1
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setId(I)V

    .line 441
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_27

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 444
    :try_start_e
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_24

    .line 446
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->saveToStorage(Lcom/sec/ims/settings/ImsProfile;)V

    .line 447
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p0

    return p0

    :catchall_24
    move-exception p0

    .line 445
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0

    :catchall_27
    move-exception p1

    .line 441
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public load(Z)V
    .registers 8

    .line 101
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v2, "imsprofile"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load: mMnoName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mPMnoName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isUpdateNeeded()Z

    move-result v1

    if-nez v1, :cond_15f

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15f

    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->isVersionUpdated()Z

    move-result v1

    if-nez v1, :cond_15f

    if-eqz p1, :cond_49

    goto/16 :goto_15f

    :cond_49
    const-string p1, "buildinfo"

    .line 111
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 114
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 116
    monitor-enter p0

    .line 117
    :try_start_59
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_61
    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 118
    check-cast v2, Ljava/lang/String;

    .line 119
    new-instance v3, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v3, v2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 122
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v0, "load: Invalid ImsProfile from sharedpref, reset to default"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->createProfileMap()V

    .line 124
    monitor-exit p0

    return-void

    .line 126
    :cond_88
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load: MnoName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    .line 130
    iget-boolean v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    if-eqz v2, :cond_f1

    .line 131
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 132
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 133
    :cond_d8
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 134
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_61

    .line 137
    :cond_f1
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 138
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_61

    .line 143
    :cond_10a
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12c

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12c

    const-string v0, "DEFAULT"

    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12c

    .line 144
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v0, "load: Currently mno info different from mno is included in the SP"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->createProfileMap()V

    .line 146
    monitor-exit p0

    return-void

    .line 148
    :cond_12c
    monitor-exit p0
    :try_end_12d
    .catchall {:try_start_59 .. :try_end_12d} :catchall_15c

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 151
    :try_start_130
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 153
    iget-boolean v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    if-eqz v2, :cond_152

    .line 154
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14c

    .line 155
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v2, "load: This mno is MVNO but no profile defined. Use Parent profiles"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_157

    .line 158
    :cond_14c
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_157

    .line 161
    :cond_152
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 163
    :goto_157
    monitor-exit v0

    goto :goto_169

    :catchall_159
    move-exception p0

    monitor-exit v0
    :try_end_15b
    .catchall {:try_start_130 .. :try_end_15b} :catchall_159

    throw p0

    :catchall_15c
    move-exception p1

    .line 148
    :try_start_15d
    monitor-exit p0
    :try_end_15e
    .catchall {:try_start_15d .. :try_end_15e} :catchall_15c

    throw p1

    .line 108
    :cond_15f
    :goto_15f
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v0, "load: map empty or version update or autoupdate needed or SIM MNO changed."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->createProfileMap()V

    .line 165
    :goto_169
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load: mProfileMap size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public remove(I)V
    .registers 5

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 469
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 471
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->removeFromStorage(I)V

    return-void

    :catchall_11
    move-exception p0

    .line 470
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public resetToDefault()V
    .registers 2

    .line 330
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->clearAllFromStorage()V

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->load(Z)V

    return-void
.end method

.method public update(ILandroid/content/ContentValues;)I
    .registers 5

    .line 451
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v0, :cond_10

    .line 453
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "update: profile not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 457
    :cond_10
    invoke-virtual {v0, p2}, Lcom/sec/ims/settings/ImsProfile;->update(Landroid/content/ContentValues;)V

    .line 458
    iget-object p2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter p2

    .line 459
    :try_start_16
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 460
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_2f
    monitor-exit p2
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_35

    .line 463
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->saveToStorage(Lcom/sec/ims/settings/ImsProfile;)V

    const/4 p0, 0x1

    return p0

    :catchall_35
    move-exception p0

    .line 462
    :try_start_36
    monitor-exit p2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public updateMno(Landroid/content/ContentValues;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_82

    const-string v1, "mnoname"

    .line 513
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mvnoname"

    .line 514
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 517
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2f

    .line 520
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

    goto :goto_32

    :cond_2f
    const-string p1, ""

    move v2, v0

    :goto_32
    if-eqz v1, :cond_82

    .line 526
    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_82

    .line 527
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

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iput-boolean v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    .line 529
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    .line 530
    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    if-eqz v2, :cond_7e

    .line 532
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

    .line 535
    :cond_7e
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/settings/ImsProfileCache;->load(Z)V

    return v3

    :cond_82
    return v0
.end method
