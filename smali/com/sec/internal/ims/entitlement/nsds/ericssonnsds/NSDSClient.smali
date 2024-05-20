.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;
.super Ljava/lang/Object;
.source "NSDSClient.java"


# static fields
.field private static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final HEADER_X_GENERIC_PROTOCOL_VERSION:Ljava/lang/String; = "x-generic-protocol-version"

.field private static final LOG_TAG:Ljava/lang/String; = "NSDSClient"

.field private static final X_GEN_PTC_VER:Ljava/lang/String; = "1.0"

.field private static sNSDSHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sResponseLooper:Landroid/os/Looper;


# instance fields
.field private mAreacode:Ljava/lang/Integer;

.field private mClientversion:Ljava/lang/String;

.field private mConfigversion:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDns:Lcom/squareup/okhttp/Dns;

.field private mMsisdn:Ljava/lang/String;

.field private mRequestUrl:Ljava/lang/String;

.field private mResponseHandler:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mSocketFactory:Ljavax/net/SocketFactory;

.field private mTriggercode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    .line 68
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->initNsdsCommonHeaders()V

    .line 69
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->initNsdsResponseLooper()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mRequestUrl:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mMsisdn:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mClientversion:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mConfigversion:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mDns:Lcom/squareup/okhttp/Dns;

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 87
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 89
    new-instance p2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sResponseLooper:Landroid/os/Looper;

    invoke-direct {p2, v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mResponseHandler:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

    return-void
.end method

.method private buildJSONArrayFromRequests([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;)Lorg/json/JSONArray;
    .locals 3

    .line 227
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    const/4 v0, 0x0

    .line 230
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :try_start_1
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buildJSONArrayFromRequests:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 233
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not buld JSONArrayRequests:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method private buildMessageIdMethodBundle([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;)Landroid/os/Bundle;
    .locals 4

    .line 174
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 175
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 176
    iget v3, v2, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->messageId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->method:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private buildNSDSRequestHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildNSDSRequestHeaders: version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 199
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v0, "x-generic-protocol-version"

    .line 200
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private buildNSDSRequestHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildNSDSRequestHeaders: version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " imei "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userAgent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 208
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v0, "x-generic-protocol-version"

    .line 209
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p1, "device_id"

    .line 211
    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "User-Agent"

    .line 214
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method private getDeviceType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getEntitlementServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mRequestUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 184
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p0

    .line 183
    invoke-static {v0, p0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->getMnoStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object p0

    if-nez p0, :cond_0

    .line 187
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getEntitlementServerUrl: mnoStrategy is null"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getEntitlementServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mRequestUrl:Ljava/lang/String;

    return-object p0
.end method

.method private static initNsdsCommonHeaders()V
    .locals 4

    .line 73
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    const-string v1, "Content-Encoding"

    const-string v3, "gzip"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    const-string v1, "Accept"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    const-string/jumbo v1, "x-generic-protocol-version"

    const-string v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initNsdsResponseLooper()V
    .locals 2

    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 83
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sResponseLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public buildAuthenticationRequest(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;
    .locals 1

    .line 253
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;-><init>()V

    .line 254
    iput p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->messageId:I

    const-string p1, "3gppAuthentication"

    .line 255
    iput-object p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->method:Ljava/lang/String;

    .line 256
    iput-object p7, v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->deviceId:Ljava/lang/String;

    .line 257
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->getDeviceType()I

    move-result p1

    iput p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->deviceType:I

    const/4 p1, 0x0

    .line 258
    iput p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->osType:I

    .line 259
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 260
    iput-object p5, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->deviceName:Ljava/lang/String;

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->deviceName:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    .line 265
    iput-object p6, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->imsiEap:Ljava/lang/String;

    .line 266
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "buildAuthenticationRequest getimsi: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->imsiEap:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "buildAuthenticationRequest imsi: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->imsiEap:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iput-object p4, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->akaToken:Ljava/lang/String;

    .line 270
    iput-object p3, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->akaChallengeRsp:Ljava/lang/String;

    return-object v0
.end method

.method public buildGetMSISDNRequest(ILjava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestGetMSISDN;
    .locals 0

    .line 314
    new-instance p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestGetMSISDN;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/entitilement/data/RequestGetMSISDN;-><init>()V

    .line 315
    iput p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->messageId:I

    const-string p1, "getMSISDN"

    .line 316
    iput-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->method:Ljava/lang/String;

    .line 317
    iput-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public buildManageConnectivityRequest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;
    .locals 1

    .line 277
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;-><init>()V

    .line 278
    iput p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->messageId:I

    const-string p1, "manageConnectivity"

    .line 279
    iput-object p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->method:Ljava/lang/String;

    .line 280
    iput-object p7, v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->deviceId:Ljava/lang/String;

    .line 281
    iput p2, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;->operation:I

    .line 282
    iput-object p3, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;->vimsi:Ljava/lang/String;

    .line 283
    iput-object p4, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;->remoteDeviceId:Ljava/lang/String;

    .line 284
    iput-object p5, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;->deviceGroup:Ljava/lang/String;

    .line 285
    iput-object p6, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;->csr:Ljava/lang/String;

    .line 287
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mClientversion:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 289
    new-instance p1, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity$DeviceParameter;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity$DeviceParameter;-><init>()V

    iput-object p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;->deviceParameterInfo:Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity$DeviceParameter;

    .line 290
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mMsisdn:Ljava/lang/String;

    iput-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity$DeviceParameter;->msisdn:Ljava/lang/String;

    .line 291
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mClientversion:Ljava/lang/String;

    iput-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity$DeviceParameter;->clientversion:Ljava/lang/String;

    .line 292
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mConfigversion:Ljava/lang/String;

    iput-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity$DeviceParameter;->configversion:Ljava/lang/String;

    .line 293
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mTriggercode:Ljava/lang/Integer;

    iput-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity$DeviceParameter;->triggercode:Ljava/lang/Integer;

    .line 294
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mAreacode:Ljava/lang/Integer;

    iput-object p0, p1, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity$DeviceParameter;->areacode:Ljava/lang/Integer;

    :cond_0
    return-object v0
.end method

.method public buildManageLocationAndTCRequest(ILjava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestManageLocationAndTC;
    .locals 0

    .line 336
    new-instance p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageLocationAndTC;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageLocationAndTC;-><init>()V

    .line 337
    iput p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->messageId:I

    const-string p1, "manageLocationAndTC"

    .line 338
    iput-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->method:Ljava/lang/String;

    .line 339
    iput-object p3, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->deviceId:Ljava/lang/String;

    .line 340
    iput-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageLocationAndTC;->serviceFingerprint:Ljava/lang/String;

    return-object p0
.end method

.method public buildManagePushTokenRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;
    .locals 0

    .line 301
    new-instance p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;-><init>()V

    .line 302
    iput p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->messageId:I

    const-string p1, "managePushToken"

    .line 303
    iput-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->method:Ljava/lang/String;

    .line 304
    iput-object p7, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->deviceId:Ljava/lang/String;

    .line 305
    iput-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;->msisdn:Ljava/lang/String;

    .line 306
    iput-object p3, p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;->serviceName:Ljava/lang/String;

    .line 307
    iput-object p4, p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;->clientId:Ljava/lang/String;

    .line 308
    iput p5, p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;->operation:I

    .line 309
    iput-object p6, p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;->pushToken:Ljava/lang/String;

    return-object p0
.end method

.method public buildRegisteredMSISDNRequest(ILjava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;
    .locals 0

    .line 323
    new-instance p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;-><init>()V

    .line 324
    iput p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->messageId:I

    const-string p1, "registeredMSISDN"

    .line 325
    iput-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->method:Ljava/lang/String;

    .line 326
    iput-object p5, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->deviceId:Ljava/lang/String;

    .line 327
    iput p3, p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;->operation:I

    .line 328
    iput-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;->serviceName:Ljava/lang/String;

    .line 330
    iput-object p4, p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;->isAvailable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public buildServiceEntitlementStatusRequest(ILjava/util/ArrayList;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;"
        }
    .end annotation

    .line 346
    new-instance p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;-><init>()V

    .line 347
    iput p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->messageId:I

    const-string p1, "serviceEntitlementStatus"

    .line 348
    iput-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->method:Ljava/lang/String;

    .line 349
    iput-object p3, p0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->deviceId:Ljava/lang/String;

    .line 350
    iput-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;->serviceList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public executeRequestCollection([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 123
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildJSONArrayFromRequests([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildMessageIdMethodBundle([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;)Landroid/os/Bundle;

    move-result-object p1

    .line 128
    new-instance v0, Lcom/sec/internal/ims/entitlement/util/HttpHelper;

    invoke-direct {v0}, Lcom/sec/internal/ims/entitlement/util/HttpHelper;-><init>()V

    .line 129
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildNSDSRequestHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 130
    invoke-direct {p0, p4, p5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->getEntitlementServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mResponseHandler:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

    .line 131
    invoke-virtual {p3, p2, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->obtainParseResponseMessage(Landroid/os/Message;Landroid/os/Bundle;)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mSocketFactory:Ljavax/net/SocketFactory;

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mDns:Lcom/squareup/okhttp/Dns;

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->executeNSDSRequest(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONArray;Landroid/os/Message;Ljavax/net/SocketFactory;Lcom/squareup/okhttp/Dns;)V

    goto :goto_0

    .line 133
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    const-string p1, "executeRequestCollection: requestJsonArray is null"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 134
    iput-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public executeRequestCollection([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 157
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildJSONArrayFromRequests([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildMessageIdMethodBundle([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;)Landroid/os/Bundle;

    move-result-object p1

    .line 162
    new-instance v1, Lcom/sec/internal/ims/entitlement/util/HttpHelper;

    invoke-direct {v1}, Lcom/sec/internal/ims/entitlement/util/HttpHelper;-><init>()V

    .line 163
    invoke-direct {p0, p3, p4, p5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildNSDSRequestHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    .line 164
    invoke-direct {p0, p7, p6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->getEntitlementServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mResponseHandler:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

    .line 165
    invoke-virtual {p5, p2, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->obtainParseResponseMessage(Landroid/os/Message;Landroid/os/Bundle;)Landroid/os/Message;

    move-result-object p5

    iget-object p6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mSocketFactory:Ljavax/net/SocketFactory;

    iget-object p7, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mDns:Lcom/squareup/okhttp/Dns;

    move-object p0, v1

    move-object p1, p4

    move-object p2, p3

    move-object p3, v0

    move-object p4, p5

    move-object p5, p6

    move-object p6, p7

    .line 164
    invoke-virtual/range {p0 .. p6}, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->executeNSDSRequest(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONArray;Landroid/os/Message;Ljavax/net/SocketFactory;Lcom/squareup/okhttp/Dns;)V

    goto :goto_0

    .line 167
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    const-string p1, "executeRequestCollection: requestJsonArray is null"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 168
    iput-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/util/DeviceNameHelper;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResponseHandler()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mResponseHandler:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

    return-object p0
.end method

.method public setDeviceParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mMsisdn:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mMsisdn:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 360
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mClientversion:Ljava/lang/String;

    :goto_1
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mClientversion:Ljava/lang/String;

    if-eqz p3, :cond_2

    goto :goto_2

    .line 361
    :cond_2
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mConfigversion:Ljava/lang/String;

    :goto_2
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mConfigversion:Ljava/lang/String;

    const/4 p1, -0x1

    if-le p5, p1, :cond_3

    goto :goto_3

    .line 362
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mTriggercode:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p5

    :goto_3
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mTriggercode:Ljava/lang/Integer;

    .line 363
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mAreacode:Ljava/lang/Integer;

    return-void
.end method

.method public setNetwork(Lcom/squareup/okhttp/Dns;Ljavax/net/SocketFactory;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mDns:Lcom/squareup/okhttp/Dns;

    .line 368
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mSocketFactory:Ljavax/net/SocketFactory;

    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mRequestUrl:Ljava/lang/String;

    return-void
.end method
