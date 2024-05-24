.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter;
.source "HttpAdapterVzw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$IdleState;,
        Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "HttpAdapterVzw"

.field protected static mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    .line 38
    new-instance p1, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$IdleState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    return-void
.end method


# virtual methods
.method protected getContentLengthBody([BLjava/net/HttpURLConnection;I)[B
    .registers 10

    .line 118
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_11

    const-string v1, "gzip"

    .line 119
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    move v1, v0

    .line 120
    :goto_12
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " isNeededGZIPInputStream: "

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, v3, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v1, :cond_3e

    .line 121
    :try_start_34
    new-instance p3, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_47

    :cond_3e
    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_47} :catch_a5

    .line 122
    :goto_47
    :try_start_47
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_9b

    :try_start_4c
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_91

    .line 125
    :try_start_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    :goto_56
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 129
    :cond_60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-array p1, v3, [B

    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v3, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7d
    .catchall {:try_start_51 .. :try_end_7d} :catchall_87

    .line 131
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_91

    :try_start_80
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_9b

    :try_start_83
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_a5

    goto :goto_b2

    :catchall_87
    move-exception v0

    .line 121
    :try_start_88
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_90

    :catchall_8c
    move-exception v1

    :try_start_8d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_90
    throw v0
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_91

    :catchall_91
    move-exception v0

    :try_start_92
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_9a

    :catchall_96
    move-exception p2

    :try_start_97
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9a
    throw v0
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_9b

    :catchall_9b
    move-exception p2

    :try_start_9c
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a0

    goto :goto_a4

    :catchall_a0
    move-exception p3

    :try_start_a1
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a4
    throw p2
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a5} :catch_a5

    :catch_a5
    move-exception p2

    .line 132
    sget-object p3, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v0, "fail to read body"

    invoke-static {p3, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_b2
    return-object p1
.end method

.method protected getResStatusCode(Ljava/net/HttpURLConnection;)I
    .registers 5

    .line 109
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_23

    :catch_5
    move-exception p1

    .line 111
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResStatusCode: fail to read status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method protected setHttpUrlConnection()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-super {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setHttpUrlConnection()V

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    const-string v0, "Keep-Alive"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setSocketFactory()V
    .registers 4

    .line 84
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_25

    :try_start_4
    const-string v0, "TLS"

    .line 86
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 88
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_14} :catch_1e
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_14} :catch_1e

    .line 92
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "get socketFactory for HTTPS"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_25

    :catch_1e
    move-exception p0

    .line 90
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 94
    :cond_25
    :goto_25
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string/jumbo v2, "set sslSocketFactor for HTTPS"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method
