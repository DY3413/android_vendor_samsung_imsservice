.class public Lcom/sec/internal/helper/httpclient/HttpController;
.super Ljava/lang/Object;
.source "HttpController.java"


# static fields
.field public static final CAPACITY:I = 0x32

.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field public static final CONTENT_TYPE_CAB_XML:Ljava/lang/String; = "application/vnd.oma.cab-address-book+xml"

.field public static final CONTENT_TYPE_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field public static final CONTENT_TYPE_XCAP_EL_XML:Ljava/lang/String; = "application/xcap-el+xml"

.field public static final CONTENT_TYPE_XML:Ljava/lang/String; = "application/xml"

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_AUTHENTICATION_INFO:Ljava/lang/String; = "Authentication-Info"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_ID:Ljava/lang/String; = "Content-ID"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEADER_CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final HEADER_DATE:Ljava/lang/String; = "Date"

.field public static final HEADER_DEVICE_AGENT:Ljava/lang/String; = "Device-Agent"

.field public static final HEADER_ETAG:Ljava/lang/String; = "ETag"

.field public static final HEADER_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HEADER_FILE_ICON:Ljava/lang/String; = "File-Icon"

.field public static final HEADER_HOST:Ljava/lang/String; = "Host"

.field public static final HEADER_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEADER_IIDTOKEN:Ljava/lang/String; = "gmscore_instance_id_token"

.field public static final HEADER_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEADER_PROXY_AUTHORIZATION:Ljava/lang/String; = "Proxy-Authorization"

.field public static final HEADER_RANGE:Ljava/lang/String; = "Range"

.field public static final HEADER_REFERER:Ljava/lang/String; = "Referer"

.field public static final HEADER_SERVER:Ljava/lang/String; = "Server"

.field public static final HEADER_SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final HEADER_WWW_AUTHENTICATE:Ljava/lang/String; = "WWW-Authenticate"

.field public static final HEADER_X_TMUS_IMEI:Ljava/lang/String; = "X-TMUS-IMEI"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field public static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field private static final TAG:Ljava/lang/String; = "HttpController"

.field public static final VAL_3GPP_GBA:Ljava/lang/String; = "3gpp-gba"

.field private static isInitialized:Z = false

.field public static queue_sim:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/helper/CircularQueue<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile random:Ljava/util/Random;

.field private static volatile sInstance:Lcom/sec/internal/helper/httpclient/HttpController;


# instance fields
.field private final API_SIGNATURE_MAX_INT:I

.field private volatile mConnectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private mIsDebugHttps:Z

