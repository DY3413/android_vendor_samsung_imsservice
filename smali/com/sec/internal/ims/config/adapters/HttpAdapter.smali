.class public Lcom/sec/internal/ims/config/adapters/HttpAdapter;
.super Ljava/lang/Object;
.source "HttpAdapter.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;,
        Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;,
        Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;
    }
.end annotation


# static fields
.field protected static final CHUNKED:Ljava/lang/String; = "chunked"

.field protected static final GZIP:Ljava/lang/String; = "gzip"

.field protected static final LOG_TAG:Ljava/lang/String; = "HttpAdapter"

.field protected static final MAX_CHUNK_SIZE:I = 0x7d000

.field protected static final MAX_TIMEOUT:J = 0x7530L

.field protected static final MIN_CHUNK_SIZE:I = 0xf000

.field protected static final SSL_PROTOCOL:Ljava/lang/String; = "TLS"

.field protected static sCookieStore:Ljava/net/CookieStore;


# instance fields
.field protected final mHeaders:Ljava/util/Map;
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

.field protected mHttpMethodName:Ljava/lang/String;

.field protected mHttpURLConn:Ljava/net/HttpURLConnection;

.field protected mNetwork:Landroid/net/Network;

.field protected final mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhoneId:I

.field protected mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

.field protected mURL:Ljava/net/URL;

.field protected mURLConn:Ljava/net/URLConnection;

.field protected mUrl:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    .line 89
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 90
    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->sCookieStore:Ljava/net/CookieStore;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    .line 78
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURL:Ljava/net/URL;

    .line 79
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    .line 80
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    .line 81
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHeaders:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mParams:Ljava/util/Map;

    const-string v0, "GET"

    .line 85
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    .line 94
    iput p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    .line 95
    new-instance p1, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    return-void
.end method


