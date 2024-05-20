.class public Lcom/squareup/okhttp/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private authenticator:Lcom/squareup/okhttp/Authenticator;

.field private certificatePinner:Lcom/squareup/okhttp/CertificatePinner;

.field private connectTimeout:I

.field private connectionPool:Lcom/squareup/okhttp/ConnectionPool;

.field private connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private cookieHandler:Ljava/net/CookieHandler;

.field private dispatcher:Lcom/squareup/okhttp/Dispatcher;

.field private dns:Lcom/squareup/okhttp/Dns;

.field private followRedirects:Z

.field private followSslRedirects:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private internalCache:Lcom/squareup/okhttp/internal/InternalCache;

.field private final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Ljava/net/Proxy;

.field private proxySelector:Ljava/net/ProxySelector;

.field private readTimeout:I

.field private retryOnConnectionFailure:Z

.field private final routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

.field private socketFactory:Ljavax/net/SocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/squareup/okhttp/Protocol;

    .line 54
    sget-object v2, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/squareup/okhttp/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    new-array v0, v0, [Lcom/squareup/okhttp/ConnectionSpec;

    .line 57
    sget-object v1, Lcom/squareup/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/squareup/okhttp/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/ConnectionSpec;->COMPATIBLE_TLS:Lcom/squareup/okhttp/ConnectionSpec;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/squareup/okhttp/ConnectionSpec;

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 142
    iput-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->followRedirects:Z

    .line 143
    iput-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    const/16 v0, 0x2710

    .line 144
    iput v0, p0, Lcom/squareup/okhttp/OkHttpClient;->connectTimeout:I

    .line 145
    iput v0, p0, Lcom/squareup/okhttp/OkHttpClient;->readTimeout:I

    .line 146
    iput v0, p0, Lcom/squareup/okhttp/OkHttpClient;->writeTimeout:I

    .line 149
    new-instance v0, Lcom/squareup/okhttp/internal/RouteDatabase;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/RouteDatabase;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

    .line 150
    new-instance v0, Lcom/squareup/okhttp/Dispatcher;

    invoke-direct {v0}, Lcom/squareup/okhttp/Dispatcher;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    const/4 v2, 0x1

    .line 141
    iput-boolean v2, p0, Lcom/squareup/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 142
    iput-boolean v2, p0, Lcom/squareup/okhttp/OkHttpClient;->followRedirects:Z

    .line 143
    iput-boolean v2, p0, Lcom/squareup/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    const/16 v2, 0x2710

    .line 144
    iput v2, p0, Lcom/squareup/okhttp/OkHttpClient;->connectTimeout:I

    .line 145
    iput v2, p0, Lcom/squareup/okhttp/OkHttpClient;->readTimeout:I

    .line 146
    iput v2, p0, Lcom/squareup/okhttp/OkHttpClient;->writeTimeout:I

    .line 154
    iget-object v2, p1, Lcom/squareup/okhttp/OkHttpClient;->routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

    iput-object v2, p0, Lcom/squareup/okhttp/OkHttpClient;->routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

    .line 155
    iget-object v2, p1, Lcom/squareup/okhttp/OkHttpClient;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    iput-object v2, p0, Lcom/squareup/okhttp/OkHttpClient;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    .line 156
    iget-object v2, p1, Lcom/squareup/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v2, p0, Lcom/squareup/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 157
    iget-object v2, p1, Lcom/squareup/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v2, p0, Lcom/squareup/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 158
    iget-object v2, p1, Lcom/squareup/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v2, p0, Lcom/squareup/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 159
    iget-object v2, p1, Lcom/squareup/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 162
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 164
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->internalCache:Lcom/squareup/okhttp/internal/InternalCache;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->internalCache:Lcom/squareup/okhttp/internal/InternalCache;

    .line 165
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 166
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 167
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 168
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->certificatePinner:Lcom/squareup/okhttp/CertificatePinner;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->certificatePinner:Lcom/squareup/okhttp/CertificatePinner;

    .line 169
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->authenticator:Lcom/squareup/okhttp/Authenticator;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->authenticator:Lcom/squareup/okhttp/Authenticator;

    .line 170
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    .line 171
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->dns:Lcom/squareup/okhttp/Dns;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->dns:Lcom/squareup/okhttp/Dns;

    .line 172
    iget-boolean v0, p1, Lcom/squareup/okhttp/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 173
    iget-boolean v0, p1, Lcom/squareup/okhttp/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->followRedirects:Z

    .line 174
    iget-boolean v0, p1, Lcom/squareup/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    .line 175
    iget v0, p1, Lcom/squareup/okhttp/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lcom/squareup/okhttp/OkHttpClient;->connectTimeout:I

    .line 176
    iget v0, p1, Lcom/squareup/okhttp/OkHttpClient;->readTimeout:I

    iput v0, p0, Lcom/squareup/okhttp/OkHttpClient;->readTimeout:I

    .line 177
    iget p1, p1, Lcom/squareup/okhttp/OkHttpClient;->writeTimeout:I

    iput p1, p0, Lcom/squareup/okhttp/OkHttpClient;->writeTimeout:I

    return-void
.end method

.method private declared-synchronized getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    monitor-enter p0

    .line 629
    :try_start_0
    sget-object v0, Lcom/squareup/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "TLS"

    .line 631
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 632
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 633
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 635
    :catch_0
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 638
    :cond_0
    :goto_0
    sget-object v0, Lcom/squareup/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clone()Lcom/squareup/okhttp/OkHttpClient;
    .locals 1

    .line 643
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/OkHttpClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->clone()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method copyWithDefaults()Lcom/squareup/okhttp/OkHttpClient;
    .locals 2

    .line 580
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/OkHttpClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 581
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    .line 582
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 584
    :cond_0
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    .line 585
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 587
    :cond_1
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    .line 588
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 590
    :cond_2
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    .line 591
    invoke-direct {p0}, Lcom/squareup/okhttp/OkHttpClient;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 593
    :cond_3
    iget-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez p0, :cond_4

    .line 594
    sget-object p0, Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 596
    :cond_4
    iget-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->certificatePinner:Lcom/squareup/okhttp/CertificatePinner;

    if-nez p0, :cond_5

    .line 597
    sget-object p0, Lcom/squareup/okhttp/CertificatePinner;->DEFAULT:Lcom/squareup/okhttp/CertificatePinner;

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->certificatePinner:Lcom/squareup/okhttp/CertificatePinner;

    .line 599
    :cond_5
    iget-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->authenticator:Lcom/squareup/okhttp/Authenticator;

    if-nez p0, :cond_6

    .line 600
    sget-object p0, Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;->INSTANCE:Lcom/squareup/okhttp/Authenticator;

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->authenticator:Lcom/squareup/okhttp/Authenticator;

    .line 602
    :cond_6
    iget-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    if-nez p0, :cond_7

    .line 603
    invoke-static {}, Lcom/squareup/okhttp/ConnectionPool;->getDefault()Lcom/squareup/okhttp/ConnectionPool;

    move-result-object p0

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    .line 605
    :cond_7
    iget-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    if-nez p0, :cond_8

    .line 606
    sget-object p0, Lcom/squareup/okhttp/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 608
    :cond_8
    iget-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    if-nez p0, :cond_9

    .line 609
    sget-object p0, Lcom/squareup/okhttp/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 611
    :cond_9
    iget-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->dns:Lcom/squareup/okhttp/Dns;

    if-nez p0, :cond_a

    .line 612
    sget-object p0, Lcom/squareup/okhttp/Dns;->SYSTEM:Lcom/squareup/okhttp/Dns;

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->dns:Lcom/squareup/okhttp/Dns;

    :cond_a
    return-object v0
.end method

.method public getAuthenticator()Lcom/squareup/okhttp/Authenticator;
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->authenticator:Lcom/squareup/okhttp/Authenticator;

    return-object p0
.end method

.method public getCertificatePinner()Lcom/squareup/okhttp/CertificatePinner;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->certificatePinner:Lcom/squareup/okhttp/CertificatePinner;

    return-object p0
.end method

.method public getConnectTimeout()I
    .locals 0

    .line 197
    iget p0, p0, Lcom/squareup/okhttp/OkHttpClient;->connectTimeout:I

    return p0
.end method

.method public getConnectionPool()Lcom/squareup/okhttp/ConnectionPool;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    return-object p0
.end method

.method public getConnectionSpecs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 538
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object p0
.end method

.method public getCookieHandler()Ljava/net/CookieHandler;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    return-object p0
.end method

.method public getDispatcher()Lcom/squareup/okhttp/Dispatcher;
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    return-object p0
.end method

.method public getDns()Lcom/squareup/okhttp/Dns;
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->dns:Lcom/squareup/okhttp/Dns;

    return-object p0
.end method

.method public getFollowRedirects()Z
    .locals 0

    .line 436
    iget-boolean p0, p0, Lcom/squareup/okhttp/OkHttpClient;->followRedirects:Z

    return p0
.end method

.method public getFollowSslRedirects()Z
    .locals 0

    .line 427
    iget-boolean p0, p0, Lcom/squareup/okhttp/OkHttpClient;->followSslRedirects:Z

    return p0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public getProtocols()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    return-object p0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public getReadTimeout()I
    .locals 0

    .line 217
    iget p0, p0, Lcom/squareup/okhttp/OkHttpClient;->readTimeout:I

    return p0
.end method

.method public getRetryOnConnectionFailure()Z
    .locals 0

    .line 462
    iget-boolean p0, p0, Lcom/squareup/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    return p0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public getWriteTimeout()I
    .locals 0

    .line 235
    iget p0, p0, Lcom/squareup/okhttp/OkHttpClient;->writeTimeout:I

    return p0
.end method

.method public interceptors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    .line 547
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    return-object p0
.end method

.method internalCache()Lcom/squareup/okhttp/internal/InternalCache;
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->internalCache:Lcom/squareup/okhttp/internal/InternalCache;

    return-object p0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    .line 556
    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object p0
.end method

.method public newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;
    .locals 1

    .line 563
    new-instance v0, Lcom/squareup/okhttp/Call;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/Call;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V

    return-object v0
.end method

.method public setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_3

    .line 189
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_2

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too small."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    long-to-int p1, p1

    .line 192
    iput p1, p0, Lcom/squareup/okhttp/OkHttpClient;->connectTimeout:I

    return-void

    .line 190
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too large."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "timeout < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConnectionSpecs(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;)",
            "Lcom/squareup/okhttp/OkHttpClient;"
        }
    .end annotation

    .line 533
    invoke-static {p1}, Lcom/squareup/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object p0
.end method

.method public setDns(Lcom/squareup/okhttp/Dns;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->dns:Lcom/squareup/okhttp/Dns;

    return-object p0
.end method

.method public setFollowRedirects(Z)V
    .locals 0

    .line 432
    iput-boolean p1, p0, Lcom/squareup/okhttp/OkHttpClient;->followRedirects:Z

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public setReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_3

    .line 209
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_2

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too small."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    long-to-int p1, p1

    .line 212
    iput p1, p0, Lcom/squareup/okhttp/OkHttpClient;->readTimeout:I

    return-void

    .line 210
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too large."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 208
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "timeout < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRetryOnConnectionFailure(Z)V
    .locals 0

    .line 458
    iput-boolean p1, p0, Lcom/squareup/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_3

    .line 227
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_2

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too small."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    long-to-int p1, p1

    .line 230
    iput p1, p0, Lcom/squareup/okhttp/OkHttpClient;->writeTimeout:I

    return-void

    .line 228
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too large."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 226
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 225
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "timeout < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
