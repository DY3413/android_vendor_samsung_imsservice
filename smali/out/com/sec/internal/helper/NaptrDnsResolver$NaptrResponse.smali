.class Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse;
.super Lcom/android/net/module/util/DnsPacket;
.source "NaptrDnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/NaptrDnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NaptrResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;
    }
.end annotation


# instance fields
.field private final mQueryType:I


# direct methods
.method constructor <init>([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 182
    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket;-><init>([B)V

    .line 183
    iget-object p1, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    invoke-virtual {p1}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->isResponse()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 186
    iget-object p1, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3f

    .line 192
    iget-object p1, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object p1, p1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    iget p1, p1, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    iput p1, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse;->mQueryType:I

    const/16 p0, 0x23

    if-ne p1, p0, :cond_28

    return-void

    .line 194
    :cond_28
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected query type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 189
    :cond_3f
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected query count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_56
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p1, "Not an answer packet"

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public parseNaptrRecords()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 202
    :cond_f
    iget-object p0, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object p0, p0, v2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    .line 203
    iget v2, v1, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    const/16 v3, 0x23

    if-ne v2, v3, :cond_58

    .line 207
    new-instance v2, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;

    invoke-virtual {v1}, Lcom/android/net/module/util/DnsPacket$DnsRecord;->getRR()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;-><init>([B)V

    .line 209
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NaptrRecord name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/net/module/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " replacement field: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->replacement:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NaptrDnsResolver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 205
    :cond_58
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected DNS record type in ANSECTION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6f
    return-object v0
.end method
