.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;
.super Ljava/lang/Object;
.source "PresenceUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PresenceUtil"

.field private static final mPublishResponseCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSubscribeResponseCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mPublishResponseCallback:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mSubscribeResponseCallback:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addPublishResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .locals 4

    .line 243
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mPublishResponseCallback:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "PresenceUtil"

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPublishResponseCallback: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "addPublishResponseCallback: already exist"

    .line 247
    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static addSubscribeResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)I
    .locals 5

    if-eqz p1, :cond_1

    .line 308
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 309
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 311
    sget-object v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mSubscribeResponseCallback:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "PresenceUtil"

    if-nez v3, :cond_0

    .line 312
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addSubscribeResponseCallback : internalRequestId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSubscribeResponseCallback : have same internalRequestId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->addSubscribeResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static calListSubscribeExponentialBackOffRetryTime(II)J
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [J

    .line 185
    fill-array-data v1, :array_0

    if-gt p1, v0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 192
    aget-wide p0, v1, p1

    return-wide p0

    .line 189
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calListSubscribeExponentialBackOffRetryTime: invaild retryCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PresenceUtil"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0

    nop

    :array_0
    .array-data 8
        0x708
        0xe10
        0x1c20
        0x3840
        0x7080
    .end array-data
.end method

.method public static calPublishExpBackOffRetryTimeUnlimit(II)J
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [J

    .line 159
    fill-array-data v1, :array_0

    if-gtz p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calPublishExponentialBackOffRetryTime: invaild retryCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PresenceUtil"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    if-le p1, v0, :cond_1

    const/4 p0, 0x4

    aget-wide p0, v1, p0

    return-wide p0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 168
    aget-wide p0, v1, p1

    return-wide p0

    :array_0
    .array-data 8
        0x78
        0xf0
        0x1e0
        0x3c0
        0xe10
    .end array-data
.end method

.method private static calPublishExponentialBackOffRetryTime(II)J
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [J

    .line 148
    fill-array-data v1, :array_0

    if-gt p1, v0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 155
    aget-wide p0, v1, p1

    return-wide p0

    .line 152
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calPublishExponentialBackOffRetryTime: invaild retryCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PresenceUtil"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0

    nop

    :array_0
    .array-data 8
        0x3c
        0x78
        0xf0
        0x1e0
    .end array-data
.end method

.method private static calSubscribeExponentialBackOffRetryTime(II)J
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [J

    .line 173
    fill-array-data v1, :array_0

    if-gt p1, v0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 180
    aget-wide p0, v1, p1

    return-wide p0

    .line 177
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calSubscribeExponentialBackOffRetryTime: invaild retryCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PresenceUtil"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0

    nop

    :array_0
    .array-data 8
        0x3c
        0x78
        0xf0
        0x1e0
    .end array-data
.end method

.method static convertUriType(Lcom/sec/ims/util/ImsUri;ZLcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/util/UriGenerator;I)Lcom/sec/ims/util/ImsUri;
    .locals 0

    if-nez p2, :cond_1

    :cond_0
    move-object p2, p0

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 82
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    :goto_0
    if-eqz p1, :cond_3

    .line 89
    invoke-virtual {p4, p0}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    .line 92
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "convertUriType: requested uri = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PresenceUtil"

    invoke-static {p1, p5, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object p2
.end method

.method static getExtendedPublishTimerCond(ILjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;)Z"
        }
    .end annotation

    .line 142
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getPolicyType()Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->isOneOf([Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->isExtendedPublishTimerCond(ILjava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v3, v4

    :cond_0
    return v3
.end method

.method static getListSubscribeExpBackOffRetryTime(II)J
    .locals 4

    .line 137
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getPolicyType()Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->isOneOf([Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->calListSubscribeExponentialBackOffRetryTime(II)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method static getPollListSubExp(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, 0x1e

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "omadm/./3GPP_IMS/POLL_LIST_SUB_EXP"

    invoke-static {p0, v1, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static getPublishExpBackOffRetryTime(II)J
    .locals 6

    .line 123
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getPolicyType()Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    sget-object v3, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->isOneOf([Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->calPublishExponentialBackOffRetryTime(II)J

    move-result-wide p0

    return-wide p0

    .line 125
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getPolicyType()Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v0

    new-array v1, v1, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SEC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->KT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->isOneOf([Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->calPublishExpBackOffRetryTimeUnlimit(II)J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method static getPublishResponseCallback(I)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;
    .locals 1

    .line 252
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mPublishResponseCallback:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    return-object p0
.end method

.method static getSubscribeExpBackOffRetryTime(II)J
    .locals 4

    .line 132
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getPolicyType()Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->isOneOf([Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->calSubscribeExponentialBackOffRetryTime(II)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method private static getSubscribeResponseCallback(Ljava/lang/String;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubscribeResponseCallback : subscriptionId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceUtil"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mSubscribeResponseCallback:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    return-object p0
.end method

.method private static isExtendedPublishTimerCond(ILjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;)Z"
        }
    .end annotation

    .line 200
    invoke-static {p1}, Lcom/sec/ims/presence/ServiceTuple;->getFeatures(Ljava/util/List;)J

    move-result-wide v0

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExtendedPublishTimerCond: services: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PresenceUtil"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long p0, p0

    and-long/2addr p0, v0

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-nez p0, :cond_0

    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long p0, p0

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_0

    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long p0, p0

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isRegProhibited(Lcom/sec/ims/ImsRegistration;I)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 109
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationList()Ljava/util/Map;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/ims/ImsRegistration;->setProhibited(Z)V

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRegProhibited: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PresenceUtil"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static notifyPublishCommandError(ILandroid/content/Context;I)V
    .locals 2

    .line 256
    invoke-static {p1, p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyPublishCommandError: code = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PresenceUtil"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    :try_start_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mPublishResponseCallback:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    invoke-interface {v1, p2}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;->onCommandError(I)V

    .line 264
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 267
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPublishCommandError: failed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static notifyPublishNetworkResponse(ILandroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 272
    invoke-static {p1, p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyPublishNetworkResponse: sipCode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", reason = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PresenceUtil"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 278
    :try_start_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mPublishResponseCallback:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    invoke-interface {v1, p2, p3}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;->onNetworkResponse(ILjava/lang/String;)V

    .line 280
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 283
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyPublishNetworkResponse: failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static notifyPublishNetworkResponse(ILandroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 289
    invoke-static {p1, p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 293
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyPublishNetworkResponse: sipCode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", reasonPhrase = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reasonHeaderCause = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", reasonHeaderText = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PresenceUtil"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    :try_start_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mPublishResponseCallback:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    invoke-interface {v1, p2, p3, p4, p5}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;->onNetworkResponse(ILjava/lang/String;ILjava/lang/String;)V

    .line 298
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 301
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyPublishNetworkResponse: failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onSubscribeCommandError(Ljava/lang/String;Landroid/content/Context;II)V
    .locals 0

    .line 348
    invoke-static {p1, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 351
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSubscribeCommandError "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PresenceUtil"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mSubscribeResponseCallback:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    if-eqz p0, :cond_1

    .line 355
    :try_start_0
    invoke-interface {p0, p3}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onCommandError(I)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 357
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onSubscribeNetworkResponse(Ljava/lang/String;Landroid/content/Context;IILjava/lang/String;)V
    .locals 0

    .line 363
    invoke-static {p1, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 366
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSubscribeNetworkResponse : sipCode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", reason : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", subscriptionId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PresenceUtil"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    sget-object p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mSubscribeResponseCallback:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    if-eqz p0, :cond_1

    .line 370
    :try_start_0
    invoke-interface {p0, p3, p4}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onNetworkResponse(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 372
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onSubscribeNetworkResponse(Ljava/lang/String;Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 379
    invoke-static {p1, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 382
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSubscribeNetworkResponse : sipCode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", reason : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", subscriptionId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PresenceUtil"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    sget-object p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mSubscribeResponseCallback:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    if-eqz p0, :cond_1

    .line 386
    :try_start_0
    invoke-interface {p0, p3, p4, p5, p6}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onNetworkResponse(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 388
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onSubscribeNotifyCapabilitiesUpdate(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 394
    invoke-static {p1, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 397
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSubscribeNotifyCapabilitiesUpdate, subscriptionId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PresenceUtil"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    sget-object p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mSubscribeResponseCallback:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    if-eqz p0, :cond_1

    .line 401
    :try_start_0
    invoke-interface {p0, p3}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onNotifyCapabilitiesUpdate(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 403
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onSubscribeResourceTerminated(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 410
    invoke-static {p1, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 413
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSubscribeResourceTerminated, subscriptionId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PresenceUtil"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mSubscribeResponseCallback:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    if-eqz p0, :cond_1

    .line 417
    :try_start_0
    invoke-interface {p0, p3}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onResourceTerminated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 419
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onSubscribeTerminated(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;J)V
    .locals 0

    .line 425
    invoke-static {p1, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 428
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSubscribeTerminated reason : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", retryAfterMilliseconds : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", subscriptionId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PresenceUtil"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mSubscribeResponseCallback:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    if-eqz p0, :cond_1

    .line 433
    :try_start_0
    invoke-interface {p0, p3, p4, p5}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onTerminated(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 435
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static removeSubscribeResponseCallback(Ljava/lang/String;)V
    .locals 4

    .line 339
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mSubscribeResponseCallback:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "PresenceUtil"

    if-eqz v1, :cond_0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSubscribeResponseCallback subscriptionId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeSubscribeResponseCallback there is no callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static replaceSubscribeResponseCbSubsId(ILjava/lang/String;)V
    .locals 3

    .line 329
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceSubscribeResponseCbSubsId : internalRequestId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", subscriptionId : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PresenceUtil"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->mSubscribeResponseCallback:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 333
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static sendRCSPPubInfoToHQM(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 2

    if-gez p3, :cond_0

    const/4 p3, 0x0

    .line 218
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 219
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ERRC"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ERES"

    .line 220
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "RCSP"

    .line 221
    invoke-static {p3, p0, p1, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method static sendRCSPSubInfoToHQM(Landroid/content/Context;II)V
    .locals 2

    const/16 v0, 0x193

    if-eq p1, v0, :cond_2

    const/16 v0, 0x194

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 237
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 238
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SERR"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "RCSP"

    .line 239
    invoke-static {p2, p0, p1, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static translateToCapExResult(Lcom/sec/ims/presence/PresenceInfo;JLcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p4, :cond_0

    .line 56
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    .line 57
    invoke-virtual {p4, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 58
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    goto :goto_0

    .line 60
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->POLLING_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    goto :goto_0

    .line 63
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_AT_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-ne p3, p0, :cond_2

    .line 64
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 65
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v0, p0

    invoke-static {p1, p2, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 66
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    .line 67
    sget-wide p3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 68
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    goto :goto_0

    .line 70
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    :goto_0
    return-object p0
.end method

.method static triggerOmadmTreeSync(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "PresenceUtil"

    const-string/jumbo v1, "triggerOmadmTreeSync:"

    .line 101
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.sdm.START_DM_SYNC_SESSION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.sdm"

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
