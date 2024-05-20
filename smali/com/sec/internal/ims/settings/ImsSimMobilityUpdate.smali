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
.method public static synthetic $r8$lambda$47L4iiJgvFI_92lyX1clS38r4Dw(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->lambda$checkAllowListForSimMobility$3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CPykNu7v7i08zMfL1PNwi-DnqD4(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->lambda$checkAllowListForSimMobility$2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PCBLZ9pTZEVtneUFYEPCiWstD1A(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->lambda$checkAllowListForSimMobility$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lp-5p2PPMWAmXn1_tRN3C0yefs8(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->lambda$checkAllowListForSimMobility$1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

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
    .locals 9

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

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "SimMobility enabled by allowlist"

    const-string v6, "No mobility condition by blockList"

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    .line 212
    invoke-static {v2, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v8, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda1;

    invoke-direct {v8, v1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    invoke-static {v2, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v7

    .line 220
    :goto_1
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 221
    invoke-static {v2, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v4, v7

    goto :goto_2

    .line 224
    :cond_2
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 225
    invoke-static {v2, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    return v4
.end method

.method private static checkProfileWithNames(Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v0, "name"

    .line 297
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v1, "mnoname"

    .line 298
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->isJsonNull()Z

    move-result p0

    if-nez p0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 301
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 306
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;
    .locals 2

    .line 68
    sget-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    if-nez v0, :cond_1

    .line 69
    const-class v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 76
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    return-object p0
.end method

.method public static isAllowSimMobilityByImsprofile(Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 5

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
    .locals 5

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

.method private static synthetic lambda$checkAllowListForSimMobility$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "*"

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static synthetic lambda$checkAllowListForSimMobility$1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "*"

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static synthetic lambda$checkAllowListForSimMobility$2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 220
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$checkAllowListForSimMobility$3(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 224
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private makeUpdatedProfile(Lcom/sec/ims/settings/ImsProfile;Lcom/google/gson/JsonObject;)Lcom/sec/ims/settings/ImsProfile;
    .locals 6

    .line 80
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 81
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 85
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v2, "profile cannot parse result"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 91
    :goto_0
    const-class v0, Lcom/google/gson/JsonElement;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/JsonUtil;->deepCopy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    if-nez p2, :cond_0

    .line 94
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string p2, "object profiles is null."

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    const-string v1, "profile"

    .line 98
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p2

    if-nez p2, :cond_1

    .line 101
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "updates is null."

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 105
    :cond_1
    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 107
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result p0

    if-nez p0, :cond_3

    .line 108
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

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

    if-eqz v4, :cond_2

    const-string v4, "mnoname"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

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

    if-eqz v0, :cond_2

    .line 113
    invoke-static {v0, v3, v2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->checkProfileWithNames(Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

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

    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 122
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "updatedProf is null"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 125
    :cond_4
    new-instance p0, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private mergeProfiles(Lcom/google/gson/JsonObject;Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/settings/ImsProfile;
    .locals 2

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 282
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->makeUpdatedProfile(Lcom/sec/ims/settings/ImsProfile;Lcom/google/gson/JsonObject;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 285
    sget-object p1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating mobility profile failed.return original profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 285
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p2
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 344
    sget-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v1, "\nDump of ImsSimMobilityUpdate:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public isSimMobilityAllowedByCarrier(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 4

    .line 240
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "simmobility_allowlist"

    .line 241
    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "simmobility_blocklist"

    .line 242
    invoke-virtual {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, -0x1

    const-string v3, "persist.ims.simmobility"

    .line 252
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 255
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string p1, "SimMobility Feature is Enabled"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const-string v1, "*"

    .line 259
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 265
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string p1, "SimMobility enabled by allowlist"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :cond_4
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string p1, "No mobility condition"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public isSimMobilityAvailable(Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 2

    .line 320
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 321
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "SIM Mobility Feature disabled; "

    goto :goto_0

    .line 323
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->isOutboundSim(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Not outbound Sim - SimMobility should be disabled; "

    goto :goto_0

    .line 325
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isVoiceCapable()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Disable non voice capable tablet in R OS"

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isAmerica()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "ro.product.first_api_level"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x1e

    if-ge p0, v0, :cond_3

    const-string p0, "Disable under R OS(first API) except America Region"

    goto :goto_0

    .line 330
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isAmerica()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string p1, "SM-P619"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Disable in SM-P619 except America/CHN Region"

    goto :goto_0

    :cond_4
    const-string p0, ""

    .line 335
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p0, 0x1

    return p0

    .line 339
    :cond_5
    sget-object p1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public overrideGlobaettingsForSimMobilityUpdateOnDemand(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;
    .locals 4

    const-string/jumbo v0, "simmobility_update"

    .line 170
    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v2, "overrideGlobaettingsForSimMobilityUpdateOnDemand"

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 172
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

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
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto :goto_0

    .line 179
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string p2, "Failed to overrideGlobaettingsForSimMobilityUpdateOnDemand"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p1
.end method

.method public overrideImsProfileForSimMobilityUpdateOnDemand(Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;
    .locals 6

    .line 132
    sget-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v1, "overrideImsProfileForSimMobilityUpdateOnDemand"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->isSimMobilityAvailable(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 135
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->isAllowSimMobilityByImsprofile(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v1

    .line 137
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->activeSimMobility(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 140
    :goto_0
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->isAllowSimMobilityByImsprofileForRcs(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v2

    .line 142
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->activeSimMobilityForRcs(Z)V

    :cond_1
    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v2

    .line 146
    :goto_1
    invoke-virtual {p1, v2}, Lcom/sec/ims/settings/ImsProfile;->setSimMobility(Z)V

    .line 147
    invoke-virtual {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->setSimMobilityForRcs(Z)V

    if-nez v2, :cond_3

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
    :cond_3
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSimMobilityUpdate()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSimMobilityUpdate()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

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
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_4
    return-object p1

    .line 163
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string p2, "Failed to overrideImsProfileForSimMobilityUpdateOnDemand"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
