.class public Lorg/xbill/DNS/ARecord;
.super Lorg/xbill/DNS/Record;
.source "ARecord.java"


# static fields
.field private static final serialVersionUID:J = -0x1e26a88ea45bc233L


# instance fields
.field private addr:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method private static final fromArray([B)I
    .registers 3

    const/4 v0, 0x0

    .line 29
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static final toArray(I)[B
    .registers 4

    .line 0
    const/4 v0, 0x4

    new-array v0, v0, [B

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .registers 2

    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    if-nez v0, :cond_f

    .line 78
    iget p0, p0, Lorg/xbill/DNS/ARecord;->addr:I

    invoke-static {p0}, Lorg/xbill/DNS/ARecord;->toArray(I)[B

    move-result-object p0

    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 80
    :cond_f
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lorg/xbill/DNS/ARecord;->addr:I

    .line 81
    invoke-static {p0}, Lorg/xbill/DNS/ARecord;->toArray(I)[B

    move-result-object p0

    .line 80
    invoke-static {v0, p0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_1d
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .registers 1

    .line 24
    new-instance p0, Lorg/xbill/DNS/ARecord;

    invoke-direct {p0}, Lorg/xbill/DNS/ARecord;-><init>()V

    return-object p0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 59
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object p1

    invoke-static {p1}, Lorg/xbill/DNS/ARecord;->fromArray([B)I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/ARecord;->addr:I

    return-void
.end method

.method rrToString()Ljava/lang/String;
    .registers 1

    .line 70
    iget p0, p0, Lorg/xbill/DNS/ARecord;->addr:I

    invoke-static {p0}, Lorg/xbill/DNS/ARecord;->toArray(I)[B

    move-result-object p0

    invoke-static {p0}, Lorg/xbill/DNS/Address;->toDottedQuad([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .registers 6

    .line 89
    iget p0, p0, Lorg/xbill/DNS/ARecord;->addr:I

    int-to-long p2, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    return-void
.end method