.field private volatile mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field public req:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2nqR9xLux0H2Ydbd0pZM98Kj210(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->lambda$createHostnameVerifier$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->queue_sim:Ljava/util/List;

    .line 286
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpController;

    invoke-direct {v0}, Lcom/sec/internal/helper/httpclient/HttpController;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->sInstance:Lcom/sec/internal/helper/httpclient/HttpController;

    .line 287
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->random:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x186a0

    .line 288
    iput v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->API_SIGNATURE_MAX_INT:I

    const-string v0, ""

    .line 289
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->req:Ljava/lang/String;

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mIsDebugHttps:Z

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 292
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mConnectionSpecs:Ljava/util/List;

    .line 293
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method private static configConnectionSpec()Lcom/squareup/okhttp/ConnectionSpec;
    .locals 4

    .line 303
    new-instance v0, Lcom/squareup/okhttp/ConnectionSpec$Builder;

    sget-object v1, Lcom/squareup/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/squareup/okhttp/ConnectionSpec;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;-><init>(Lcom/squareup/okhttp/ConnectionSpec;)V

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/squareup/okhttp/CipherSuite;

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 304
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->cipherSuites([Lcom/squareup/okhttp/CipherSuite;)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->build()Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v0

    return-object v0
.end method

.method private static createHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 560
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/helper/httpclient/HttpController$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method private static createSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 323
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpController$1;

    invoke-direct {v1}, Lcom/sec/internal/helper/httpclient/HttpController$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TLS"

    .line 334
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 335
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 336
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method private generateRandomString(I)Ljava/lang/String;
    .locals 0

    .line 596
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpController;->random:Ljava/util/Random;

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    .line 597
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCall(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/Call;
    .locals 1

    .line 459
    invoke-static {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    if-nez v0, :cond_0

    .line 462
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string p1, "getCall(): okhttp request build failure"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 466
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->getOkHttpClient(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object p0

    return-object p0
.end method

.method private getConnectionSpecs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mConnectionSpecs:Ljava/util/List;

    if-nez v0, :cond_1

    .line 539
    monitor-enter p0

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mConnectionSpecs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/squareup/okhttp/ConnectionSpec;

    const/4 v1, 0x0

    .line 541
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->configConnectionSpec()Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/squareup/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/squareup/okhttp/ConnectionSpec;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mConnectionSpecs:Ljava/util/List;

    .line 543
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 545
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mConnectionSpecs:Ljava/util/List;

    return-object p0
.end method

.method private getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_1

    .line 550
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    .line 552
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->createHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 554
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 556
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public static getInstance()Lcom/sec/internal/helper/httpclient/HttpController;
    .locals 1

    .line 299
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->sInstance:Lcom/sec/internal/helper/httpclient/HttpController;

    return-object v0
.end method

.method private getOkHttpClient(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 8

    .line 470
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 473
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/32 v5, 0x7fffffff

    if-ltz v1, :cond_0

    .line 474
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_0

    .line 475
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v7}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 477
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 478
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1

    .line 479
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v7}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 481
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getWriteTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 482
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getWriteTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_2

    .line 483
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getWriteTimeout()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 486
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 487
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/squareup/okhttp/OkHttpClient;

    .line 490
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 491
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 494
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getFollowRedirects()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setFollowRedirects(Z)V

    .line 495
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getRetryOnConnectionFailure()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setRetryOnConnectionFailure(Z)V

    .line 500
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://wsg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mIsDebugHttps:Z

    if-eqz v1, :cond_5

    goto :goto_0

    .line 503
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 504
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->isReuseConnection()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 505
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/HttpController;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 506
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/HttpController;->getConnectionSpecs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setConnectionSpecs(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 507
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/HttpController;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/OkHttpClient;

    goto :goto_1

    .line 509
    :cond_6
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->createSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 510
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->configConnectionSpec()Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/OkHttpClient;->setConnectionSpecs(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 511
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->createHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/OkHttpClient;

    goto :goto_1

    .line 502
    :cond_7
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->createSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseProxy()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 520
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getProxy()Ljava/net/Proxy;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/squareup/okhttp/OkHttpClient;

    :cond_9
    return-object v0

    .line 515
    :catch_0
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string p1, "Could not load keystore "

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1

    .line 528
    monitor-enter p0

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 530
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->createSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 532
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 534
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public static isIsInitialized()Z
    .locals 1

    .line 340
    sget-boolean v0, Lcom/sec/internal/helper/httpclient/HttpController;->isInitialized:Z

    return v0
.end method

.method private isValidRequestParam(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Z)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    .line 577
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 582
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p2

    if-nez p2, :cond_1

    .line 583
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string p2, "isValidRequestParam(): callback is null for async call"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 587
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 588
    sget-object p2, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidRequestParam(): invalid uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 578
    :cond_3
    :goto_0
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string p2, "isValidRequestParam(): invalid param, vail"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static synthetic lambda$createHostnameVerifier$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 5

    .line 561
    sget-object v0, Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;

    const/4 v1, 0x0

    .line 564
    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p1

    .line 565
    array-length v2, p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_1

    :try_start_1
    aget-object v4, p1, v1

    .line 566
    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p0, v4}, Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v3
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move v1, v3

    .line 570
    :catch_1
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string p1, "SSL Exception with HostNameVerify Fail"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    :cond_1
    :goto_1
    return v3
.end method

.method public static setIsInitialized(Z)V
    .locals 0

    .line 344
    sput-boolean p0, Lcom/sec/internal/helper/httpclient/HttpController;->isInitialized:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 7

    const/4 v0, 0x1

    .line 360
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->isValidRequestParam(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->getCall(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    if-nez v0, :cond_1

    .line 366
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "okhttp fail to create call"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void

    .line 370
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->isIsInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpController;->initializeQueue_sim()V

    :cond_2
    const v1, 0x186a0

    .line 374
    invoke-direct {p0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->generateRandomString(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v2, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Timestamp;-><init>(J)V

    .line 378
    invoke-virtual {v2}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/HttpController;->req:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  HttpRequestParams "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [    "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   nUrl: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   bUrl: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getBsfUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpController;->req:Ljava/lang/String;

    .line 382
    :try_start_0
    new-instance v2, Lcom/sec/internal/helper/httpclient/HttpController$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/sec/internal/helper/httpclient/HttpController$2;-><init>(Lcom/sec/internal/helper/httpclient/HttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 421
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 422
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "okhttp malformed response"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public initializeQueue_sim()V
    .locals 3

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    .line 349
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->queue_sim:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/cmstore/helper/CircularQueue;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/helper/CircularQueue;-><init>(I)V

    invoke-interface {v0, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 352
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpController;->setIsInitialized(Z)V

    return-void
.end method

.method public setDebugHttps(Z)V
    .locals 0

    .line 356
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/HttpController;->mIsDebugHttps:Z

    return-void
.end method

.method public syncExecute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .locals 5

    const/4 v0, 0x0

    .line 427
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->isValidRequestParam(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 431
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->getCall(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const v2, 0x186a0

    .line 436
    invoke-direct {p0, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->generateRandomString(I)Ljava/lang/String;

    move-result-object p0

    .line 437
    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :try_start_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 443
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, v1

    :goto_0
    const-string v0, "HTTP response: "

    if-eqz p1, :cond_2

    .line 448
    invoke-static {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->buildResponse(Lcom/squareup/okhttp/Response;)Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    move-result-object p1

    .line 450
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 453
    :cond_2
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " null"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
