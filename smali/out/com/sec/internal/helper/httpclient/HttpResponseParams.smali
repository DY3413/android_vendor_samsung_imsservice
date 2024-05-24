.class public Lcom/sec/internal/helper/httpclient/HttpResponseParams;
.super Ljava/lang/Object;
.source "HttpResponseParams.java"


# instance fields
.field private mCipherSuite:[B

.field private mDataBinary:[B

.field private mDataString:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
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

.field private mStatusCode:I

.field private mStatusReason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusReason:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 14
    fill-array-data v1, :array_18

    iput-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mCipherSuite:[B

    .line 15
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataBinary:[B

    .line 16
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mHeaders:Ljava/util/Map;

    return-void

    :array_18
    .array-data 1
        0x0t
        0x2ft
    .end array-data
.end method


# virtual methods
.method public getCipherSuite()[B
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mCipherSuite:[B

    return-object p0
.end method

.method public getDataBinary()[B
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataBinary:[B

    return-object p0
.end method

.method public getDataString()Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 24
    iget p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    return p0
.end method

.method public getStatusReason()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusReason:Ljava/lang/String;

    return-object p0
.end method

.method public headerToString(Ljava/util/Map;)Ljava/lang/StringBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 83
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_42

    .line 85
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_42
    return-object p0
.end method

.method public isDebugLog()Z
    .registers 2

    .line 93
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v0

    if-eqz v0, :cond_13

    iget p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_11

    const/16 v0, 0x191

    if-eq p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public setCipherSuite([B)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mCipherSuite:[B

    return-void
.end method

.method public setDataBinary([B)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataBinary:[B

    return-void
.end method

.method public setDataString(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .registers 2
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

    .line 36
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public setStatusCode(I)V
    .registers 2

    .line 28
    iput p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    return-void
.end method

.method public setStatusReason(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusReason:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    const-string v0, "]"

    const-string v1, "    mHeaders="

    const-string v2, ""

    const-string v3, "\r\n"

    const-string v4, "HttpResponseParams[\r\n    mStatusCode="

    .line 107
    iget-object v5, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, v5}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->headerToString(Ljava/util/Map;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 109
    :try_start_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->isDebugLog()Z

    move-result v7

    if-eqz v7, :cond_44

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\r\n    mDataString="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    .line 111
    invoke-static {v8}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_45

    :cond_44
    move-object v7, v2

    :goto_45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_4f} :catch_50

    return-object p0

    :catch_50
    move-exception v6

    .line 113
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->isDebugLog()Z

    move-result v3

    if-eqz v3, :cond_87

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n    mDataString length="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_87
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringWoPayload()Ljava/lang/String;
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->headerToString(Ljava/util/Map;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpResponseParams[\r\n    mStatusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->isDebugLog()Z

    move-result p0

    if-eqz p0, :cond_32

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mHeaders="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_34

    :cond_32
    const-string p0, ""

    :goto_34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
