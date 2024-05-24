.class public Lcom/sun/mail/util/ASCIIUtility;
.super Ljava/lang/Object;
.source "ASCIIUtility.java"


# direct methods
.method public static getBytes(Ljava/io/InputStream;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 252
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 253
    new-array v2, v0, [B

    .line 254
    invoke-virtual {p0, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    goto :goto_23

    .line 257
    :cond_f
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v3, v2, [B

    .line 259
    :goto_18
    invoke-virtual {p0, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    .line 261
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    :goto_23
    return-object v2

    .line 260
    :cond_24
    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_18
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .registers 6

    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 236
    array-length v0, p0

    .line 237
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_8
    if-lt v2, v0, :cond_b

    return-object v1

    :cond_b
    add-int/lit8 v3, v2, 0x1

    .line 240
    aget-char v4, p0, v2

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    move v2, v3

    goto :goto_8
.end method

.method public static parseInt([BIII)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-eqz p0, :cond_82

    const-string v0, "illegal number"

    if-le p2, p1, :cond_7c

    .line 72
    aget-byte v1, p0, p1

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_14

    add-int/lit8 v1, p1, 0x1

    const/high16 v2, -0x80000000

    move v5, v4

    goto :goto_19

    :cond_14
    const v2, -0x7fffffff

    move v1, p1

    move v5, v3

    .line 79
    :goto_19
    div-int v6, v2, p3

    if-ge v1, p2, :cond_45

    add-int/lit8 v3, v1, 0x1

    .line 81
    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-static {v1, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-ltz v1, :cond_2d

    neg-int v1, v1

    move v9, v3

    move v3, v1

    move v1, v9

    goto :goto_45

    .line 83
    :cond_2d
    new-instance p3, Ljava/lang/NumberFormatException;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-direct {p3, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_45
    :goto_45
    if-lt v1, p2, :cond_55

    if-eqz v5, :cond_53

    add-int/2addr p1, v4

    if-le v1, p1, :cond_4d

    return v3

    .line 112
    :cond_4d
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_53
    neg-int p0, v3

    return p0

    :cond_55
    add-int/lit8 v7, v1, 0x1

    .line 92
    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-static {v1, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-ltz v1, :cond_76

    if-lt v3, v6, :cond_70

    mul-int/2addr v3, p3

    add-int v8, v2, v1

    if-lt v3, v8, :cond_6a

    sub-int/2addr v3, v1

    move v1, v7

    goto :goto_45

    .line 101
    :cond_6a
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_70
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_76
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_7c
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_82
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "null"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toString([BII)Ljava/lang/String;
    .registers 7

    sub-int/2addr p2, p1

    .line 213
    new-array v0, p2, [C

    const/4 v1, 0x0

    :goto_4
    if-lt v1, p2, :cond_c

    .line 218
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_c
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, p1, 0x1

    .line 216
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    aput-char p1, v0, v1

    move v1, v2

    move p1, v3

    goto :goto_4
.end method
