.class public Lcom/sec/internal/ims/aec/util/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    }
.end annotation


# static fields
.field private static final GET:Ljava/lang/String; = "GET"

.field private static final LOG_TAG:Ljava/lang/String; = "HttpClient"

.field private static final MAX_CHUNK_SIZE:I = 0x7d000

.field private static final MAX_CONN_TIMEOUT:I = 0x7530

.field private static final MAX_READ_TIMEOUT:I = 0x7530

.field private static final MIN_CHUNK_SIZE:I = 0xf000

.field private static final POST:Ljava/lang/String; = "POST"


# instance fields
.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mHostName:Ljava/lang/String;

.field protected mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

.field protected mNetwork:Landroid/net/Network;

.field protected mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneId:I

.field protected mPostData:Lorg/json/JSONObject;


# direct methods
.method public static synthetic $r8$lambda$dFCoz81INO6caYVheGQukr20vQw(Lcom/sec/internal/ims/aec/util/HttpClient;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/aec/util/HttpClient;->lambda$openURLConnection$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/aec/util/HttpClient;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPostData:Lorg/json/JSONObject;

    .line 44
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mNetwork:Landroid/net/Network;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHostName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHeaders:Ljava/util/Map;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mParams:Ljava/util/Map;

    .line 51
    iput p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    return-void
.end method

.method private synthetic lambda$openURLConnection$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 8

    .line 99
    sget-object p1, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    const/4 v0, 0x0

    .line 102
    :try_start_3
    sget-object v1, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HostNameVerify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/AECLog;->s(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    .line 104
    array-length v1, p2
    :try_end_22
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_22} :catch_38

    move v2, v0

    :goto_23
    if-ge v0, v1, :cond_42

    :try_start_25
    aget-object v3, p2, v0

    .line 105
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->getHostName()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1, v4, v3}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v2
    :try_end_31
    .catch Ljavax/net/ssl/SSLException; {:try_start_25 .. :try_end_31} :catch_37

    if-eqz v2, :cond_34

    goto :goto_42

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :catch_37
    move v0, v2

    .line 109
    :catch_38
    sget-object p1, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    const-string p2, "SSL Exception with HostNameVerify Fail"

    iget p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    move v2, v0

    :cond_42
    :goto_42
    return v2
.end method

.method private openURLConnection(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mNetwork:Landroid/net/Network;

    if-nez p1, :cond_10

    .line 92
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_16

    .line 94
    :cond_10
    invoke-virtual {p1, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    :goto_16
    if-eqz p1, :cond_20

    .line 98
    new-instance v0, Lcom/sec/internal/ims/aec/util/HttpClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/util/HttpClient$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/aec/util/HttpClient;)V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_20
    return-object p1
.end method


# virtual methods
.method protected appendQueryParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 175
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    if-eqz p2, :cond_6d

    .line 176
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6d

    .line 177
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_18
    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 180
    array-length v2, v1

    const/4 v3, 0x0

    :goto_3e
    if-ge v3, v2, :cond_18

    aget-object v4, v1, v3

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 184
    :cond_52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_18

    .line 187
    :cond_62
    sget-object p2, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {p2, v0, p0}, Lcom/sec/internal/log/AECLog;->s(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    :cond_6d
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public closeURLConnection()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_a

    .line 169
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    :cond_a
    return-void
.end method

.method public getHostName()Ljava/lang/String;
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHostName:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_16

    .line 65
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHostName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_16
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHostName:Ljava/lang/String;

    return-object p0
.end method

.method public getPostData()Ljava/lang/String;
    .registers 3

    .line 80
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPostData:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\\\"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getResBody(Ljava/net/HttpURLConnection;)[B
    .registers 9

    const-string v0, "failed to close input stream"

    const-string v1, ""

    .line 218
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const v2, 0x7d000

    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 226
    :try_start_10
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_19} :catch_44
    .catchall {:try_start_10 .. :try_end_19} :catchall_42

    const/4 p1, 0x0

    move v3, p1

    :cond_1b
    const v5, 0xf000

    .line 228
    :try_start_1e
    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_25

    add-int/2addr v3, v5

    :cond_25
    if-gez v5, :cond_1b

    const/4 v6, -0x1

    if-ne v5, v6, :cond_31

    if-lez v3, :cond_31

    .line 235
    new-array v1, v3, [B

    .line 236
    invoke-static {v2, p1, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_31} :catch_40
    .catchall {:try_start_1e .. :try_end_31} :catchall_3d

    .line 243
    :cond_31
    :try_start_31
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_52

    .line 246
    :catch_35
    sget-object p1, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {p1, v0, p0}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_52

    :catchall_3d
    move-exception p1

    move-object v3, v4

    goto :goto_53

    :catch_40
    move-object v3, v4

    goto :goto_44

    :catchall_42
    move-exception p1

    goto :goto_53

    .line 239
    :catch_44
    :goto_44
    :try_start_44
    sget-object p1, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    const-string v2, "failed to read input stream"

    iget v4, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {p1, v2, v4}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_42

    if-eqz v3, :cond_52

    .line 243
    :try_start_4f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_35

    :cond_52
    :goto_52
    return-object v1

    :goto_53
    if-eqz v3, :cond_60

    :try_start_55
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_60

    .line 246
    :catch_59
    sget-object v1, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v1, v0, p0}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    :cond_60
    :goto_60
    throw p1
.end method

.method protected getResHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected getResStatusCode(Ljava/net/HttpURLConnection;)I
    .registers 2

    .line 207
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method protected getResponse(Ljava/net/HttpURLConnection;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .registers 5

    .line 202
    new-instance v0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResStatusCode(Ljava/net/HttpURLConnection;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResBody(Ljava/net/HttpURLConnection;)[B

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;-><init>(Lcom/sec/internal/ims/aec/util/HttpClient;ILjava/util/Map;[B)V

    return-object v0
.end method

.method public getURLConnection(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTTP GET] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mParams:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/aec/util/HttpClient;->appendQueryParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->openURLConnection(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/aec/util/HttpClient;->setRequestHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 123
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v0, 0x7530

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 124
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 125
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 127
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_47} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_4e

    .line 136
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResponse(Ljava/net/HttpURLConnection;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object p0

    return-object p0

    :catch_4e
    move-exception p1

    .line 132
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 133
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getURLConnection Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_6d
    move-exception p1

    .line 129
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 130
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getURLConnection IOException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public postURLConnection(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTTP POST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 142
    invoke-static {v1}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->openURLConnection(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 144
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setRequestHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 145
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->getPostData()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v0, 0x7530

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 147
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 148
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 150
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 151
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 152
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5a} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_80

    .line 153
    :try_start_5a
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->getPostData()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 154
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_74

    .line 155
    :try_start_6a
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_80

    .line 164
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResponse(Ljava/net/HttpURLConnection;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object p0

    return-object p0

    :catchall_74
    move-exception v0

    if-eqz p1, :cond_7f

    .line 152
    :try_start_77
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_7f

    :catchall_7b
    move-exception p1

    :try_start_7c
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7f
    :goto_7f
    throw v0
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_80} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_80} :catch_80

    :catch_80
    move-exception p1

    .line 160
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 161
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postURLConnection Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_9f
    move-exception p1

    .line 157
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 158
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postURLConnection IOException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHeaders:Ljava/util/Map;

    .line 56
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHostName:Ljava/lang/String;

    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mParams:Ljava/util/Map;

    .line 72
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setPostData(Lorg/json/JSONObject;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPostData:Lorg/json/JSONObject;

    return-void
.end method

.method protected setRequestHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 193
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v3, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1e

    :cond_55
    return-void
.end method
