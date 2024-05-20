.class public Lcom/sec/internal/helper/httpclient/DnsResponse;
.super Ljava/lang/Object;
.source "DnsResponse.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DnsController"

.field private static final NANO:J = 0x3b9aca00L


# instance fields
.field private mDnsAnswers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/DnsAnswer;",
            ">;"
        }
    .end annotation
.end field

.field private mHostname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lorg/xbill/DNS/Record;I)V
    .locals 12

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsResponse;->mDnsAnswers:Ljava/util/List;

    .line 25
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-direct {p0, v2, p3}, Lcom/sec/internal/helper/httpclient/DnsResponse;->isRecordMatchingType(Lorg/xbill/DNS/Record;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/DnsResponse;->mDnsAnswers:Ljava/util/List;

    new-instance v4, Lcom/sec/internal/helper/httpclient/DnsAnswer;

    invoke-direct {p0, v2, p3}, Lcom/sec/internal/helper/httpclient/DnsResponse;->getAddress(Lorg/xbill/DNS/Record;I)Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v8

    const-wide/32 v10, 0x3b9aca00

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/internal/helper/httpclient/DnsAnswer;-><init>(Ljava/net/InetAddress;J)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_2
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/DnsResponse;->mHostname:Ljava/lang/String;

    return-void
.end method

.method private getAddress(Lorg/xbill/DNS/Record;I)Ljava/net/InetAddress;
    .locals 0

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    .line 54
    check-cast p1, Lorg/xbill/DNS/ARecord;

    invoke-virtual {p1}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x1c

    if-ne p2, p0, :cond_1

    .line 56
    check-cast p1, Lorg/xbill/DNS/AAAARecord;

    invoke-virtual {p1}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isRecordMatchingType(Lorg/xbill/DNS/Record;I)Z
    .locals 0

    const/4 p0, 0x1

    if-eq p2, p0, :cond_1

    const/16 p0, 0x1c

    if-eq p2, p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 42
    :cond_0
    instance-of p0, p1, Lorg/xbill/DNS/AAAARecord;

    return p0

    .line 40
    :cond_1
    instance-of p0, p1, Lorg/xbill/DNS/ARecord;

    return p0
.end method

.method private removeInvalidAnswers()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsResponse;->mDnsAnswers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/DnsResponse;->mDnsAnswers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/httpclient/DnsAnswer;

    .line 69
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/DnsAnswer;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DnsController"

    const-string v3, "isInvalid: expired result."

    .line 70
    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/DnsResponse;->mDnsAnswers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DnsResponse;->mHostname:Ljava/lang/String;

    return-object p0
.end method

.method public getIp()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DnsResponse;->mDnsAnswers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/httpclient/DnsAnswer;

    .line 79
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/DnsAnswer;->getIp()Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public isInvalid()Z
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/DnsResponse;->removeInvalidAnswers()V

    .line 63
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DnsResponse;->mDnsAnswers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method
