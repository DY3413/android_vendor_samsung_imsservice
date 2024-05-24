.class public Lorg/xbill/DNS/APLRecord;
.super Lorg/xbill/DNS/Record;
.source "APLRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/APLRecord$Element;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x12b5acebae8a7fb8L


# instance fields
.field private elements:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method static synthetic access$000(II)Z
    .registers 2

    .line 21
    invoke-static {p0, p1}, Lorg/xbill/DNS/APLRecord;->validatePrefixLength(II)Z

    move-result p0

    return p0
.end method

.method private static addressLength([B)I
    .registers 3

    .line 253
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_f

    .line 254
    aget-byte v1, p0, v0

    if-eqz v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private static parseAddress([BI)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 135
    array-length v0, p0

    if-gt v0, p1, :cond_f

    .line 137
    array-length v0, p0

    if-ne v0, p1, :cond_7

    return-object p0

    .line 139
    :cond_7
    new-array p1, p1, [B

    .line 140
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 136
    :cond_f
    new-instance p0, Lorg/xbill/DNS/WireParseException;

    const-string p1, "invalid address length"

    invoke-direct {p0, p1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validatePrefixLength(II)Z
    .registers 5

    .line 0
    const/4 v0, 0x0

    if-ltz p1, :cond_18

    const/16 v1, 0x100

    if-lt p1, v1, :cond_8

    goto :goto_18

    :cond_8
    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    const/16 v2, 0x20

    if-gt p1, v2, :cond_16

    :cond_f
    const/4 v2, 0x2

    if-ne p0, v2, :cond_17

    const/16 p0, 0x80

    if-le p1, p0, :cond_17

    :cond_16
    return v0

    :cond_17
    return v1

    :cond_18
    :goto_18
    return v0
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .registers 1

    .line 96
    new-instance p0, Lorg/xbill/DNS/APLRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/APLRecord;-><init>()V

    return-object p0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    .line 147
    :goto_8
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-eqz v0, :cond_5c

    .line 148
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v3

    .line 149
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    .line 150
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_20

    move v4, v1

    goto :goto_22

    :cond_20
    const/4 v2, 0x0

    move v4, v2

    :goto_22
    and-int/lit16 v0, v0, -0x81

    .line 154
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v5

    .line 156
    invoke-static {v3, v6}, Lorg/xbill/DNS/APLRecord;->validatePrefixLength(II)Z

    move-result v0

    if-eqz v0, :cond_54

    if-eq v3, v1, :cond_3c

    const/4 v0, 0x2

    if-ne v3, v0, :cond_34

    goto :goto_3c

    .line 166
    :cond_34
    new-instance v0, Lorg/xbill/DNS/APLRecord$Element;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/APLRecord$Element;-><init>(IZLjava/lang/Object;ILorg/xbill/DNS/APLRecord$1;)V

    goto :goto_4e

    .line 162
    :cond_3c
    :goto_3c
    invoke-static {v3}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v0

    .line 161
    invoke-static {v5, v0}, Lorg/xbill/DNS/APLRecord;->parseAddress([BI)[B

    move-result-object v0

    .line 163
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 164
    new-instance v2, Lorg/xbill/DNS/APLRecord$Element;

    invoke-direct {v2, v4, v0, v6}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    move-object v0, v2

    .line 168
    :goto_4e
    iget-object v2, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 157
    :cond_54
    new-instance p0, Lorg/xbill/DNS/WireParseException;

    const-string p1, "invalid prefix length"

    invoke-direct {p0, p1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .registers 3

    .line 235
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    iget-object p0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 237
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/APLRecord$Element;

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 239
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, " "

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 242
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .registers 7

    .line 262
    iget-object p0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 263
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/xbill/DNS/APLRecord$Element;

    .line 266
    iget p3, p2, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_21

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1b

    goto :goto_21

    .line 273
    :cond_1b
    iget-object p3, p2, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast p3, [B

    .line 274
    array-length v0, p3

    goto :goto_2d

    .line 269
    :cond_21
    :goto_21
    iget-object p3, p2, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast p3, Ljava/net/InetAddress;

    .line 270
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p3

    .line 271
    invoke-static {p3}, Lorg/xbill/DNS/APLRecord;->addressLength([B)I

    move-result v0

    .line 277
    :goto_2d
    iget-boolean v1, p2, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    if-eqz v1, :cond_34

    or-int/lit16 v1, v0, 0x80

    goto :goto_35

    :cond_34
    move v1, v0

    .line 280
    :goto_35
    iget v2, p2, Lorg/xbill/DNS/APLRecord$Element;->family:I

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 281
    iget p2, p2, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 282
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    const/4 p2, 0x0

    .line 283
    invoke-virtual {p1, p3, p2, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    goto :goto_6

    :cond_47
    return-void
.end method
