.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter;
.source "HttpAdapterChn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$IdleState;,
        Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$miTM;,
        Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$ReadyState;
    }
.end annotation


# static fields
.field private static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field protected static final LOG_TAG:Ljava/lang/String; = "HttpAdapterChn"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    .line 35
    new-instance p1, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$IdleState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    return-void
.end method


# virtual methods
.method protected getResStatusCode(Ljava/net/HttpURLConnection;)I
    .registers 5

    const/4 v0, 0x0

    .line 126
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_6
    .catchall {:try_start_1 .. :try_end_5} :catchall_13

    return p0

    :catch_6
    move-exception p1

    .line 128
    :try_start_7
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "fail to read status code"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_13

    :catchall_13
    return v0
.end method

.method protected setHttpUrlConnection()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-super {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setHttpUrlConnection()V

    .line 111
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method protected setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2

    .line 104
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 105
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    sget-object p1, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method protected setSocketFactory()V
    .registers 6

    :try_start_0
    const-string v0, "TLS"

    .line 89
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    .line 91
    new-instance v2, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$miTM;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$miTM;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$miTM-IA;)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 93
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 94
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v3, "get socketFactory for HTTPS"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_26} :catch_2a
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_26} :catch_2a

    .line 99
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void

    :catch_2a
    move-exception p0

    .line 97
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
