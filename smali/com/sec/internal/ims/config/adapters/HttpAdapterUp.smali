.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter;
.source "HttpAdapterUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;,
        Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "HttpAdapterUp"


# direct methods
.method static bridge synthetic -$$Nest$mcreateReqUrlWithMask(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;Ljava/lang/StringBuffer;Ljava/util/Map;Z)Ljava/lang/StringBuffer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->createReqUrlWithMask(Ljava/lang/StringBuffer;Ljava/util/Map;Z)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdumpAutoConfUrl(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->dumpAutoConfUrl(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    .line 28
    new-instance p1, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    return-void
.end method

.method private createReqUrlWithMask(Ljava/lang/StringBuffer;Ljava/util/Map;Z)Ljava/lang/StringBuffer;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    const-string v0, "%"

    const-string v1, "&"

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 64
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_0
    const-string v2, "?"

    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 73
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "=&"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "\\|\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 77
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_1

    aget-object v7, v2, v6

    .line 79
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "="

    .line 80
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v7

    goto :goto_2

    :cond_3
    const-string/jumbo v8, "utf-8"

    .line 84
    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string/jumbo v9, "xxx"

    if-eqz p3, :cond_7

    :try_start_1
    const-string v10, "IMSI"

    .line 88
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "msisdn"

    .line 89
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "OTP"

    .line 90
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 91
    :cond_4
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 92
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x8

    if-le v10, v11, :cond_6

    .line 93
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 98
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x5

    if-le v10, v11, :cond_6

    .line 99
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_6
    move-object v8, v9

    .line 108
    :cond_7
    :goto_3
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 111
    :catch_0
    sget-object v8, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->LOG_TAG:Ljava/lang/String;

    iget v9, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v10, "UnsupportedEncodingException occur. use plain string"

    invoke-static {v8, v9, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 117
    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_9
    return-object p1
.end method

.method private dumpAutoConfUrl(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->createReqUrlWithMask(Ljava/lang/StringBuffer;Ljava/util/Map;Z)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 132
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
