.class public Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;
.super Ljava/lang/Object;
.source "ImsSimMobilityUpdate.java"


# static fields
.field private static final ALLOW_LIST:Ljava/lang/String; = "simmobility_allowlist"

.field private static final BLOCK_LIST:Ljava/lang/String; = "simmobility_blocklist"

.field private static final MOBILITY_PROFILE_UPDATE:Ljava/lang/String; = "mobilityprofile_update"

.field private static final RCS_ALLOW_LIST:Ljava/lang/String; = "simmobility_allowlist_rcs"

.field private static final RCS_BLOCK_LIST:Ljava/lang/String; = "simmobility_blocklist_rcs"

.field private static final SIMMOBILITY_UPDATE:Ljava/lang/String; = "simmobility_update"

.field private static final TAG:Ljava/lang/String; = "ImsSimMobilityUpdate"

.field private static mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;


# direct methods
.method public static synthetic $r8$lambda$VLciOXjtl1FFaaqUKK6z0m6oz8w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->lambda$checkAllowListForSimMobility$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$idZjuvSGUtZV2wXgPMxQZQfk1Go(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->lambda$checkAllowListForSimMobility$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method public static checkAllowListForSimMobility([Ljava/lang/String;[Ljava/lang/String;I)Z
    .registers 8

    .line 203
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {}, Lcom/sec/internal/constants/Mno;->getRegionOfDevice()Lcom/sec/internal/constants/Mno$Region;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    sget-object v2, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAllowListForSimMobility : deviceRegion ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], OMC_CODE ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_44

    const-string p0, "No mobility condition by blockList"

    .line 212
    invoke-static {v2, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5a

    .line 213
    :cond_44
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1, v0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_5a

    const-string p0, "SimMobility enabled by allowlist"

    .line 214
    invoke-static {v2, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_5b

    :cond_5a
    :goto_5a
    const/4 p0, 0x0

    :goto_5b
    return p0
.end method

.method private static checkProfileWithNames(Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 284
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v0, "name"

    .line 285
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v1, "mnoname"

    .line 286
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v0, :cond_3a

    if-eqz v1, :cond_3a

    .line 287
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->isJsonNull()Z

    move-result p0

    if-nez p0, :cond_3a

    .line 288
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 289
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_32
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_32} :catch_36

    if-eqz p0, :cond_3a

    const/4 p0, 0x1

    return p0

    :catch_36
    move-exception p0

    .line 294
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;
    .registers 3

    .line 68
    sget-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    if-nez v0, :cond_17

    .line 69
    const-class v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    monitor-enter v0

    .line 70
    :try_start_7
    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    if-nez v1, :cond_12

    .line 71
    new-instance v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    .line 73
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 76
    :cond_17
    :goto_17
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    return-object p0
.end method

.method public static isAllowSimMobilityByImsprofile(Lcom/sec/ims/settings/ImsProfile;I)Z
    .registers 7

    const-string/jumbo v0, "simmobility_allowlist"

    .line 185
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "simmobility_blocklist"

    .line 186
    invoke-virtual {p0, v2}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 188
    sget-object v2, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllowSimMobilityByImsprofile : Profile Name ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    invoke-static {v0, v1, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->checkAllowListForSimMobility([Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isAllowSimMobilityByImsprofileForRcs(Lcom/sec/ims/settings/ImsProfile;I)Z
    .registers 7

    const-string/jumbo v0, "simmobility_allowlist_rcs"

    .line 194
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "simmobility_blocklist_rcs"

    .line 195
    invoke-virtual {p0, v2}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 197
    sget-object v2, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllowSimMobilityByImsprofileForRcs : Profile Name ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    invoke-static {v0, v1, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->checkAllowListForSimMobility([Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$checkAllowListForSimMobility$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "*"

    .line 211
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private static synthetic lambda$checkAllowListForSimMobility$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "*"

    .line 213
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private makeUpdatedProfile(Lcom/sec/ims/settings/ImsProfile;Lcom/google/gson/JsonObject;)Lcom/sec/ims/settings/ImsProfile;
    .registers 9

    .line 80
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 81
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 85
    :try_start_7
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0
    :try_end_f
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_1b

    :catch_10
    move-exception v0

    .line 87
    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v2, "profile cannot parse result"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 91
    :goto_1b
    const-class v0, Lcom/google/gson/JsonElement;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/JsonUtil;->deepCopy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    if-nez p2, :cond_2d

    .line 94
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string p2, "object profiles is null."

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_2d
    const-string v1, "profile"

    .line 98
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p2

    if-nez p2, :cond_3e

    .line 101
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "updates is null."

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 105
    :cond_3e
    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 107
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p0

    if-nez p0, :cond_a4

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result p0

    if-nez p0, :cond_a4

    .line 108
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_50
    :goto_50
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonElement;

    .line 109
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "name"

    .line 110
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    const-string v4, "mnoname"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 111
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_50

    .line 113
    invoke-static {v0, v3, v2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->checkProfileWithNames(Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 114
    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sim mobility imsprofile update : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {v0, p2}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v1

    goto :goto_50

    .line 121
    :cond_a4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p0

    if-eqz p0, :cond_b3

    .line 122
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "updatedProf is null"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 125
    :cond_b3
    new-instance p0, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private mergeProfiles(Lcom/google/gson/JsonObject;Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/settings/ImsProfile;
    .registers 5

    if-eqz p1, :cond_28

    .line 267
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 270
    :try_start_8
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->makeUpdatedProfile(Lcom/sec/ims/settings/ImsProfile;Lcom/google/gson/JsonObject;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 273
    sget-object p1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating mobility profile failed.return original profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 273
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-object p2
.end method


# virtual methods
.method public dump()V
    .registers 3

    .line 300
    sget-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v1, "\nDump of ImsSimMobilityUpdate:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public isSimMobilityAllowedByCarrier(Lcom/sec/ims/settings/ImsProfile;)Z
    .registers 6

    .line 228
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "simmobility_allowlist"

    .line 229
    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "simmobility_blocklist"

    .line 230
    invoke-virtual {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    return v2

    :cond_1a
    const-string v1, "persist.ims.simmobility"

    const/4 v3, -0x1

    .line 240
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2b

    .line 243
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string p1, "SimMobility Feature is Enabled"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2b
    const-string v1, "*"

    .line 247
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_4e

    .line 250
    :cond_3a
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_46

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_55

    .line 253
    :cond_46
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string p1, "SimMobility enabled by allowlist"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 248
    :cond_4e
    :goto_4e
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string p1, "No mobility condition"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    const/4 v2, 0x0

    :goto_56
    return v2
.end method

.method public overrideGlobalSettingsForSimMobilityUpdateOnDemand(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;
    .registers 7

    const-string/jumbo v0, "simmobility_update"

    .line 170
    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v2, "overrideGlobalSettingsForSimMobilityUpdateOnDemand"

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 172
    :try_start_a
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 173
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update SimMobility GlobalSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda23;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda23;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 176
    invoke-static {p1, v0}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p0
    :try_end_50
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_50} :catch_52
    .catch Lcom/google/gson/JsonParseException; {:try_start_a .. :try_end_50} :catch_52
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_50} :catch_52

    move-object p1, p0

    goto :goto_69

    :catch_52
    move-exception p0

    .line 179
    sget-object p2, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to overrideGlobalSettingsForSimMobilityUpdateOnDemand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    :goto_69
    return-object p1
.end method

.method public overrideImsProfileForSimMobilityUpdateOnDemand(Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;
    .registers 9

    .line 132
    sget-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v1, "overrideImsProfileForSimMobilityUpdateOnDemand"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    :try_start_7
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityAvailable(Landroid/content/Context;ILcom/sec/internal/constants/Mno;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    .line 135
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-nez v1, :cond_30

    .line 136
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->isAllowSimMobilityByImsprofile(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v1

    .line 137
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->activeSimMobility(Z)V

    goto :goto_31

    :cond_30
    move v1, v2

    .line 140
    :goto_31
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 141
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->isAllowSimMobilityByImsprofileForRcs(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v2

    .line 142
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->activeSimMobilityForRcs(Z)V

    :cond_42
    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_47

    :cond_46
    move v1, v2

    .line 146
    :goto_47
    invoke-virtual {p1, v2}, Lcom/sec/ims/settings/ImsProfile;->setSimMobility(Z)V

    .line 147
    invoke-virtual {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->setSimMobilityForRcs(Z)V

    if-nez v2, :cond_68

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not support SimMobility for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 154
    :cond_68
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSimMobilityUpdate()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c2

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSimMobilityUpdate()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_c2

    .line 155
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSimMobilityUpdate()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update SimMobility ImsProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda23;

    invoke-direct {v4}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda23;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {v1, p2, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 158
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mergeProfiles(Lcom/google/gson/JsonObject;Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0
    :try_end_c1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_c1} :catch_c3
    .catch Lcom/google/gson/JsonParseException; {:try_start_7 .. :try_end_c1} :catch_c3
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_c1} :catch_c3

    return-object p0

    :cond_c2
    return-object p1

    :catch_c3
    move-exception p0

    .line 163
    sget-object p2, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to overrideImsProfileForSimMobilityUpdateOnDemand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
