.class public Lorg/xbill/DNS/utils/base64;
.super Ljava/lang/Object;
.source "base64.java"


# direct methods
.method public static formatString([BILjava/lang/String;Z)Ljava/lang/String;
    .registers 8

    .line 71
    invoke-static {p0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object p0

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 73
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int v2, v1, p1

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_2a

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_36

    const-string v1, " )"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_36

    .line 81
    :cond_2a
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_36
    :goto_36
    move v1, v2

    goto :goto_a

    .line 85
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([B)Ljava/lang/String;
    .registers 13

    .line 28
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 30
    :goto_7
    array-length v3, p0

    const/4 v4, 0x2

    add-int/2addr v3, v4

    const/4 v5, 0x3

    div-int/2addr v3, v5

    if-ge v2, v3, :cond_83

    new-array v3, v5, [S

    const/4 v6, 0x4

    new-array v7, v6, [S

    move v8, v1

    :goto_14
    const/4 v9, -0x1

    if-ge v8, v5, :cond_2a

    mul-int/lit8 v10, v2, 0x3

    add-int/2addr v10, v8

    .line 34
    array-length v11, p0

    if-ge v10, v11, :cond_25

    .line 35
    aget-byte v9, p0, v10

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    aput-short v9, v3, v8

    goto :goto_27

    .line 37
    :cond_25
    aput-short v9, v3, v8

    :goto_27
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_2a
    aget-short v8, v3, v1

    shr-int/2addr v8, v4

    int-to-short v8, v8

    aput-short v8, v7, v1

    const/4 v8, 0x1

    aget-short v10, v3, v8

    if-ne v10, v9, :cond_3d

    aget-short v10, v3, v1

    and-int/2addr v10, v5

    shl-int/2addr v10, v6

    int-to-short v10, v10

    aput-short v10, v7, v8

    goto :goto_47

    :cond_3d
    aget-short v11, v3, v1

    and-int/2addr v11, v5

    shl-int/2addr v11, v6

    shr-int/lit8 v10, v10, 0x4

    add-int/2addr v11, v10

    int-to-short v10, v11

    aput-short v10, v7, v8

    :goto_47
    aget-short v8, v3, v8

    const/16 v10, 0x40

    if-ne v8, v9, :cond_52

    aput-short v10, v7, v5

    aput-short v10, v7, v4

    goto :goto_6f

    :cond_52
    aget-short v11, v3, v4

    if-ne v11, v9, :cond_5f

    and-int/lit8 v3, v8, 0xf

    shl-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v7, v4

    aput-short v10, v7, v5

    goto :goto_6f

    :cond_5f
    and-int/lit8 v8, v8, 0xf

    shl-int/2addr v8, v4

    shr-int/lit8 v9, v11, 0x6

    add-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v7, v4

    aget-short v3, v3, v4

    and-int/lit8 v3, v3, 0x3f

    int-to-short v3, v3

    aput-short v3, v7, v5

    :goto_6f
    move v3, v1

    :goto_70
    if-ge v3, v6, :cond_80

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    .line 56
    aget-short v5, v7, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    :cond_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 58
    :cond_83
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method