# virtual methods
.method protected addReqHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 12
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

    .line 425
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "+++ request header"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 426
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x1

    .line 428
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 430
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 432
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x0

    .line 435
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->displayReqHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "--- request header"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    sget-boolean v0, Lcom/sec/internal/helper/os/Debug;->ALLOW_DIAGNOSTICS:Z

    if-eqz v0, :cond_8

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "MM/dd/yyyy HH:mm:ss.SSS"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 443
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 444
    instance-of p1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_3

    const-string p1, "HTTPS "

    goto :goto_2

    :cond_3
    const-string p1, "HTTP "

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "POST\n"

    goto :goto_3

    :cond_4
    const-string p1, "GET\n"

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 448
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 449
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Host"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 454
    :cond_7
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x64

    const/4 v7, 0x0

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    invoke-interface/range {v3 .. v11}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->onIndication(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public close()Z
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    move-result p0

    return p0
.end method

.method protected configureUrlConnection(Ljava/lang/String;)Z
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mParams:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->createReqUrl(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;)Ljava/lang/StringBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    .line 241
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->openUrlConnection()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setUrlConnection()V

    .line 245
    sget-object p1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v1, "configure httpUrlConnection based on urlConnection"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    const/4 p0, 0x1

    return p0
.end method

.method protected createReqUrl(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;)Ljava/lang/StringBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    const-string v0, "&"

    .line 252
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    invoke-static {v1, v2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 254
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 255
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string/jumbo v1, "utf-8"

    const-string v2, "%"

    const-string v3, "UnsupportedEncodingException occur. use plain string"

    const-string v4, "="

    const-string v5, "?"

    const/16 v6, 0x2f

    if-eqz p1, :cond_4

    .line 256
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    if-ne p1, v6, :cond_0

    .line 257
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 259
    :cond_0
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 261
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 265
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 268
    :cond_1
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 271
    :cond_2
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 274
    :catch_0
    sget-object v5, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    invoke-static {v5, v6, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 280
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 281
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_5

    .line 284
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 286
    :cond_5
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 288
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x26

    .line 289
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 295
    sget-object v5, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v6, "already encoded. use plain string"

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 298
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 301
    :catch_1
    sget-object v5, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 305
    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    :cond_9
    :goto_3
    sget-object p1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p0, p3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    :cond_a
    return-object p2
.end method

.method protected displayReqHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 460
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected getContentLengthBody([BLjava/net/HttpURLConnection;I)[B
    .locals 7

    .line 510
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    mul-int/lit8 p2, p3, 0x2

    .line 513
    :try_start_1
    new-array v1, p2, [B

    .line 514
    new-array p1, p3, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sub-int v4, p2, v3

    .line 515
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    if-eq p3, v3, :cond_1

    .line 519
    sget-object p2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getContentLengthBody: wrong http header(header:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",actual:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v4, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 522
    :cond_1
    invoke-static {v1, v2, p1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p1

    :catchall_0
    move-exception p2

    .line 510
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_0
    move-exception p2

    .line 526
    :try_start_5
    sget-object p3, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v0, "getContentLengthBody: fail to read body"

    invoke-static {p3, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    return-object p1

    .line 524
    :catch_1
    sget-object p2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string p3, "getContentLengthBody: no body"

    invoke-static {p2, p0, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    return-object p1
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->getNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0
.end method

.method protected getPostResBody(Ljava/net/HttpURLConnection;)[B
    .locals 8

    const-string p0, "Error closing input stream: "

    const-string v0, "Content-Length"

    .line 593
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 594
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    return-object v2

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 598
    new-array v3, v1, [B

    .line 599
    new-array v4, v0, [B

    .line 601
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    move v2, p1

    :goto_0
    sub-int v6, v1, v2

    .line 602
    :try_start_1
    invoke-virtual {v5, v3, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    add-int/2addr v2, v6

    goto :goto_0

    :cond_1
    if-eq v0, v2, :cond_2

    .line 607
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wrong http header(header:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",actual:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_2
    invoke-static {v3, p1, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 619
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v5

    goto :goto_4

    :catch_1
    move-object v2, v5

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 612
    :catch_2
    :goto_1
    :try_start_3
    sget-object p1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v0, "fail to read body"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    .line 616
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 619
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    move-object v2, v4

    goto :goto_6

    :goto_4
    if-eqz v2, :cond_4

    .line 616
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 619
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_4
    :goto_5
    throw p1

    :cond_5
    :goto_6
    return-object v2
.end method

.method protected getResBody(Ljava/net/HttpURLConnection;)[B
    .locals 6

    const-string v0, "Content-Length"

    .line 571
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 572
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 573
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResBody: Content-Length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-gtz v0, :cond_0

    return-object v2

    .line 577
    :cond_0
    invoke-virtual {p0, v2, p1, v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getContentLengthBody([BLjava/net/HttpURLConnection;I)[B

    move-result-object v2

    :cond_1
    const-string v0, "Transfer-Encoding"

    .line 579
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v3, "getResBody: Transfer-Encoding"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 581
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getTransferEncodingBody([BLjava/net/HttpURLConnection;)[B

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method protected getResHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 0
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

    .line 506
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected getResStatusCode(Ljava/net/HttpURLConnection;)I
    .locals 4

    const/4 v0, 0x0

    .line 466
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catch_0
    move-exception p1

    .line 468
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v3, "getResStatusCode: fail to read status code"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 469
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_0

    .line 470
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "SSLHandshakeException: response code define 800"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x320

    :goto_0
    move v0, p0

    goto :goto_2

    .line 472
    :cond_0
    instance-of v1, p1, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_1

    .line 473
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "SSLException: response code define 801"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x321

    goto :goto_0

    .line 475
    :cond_1
    instance-of v1, p1, Ljava/net/ConnectException;

    if-nez v1, :cond_5

    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 478
    :cond_2
    instance-of v1, p1, Ljava/net/SocketException;

    if-eqz v1, :cond_3

    .line 479
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "SocketException: response code define 803"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x323

    goto :goto_0

    .line 481
    :cond_3
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_4

    .line 482
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "SocketTimeoutException: response code define 804"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x324

    goto :goto_0

    .line 484
    :cond_4
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_6

    .line 485
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "UnknownHostException: response code define 805"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x325

    goto :goto_0

    .line 476
    :cond_5
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "ConnectException: response code define 802"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x322

    goto :goto_0

    .line 488
    :cond_6
    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v0
.end method

.method protected getResStatusMessage(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 497
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p1

    .line 499
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResStatusMessage: IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method protected getTransferEncodingBody([BLjava/net/HttpURLConnection;)[B
    .locals 10

    .line 534
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const p2, 0xf000

    const v1, 0x7d000

    :try_start_1
    new-array v1, v1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 542
    :cond_0
    :try_start_2
    invoke-virtual {v0, v1, v3, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v4, :cond_1

    add-int/2addr v3, v4

    :cond_1
    if-gez v4, :cond_0

    move v5, v2

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v5, 0x1

    .line 545
    :try_start_3
    sget-object v6, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTransferEncodingBody: error reading chunked input stream"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, v7, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    const/4 p2, -0x1

    if-ne v4, p2, :cond_2

    if-lez v3, :cond_2

    if-nez v5, :cond_2

    .line 555
    new-array p1, v3, [B

    .line 556
    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    sget-object p2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTransferEncodingBody: chunked response length ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 559
    :cond_2
    sget-object p2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "getTransferEncodingBody: chunked body empty or error"

    invoke-static {p2, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 561
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object p1

    :catchall_0
    move-exception p2

    .line 534
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_1
    move-exception p2

    .line 562
    :try_start_7
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v1, "getTransferEncodingBody: fail to read body"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    return-object p1
.end method

.method public open(Ljava/lang/String;)Z
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->open(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected openUrlConnection()Z
    .locals 4

    const/4 v0, 0x0

    .line 314
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURL:Ljava/net/URL;

    .line 315
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v1

    .line 321
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v3, "cannot open url connection"

    invoke-static {v2, p0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    .line 317
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string/jumbo v3, "wrong url address"

    invoke-static {v2, p0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    return v0
.end method

.method protected removeOldCookies()V
    .locals 4

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    .line 357
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->sCookieStore:Ljava/net/CookieStore;

    invoke-interface {v1, v0}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    .line 358
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/HttpCookie;

    .line 359
    sget-object v3, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->sCookieStore:Ljava/net/CookieStore;

    invoke-interface {v3, v0, v2}, Ljava/net/CookieStore;->remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    goto :goto_0

    .line 361
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v1, "remove old cookies for HTTP request"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 363
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object p0

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
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

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setHeaders(Ljava/util/Map;)V

    return-void
.end method

.method protected setHttpUrlConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 413
    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 414
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 415
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    const v2, 0xea60

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 416
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 421
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setNetwork(Landroid/net/Network;)V

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setParams(Ljava/util/Map;)V

    return-void
.end method

.method protected setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 3

    .line 350
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "set sslSocketFactory for HTTPS"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method protected setSocketFactory()V
    .locals 4

    :try_start_0
    const-string v0, "TLS"

    .line 339
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 340
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 341
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 342
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v3, "get socketFactory for HTTPS"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void

    :catch_0
    move-exception p0

    .line 344
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected setUrlConnection()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setSocketFactory()V

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->removeOldCookies()V

    :goto_0
    return-void
.end method

.method protected sleep(J)V
    .locals 0

    .line 630
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 632
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected tryToConnectHttpUrlConnection()V
    .locals 2

    .line 400
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 401
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 403
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setHttpUrlConnection()V

    .line 404
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->addReqHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 405
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 407
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 408
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_0
    return-void
.end method

.method protected tryToConnectHttpUrlConnectionWithinTimeOut()V
    .locals 9

    .line 368
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 371
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 372
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const-wide/16 v2, 0x7530

    move-wide v4, v2

    :cond_0
    cmp-long v6, v4, v2

    if-gez v6, :cond_2

    .line 376
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURL:Ljava/net/URL;

    .line 377
    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v6}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    :goto_0
    iput-object v6, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    .line 378
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setUrlConnection()V

    .line 379
    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    check-cast v6, Ljava/net/HttpURLConnection;

    iput-object v6, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    .line 381
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setHttpUrlConnection()V

    .line 382
    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, v6, v7}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->addReqHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 383
    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v2

    goto :goto_1

    :catch_0
    move-exception v4

    .line 388
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 389
    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 390
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    goto :goto_1

    :catch_1
    move-exception v6

    .line 386
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_1
    cmp-long v6, v4, v2

    if-gez v6, :cond_3

    const-wide/16 v7, 0x7d0

    .line 394
    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->sleep(J)V

    :cond_3
    if-ltz v6, :cond_0

    return-void
.end method
