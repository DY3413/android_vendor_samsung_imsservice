.class public Lorg/xbill/DNS/utils/base32;
.super Ljava/lang/Object;
.source "base32.java"


# instance fields
.field private alphabet:Ljava/lang/String;

.field private lowercase:Z

.field private padding:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/xbill/DNS/utils/base32;->alphabet:Ljava/lang/String;

    .line 39
    iput-boolean p2, p0, Lorg/xbill/DNS/utils/base32;->padding:Z

    .line 40
    iput-boolean p3, p0, Lorg/xbill/DNS/utils/base32;->lowercase:Z

    return-void
.end method

.method private static blockLenToPadding(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    const/4 p0, 0x6

    return p0
.end method


# virtual methods
.method public toString([B)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 87
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 89
    :goto_0
    array-length v5, v1

    const/4 v6, 0x4

    add-int/2addr v5, v6

    const/4 v7, 0x5

    div-int/2addr v5, v7

    if-ge v4, v5, :cond_5

    new-array v5, v7, [S

    const/16 v8, 0x8

    new-array v9, v8, [I

    move v10, v3

    move v11, v7

    :goto_1
    if-ge v10, v7, :cond_1

    mul-int/lit8 v12, v4, 0x5

    add-int/2addr v12, v10

    .line 95
    array-length v13, v1

    if-ge v12, v13, :cond_0

    .line 96
    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    int-to-short v12, v12

    aput-short v12, v5, v10

    goto :goto_2

    .line 98
    :cond_0
    aput-short v3, v5, v10

    add-int/lit8 v11, v11, -0x1

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 102
    :cond_1
    invoke-static {v11}, Lorg/xbill/DNS/utils/base32;->blockLenToPadding(I)I

    move-result v10

    aget-short v11, v5, v3

    shr-int/lit8 v12, v11, 0x3

    and-int/lit8 v12, v12, 0x1f

    int-to-byte v12, v12

    aput v12, v9, v3

    const/4 v12, 0x7

    and-int/2addr v11, v12

    const/4 v13, 0x2

    shl-int/2addr v11, v13

    const/4 v14, 0x1

    aget-short v15, v5, v14

    shr-int/lit8 v16, v15, 0x6

    const/16 v17, 0x3

    and-int/lit8 v16, v16, 0x3

    or-int v11, v11, v16

    int-to-byte v11, v11

    aput v11, v9, v14

    shr-int/lit8 v11, v15, 0x1

    and-int/lit8 v11, v11, 0x1f

    int-to-byte v11, v11

    aput v11, v9, v13

    and-int/lit8 v11, v15, 0x1

    shl-int/2addr v11, v6

    aget-short v13, v5, v13

    shr-int/lit8 v15, v13, 0x4

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v11, v15

    int-to-byte v11, v11

    aput v11, v9, v17

    and-int/lit8 v11, v13, 0xf

    shl-int/2addr v11, v14

    aget-short v13, v5, v17

    shr-int/lit8 v15, v13, 0x7

    and-int/2addr v14, v15

    or-int/2addr v11, v14

    int-to-byte v11, v11

    aput v11, v9, v6

    shr-int/lit8 v11, v13, 0x2

    and-int/lit8 v11, v11, 0x1f

    int-to-byte v11, v11

    aput v11, v9, v7

    and-int/lit8 v7, v13, 0x3

    shl-int/lit8 v7, v7, 0x3

    aget-short v5, v5, v6

    shr-int/lit8 v6, v5, 0x5

    and-int/2addr v6, v12

    or-int/2addr v6, v7

    int-to-byte v6, v6

    const/4 v7, 0x6

    aput v6, v9, v7

    and-int/lit8 v5, v5, 0x1f

    int-to-byte v5, v5

    aput v5, v9, v12

    move v5, v3

    :goto_3
    rsub-int/lit8 v6, v10, 0x8

    if-ge v5, v6, :cond_3

    .line 125
    iget-object v6, v0, Lorg/xbill/DNS/utils/base32;->alphabet:Ljava/lang/String;

    aget v7, v9, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 126
    iget-boolean v7, v0, Lorg/xbill/DNS/utils/base32;->lowercase:Z

    if-eqz v7, :cond_2

    .line 127
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    .line 128
    :cond_2
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 132
    :cond_3
    iget-boolean v5, v0, Lorg/xbill/DNS/utils/base32;->padding:Z

    if-eqz v5, :cond_4

    :goto_4
    if-ge v6, v8, :cond_4

    const/16 v5, 0x3d

    .line 134
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 138
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
