.class public Lorg/xbill/DNS/Name;
.super Ljava/lang/Object;
.source "Name.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final byteFormat:Ljava/text/DecimalFormat;

.field public static final empty:Lorg/xbill/DNS/Name;

.field private static final emptyLabel:[B

.field private static final lowercase:[B

.field public static final root:Lorg/xbill/DNS/Name;

.field private static final serialVersionUID:J = -0x64b61d2fdd88b60cL

.field private static final wild:Lorg/xbill/DNS/Name;

.field private static final wildLabel:[B


# instance fields
.field private hashcode:I

.field private name:[B

.field private offsets:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 35
    sput-object v1, Lorg/xbill/DNS/Name;->emptyLabel:[B

    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 36
    fill-array-data v1, :array_62

    sput-object v1, Lorg/xbill/DNS/Name;->wildLabel:[B

    .line 57
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 60
    sput-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    const/4 v3, 0x3

    .line 66
    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    move v1, v2

    .line 67
    :goto_22
    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    array-length v4, v3

    if-ge v1, v4, :cond_3e

    const/16 v4, 0x41

    if-lt v1, v4, :cond_38

    const/16 v4, 0x5a

    if-le v1, v4, :cond_30

    goto :goto_38

    :cond_30
    add-int/lit8 v4, v1, -0x41

    add-int/lit8 v4, v4, 0x61

    int-to-byte v4, v4

    .line 71
    aput-byte v4, v3, v1

    goto :goto_3b

    :cond_38
    :goto_38
    int-to-byte v4, v1

    .line 69
    aput-byte v4, v3, v1

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 73
    :cond_3e
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    .line 74
    sget-object v3, Lorg/xbill/DNS/Name;->emptyLabel:[B

    invoke-direct {v1, v3, v2, v0}, Lorg/xbill/DNS/Name;->appendSafe([BII)V

    .line 75
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    new-array v3, v2, [B

    .line 76
    iput-object v3, v1, Lorg/xbill/DNS/Name;->name:[B

    .line 77
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    .line 78
    sget-object v3, Lorg/xbill/DNS/Name;->wildLabel:[B

    invoke-direct {v1, v3, v2, v0}, Lorg/xbill/DNS/Name;->appendSafe([BII)V

    return-void

    :array_62
    .array-data 1
        0x1t
        0x2at
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v3, ""

    .line 206
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f7

    const-string v3, "@"

    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    if-nez v2, :cond_21

    .line 210
    sget-object v1, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    invoke-static {v1, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_24

    .line 212
    :cond_21
    invoke-static {v2, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    :goto_24
    return-void

    :cond_25
    const-string v3, "."

    .line 214
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 215
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v1, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    return-void

    :cond_33
    const/16 v3, 0x40

    new-array v3, v3, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 225
    :goto_3d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const-string v14, "bad escape"

    const/4 v15, 0x3

    if-ge v7, v13, :cond_bf

    .line 226
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v13

    int-to-byte v13, v13

    const-string v5, "label too long"

    const/16 v6, 0x3f

    if-eqz v9, :cond_89

    const/16 v4, 0x30

    if-lt v13, v4, :cond_70

    const/16 v4, 0x39

    if-gt v13, v4, :cond_70

    if-ge v8, v15, :cond_70

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v13, v13, -0x30

    add-int/2addr v12, v13

    const/16 v4, 0xff

    if-gt v12, v4, :cond_6b

    if-ge v8, v15, :cond_69

    goto :goto_b7

    :cond_69
    int-to-byte v13, v12

    goto :goto_7a

    .line 233
    :cond_6b
    invoke-static {v1, v14}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_70
    if-lez v8, :cond_7a

    if-lt v8, v15, :cond_75

    goto :goto_7a

    .line 239
    :cond_75
    invoke-static {v1, v14}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_7a
    :goto_7a
    if-gt v11, v6, :cond_84

    add-int/lit8 v4, v11, 0x1

    .line 243
    aput-byte v13, v3, v11

    move v10, v11

    const/4 v9, 0x0

    :goto_82
    move v11, v4

    goto :goto_b7

    .line 241
    :cond_84
    invoke-static {v1, v5}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_89
    const/16 v4, 0x5c

    if-ne v13, v4, :cond_91

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    goto :goto_b7

    :cond_91
    const/16 v4, 0x2e

    if-ne v13, v4, :cond_ac

    const/4 v4, -0x1

    if-eq v10, v4, :cond_a5

    add-int/lit8 v11, v11, -0x1

    int-to-byte v5, v11

    const/4 v6, 0x0

    aput-byte v5, v3, v6

    const/4 v5, 0x1

    .line 253
    invoke-direct {v0, v1, v3, v6, v5}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    move v10, v4

    const/4 v11, 0x1

    goto :goto_b7

    :cond_a5
    const-string v0, "invalid empty label"

    .line 251
    invoke-static {v1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_ac
    const/4 v4, -0x1

    if-ne v10, v4, :cond_b0

    move v10, v7

    :cond_b0
    if-gt v11, v6, :cond_ba

    add-int/lit8 v4, v11, 0x1

    .line 261
    aput-byte v13, v3, v11

    goto :goto_82

    :goto_b7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    .line 260
    :cond_ba
    invoke-static {v1, v5}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_bf
    if-lez v8, :cond_c9

    if-lt v8, v15, :cond_c4

    goto :goto_c9

    .line 265
    :cond_c4
    invoke-static {v1, v14}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_c9
    :goto_c9
    if-nez v9, :cond_f2

    const/4 v4, -0x1

    if-ne v10, v4, :cond_d6

    .line 269
    sget-object v3, Lorg/xbill/DNS/Name;->emptyLabel:[B

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v1, v3, v5, v4}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    goto :goto_e0

    :cond_d6
    const/4 v4, 0x1

    const/4 v5, 0x0

    sub-int/2addr v11, v4

    int-to-byte v6, v11

    aput-byte v6, v3, v5

    .line 273
    invoke-direct {v0, v1, v3, v5, v4}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    move v4, v5

    :goto_e0
    if-eqz v2, :cond_f1

    if-nez v4, :cond_f1

    .line 276
    iget-object v3, v2, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {v2, v5}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v4

    .line 277
    invoke-direct/range {p2 .. p2}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v2

    .line 276
    invoke-direct {v0, v1, v3, v4, v2}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    :cond_f1
    return-void

    .line 267
    :cond_f2
    invoke-static {v1, v14}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_f7
    const-string v0, "empty name"

    .line 207
    invoke-static {v1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_a
    :goto_a
    if-nez v2, :cond_b9

    .line 352
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    and-int/lit16 v5, v4, 0xc0

    const/4 v6, 0x1

    if-eqz v5, :cond_93

    const/16 v7, 0xc0

    if-ne v5, v7, :cond_8b

    .line 367
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    and-int/lit16 v4, v4, -0xc1

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v5, v4

    const-string/jumbo v4, "verbosecompression"

    .line 369
    invoke-static {v4}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 370
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "currently "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v9, ", pointer to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    :cond_4d
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-ge v5, v7, :cond_83

    if-nez v3, :cond_5b

    .line 376
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->save()V

    move v3, v6

    .line 379
    :cond_5b
    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 380
    invoke-static {v4}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 381
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "current name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v7, "\', seeking to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 374
    :cond_83
    new-instance p0, Lorg/xbill/DNS/WireParseException;

    const-string p1, "bad compression"

    invoke-direct {p0, p1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 385
    :cond_8b
    new-instance p0, Lorg/xbill/DNS/WireParseException;

    const-string p1, "bad label type"

    invoke-direct {p0, p1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 355
    :cond_93
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v5

    const/16 v7, 0x80

    if-ge v5, v7, :cond_b0

    if-nez v4, :cond_a5

    .line 358
    sget-object v2, Lorg/xbill/DNS/Name;->emptyLabel:[B

    invoke-direct {p0, v2, v1, v6}, Lorg/xbill/DNS/Name;->append([BII)V

    move v2, v6

    goto/16 :goto_a

    :cond_a5
    int-to-byte v5, v4

    aput-byte v5, v0, v1

    .line 362
    invoke-virtual {p1, v0, v6, v4}, Lorg/xbill/DNS/DNSInput;->readByteArray([BII)V

    .line 363
    invoke-direct {p0, v0, v1, v6}, Lorg/xbill/DNS/Name;->append([BII)V

    goto/16 :goto_a

    .line 356
    :cond_b0
    new-instance p0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo p1, "too many labels"

    invoke-direct {p0, p1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b9
    if-eqz v3, :cond_be

    .line 389
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->restore()V

    :cond_be
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .registers 6

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    if-gt p2, v0, :cond_24

    .line 413
    iget-object v1, p1, Lorg/xbill/DNS/Name;->name:[B

    iput-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    sub-int/2addr v0, p2

    .line 414
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->setlabels(I)V

    const/4 v1, 0x0

    :goto_12
    const/4 v2, 0x7

    if-ge v1, v2, :cond_23

    if-ge v1, v0, :cond_23

    add-int v2, v1, p2

    .line 416
    invoke-direct {p1, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Name;->setoffset(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_23
    return-void

    .line 411
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "attempted to remove too many labels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final append([BII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    array-length v0, v0

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    sub-int/2addr v0, v2

    :goto_d
    move v4, p2

    move v2, v1

    move v3, v2

    :goto_10
    if-ge v2, p3, :cond_27

    .line 144
    aget-byte v5, p1, v4

    const/16 v6, 0x3f

    if-gt v5, v6, :cond_1f

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 146
    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid label"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    add-int v2, v0, v3

    const/16 v4, 0xff

    if-gt v2, v4, :cond_65

    .line 154
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v4

    add-int v5, v4, p3

    const/16 v6, 0x80

    if-gt v5, v6, :cond_5c

    .line 158
    new-array v2, v2, [B

    if-eqz v0, :cond_44

    .line 160
    iget-object v6, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v7

    invoke-static {v6, v7, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :cond_44
    invoke-static {p1, p2, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    :goto_49
    if-ge v1, p3, :cond_58

    add-int p1, v4, v1

    .line 164
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 165
    aget-byte p1, v2, v0

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 167
    :cond_58
    invoke-direct {p0, v5}, Lorg/xbill/DNS/Name;->setlabels(I)V

    return-void

    .line 157
    :cond_5c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "too many labels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_65
    new-instance p0, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {p0}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    throw p0
.end method

.method private final appendFromString(Ljava/lang/String;[BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 180
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_3
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    const-string p0, "Name too long"

    .line 183
    invoke-static {p1, p0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p0

    throw p0
.end method

.method private final appendSafe([BII)V
    .registers 4

    .line 190
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_3
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method private byteString([BI)Ljava/lang/String;
    .registers 9

    .line 592
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v0, p2, 0x1

    .line 593
    aget-byte p2, p1, p2

    move v1, v0

    :goto_a
    add-int v2, v0, p2

    if-ge v1, v2, :cond_59

    .line 595
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    const/16 v4, 0x5c

    if-le v2, v3, :cond_49

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_1d

    goto :goto_49

    :cond_1d
    const/16 v3, 0x22

    if-eq v2, v3, :cond_41

    const/16 v3, 0x28

    if-eq v2, v3, :cond_41

    const/16 v3, 0x29

    if-eq v2, v3, :cond_41

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_41

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_41

    if-eq v2, v4, :cond_41

    const/16 v3, 0x40

    if-eq v2, v3, :cond_41

    const/16 v3, 0x24

    if-ne v2, v3, :cond_3c

    goto :goto_41

    :cond_3c
    int-to-char v2, v2

    .line 607
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_56

    .line 603
    :cond_41
    :goto_41
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v2, v2

    .line 604
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_56

    .line 597
    :cond_49
    :goto_49
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 598
    sget-object v3, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 609
    :cond_59
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .registers 8

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    if-nez v1, :cond_10

    .line 125
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    iput-object v0, p1, Lorg/xbill/DNS/Name;->name:[B

    .line 126
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    iput-wide v0, p1, Lorg/xbill/DNS/Name;->offsets:J

    goto :goto_38

    .line 128
    :cond_10
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    .line 129
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 130
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    .line 131
    new-array v4, v2, [B

    iput-object v4, p1, Lorg/xbill/DNS/Name;->name:[B

    .line 132
    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v5, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_25
    if-ge v0, v3, :cond_35

    const/4 v2, 0x7

    if-ge v0, v2, :cond_35

    .line 134
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {p1, v0, v2}, Lorg/xbill/DNS/Name;->setoffset(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 135
    :cond_35
    invoke-direct {p1, v3}, Lorg/xbill/DNS/Name;->setlabels(I)V

    :goto_38
    return-void
.end method

.method private final equals([BI)Z
    .registers 12

    .line 772
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    const/4 v1, 0x0

    .line 773
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    move v3, v1

    :goto_a
    if-ge v3, v0, :cond_47

    .line 774
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v2

    aget-byte v5, p1, p2

    if-eq v4, v5, :cond_15

    return v1

    :cond_15
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, 0x1

    const/16 v5, 0x3f

    if-gt v4, v5, :cond_3f

    move v5, v1

    :goto_1e
    if-ge v5, v4, :cond_3c

    .line 781
    sget-object v6, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v7, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v6, v2

    add-int/lit8 v7, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    aget-byte p2, v6, p2

    if-eq v2, p2, :cond_37

    return v1

    :cond_37
    add-int/lit8 v5, v5, 0x1

    move p2, v7

    move v2, v8

    goto :goto_1e

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 779
    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid label"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    const/4 p0, 0x1

    return p0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 320
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p0

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    const-string v0, "@"

    .line 302
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    return-object p1

    :cond_b
    const-string v0, "."

    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 305
    sget-object p0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    return-object p0

    .line 307
    :cond_16
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    return-object v0
.end method

.method private final getlabels()I
    .registers 5

    .line 119
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private final offset(I)I
    .registers 5

    if-nez p1, :cond_a

    .line 96
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    if-ltz p1, :cond_31

    .line 98
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    if-ge p1, v0, :cond_31

    const/4 v0, 0x7

    if-ge p1, v0, :cond_1f

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x8

    .line 102
    iget-wide p0, p0, Lorg/xbill/DNS/Name;->offsets:J

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_1f
    const/4 v0, 0x6

    .line 104
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    :goto_24
    if-ge v0, p1, :cond_30

    .line 106
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v2, v2, v1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_30
    return v1

    .line 99
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "label out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;
    .registers 5

    .line 172
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\': "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final setlabels(I)V
    .registers 6

    .line 113
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v2, -0x100

    and-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    .line 114
    iput-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    return-void
.end method

.method private final setoffset(II)V
    .registers 8

    const/4 v0, 0x7

    if-lt p1, v0, :cond_4

    return-void

    :cond_4
    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x8

    .line 90
    iget-wide v1, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v3, 0xff

    shl-long/2addr v3, v0

    not-long v3, v3

    and-long/2addr v1, v3

    int-to-long p1, p2

    shl-long/2addr p1, v0

    or-long/2addr p1, v1

    .line 91
    iput-wide p1, p0, Lorg/xbill/DNS/Name;->offsets:J

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 19

    move-object/from16 v0, p0

    .line 834
    move-object/from16 v1, p1

    check-cast v1, Lorg/xbill/DNS/Name;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    return v2

    .line 839
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    .line 840
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v4

    if-le v3, v4, :cond_16

    move v5, v4

    goto :goto_17

    :cond_16
    move v5, v3

    :goto_17
    const/4 v6, 0x1

    move v7, v6

    :goto_19
    if-gt v7, v5, :cond_5b

    sub-int v8, v3, v7

    .line 844
    invoke-direct {v0, v8}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v8

    sub-int v9, v4, v7

    .line 845
    invoke-direct {v1, v9}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v9

    .line 846
    iget-object v10, v0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v10, v10, v8

    .line 847
    iget-object v11, v1, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v11, v11, v9

    move v12, v2

    :goto_30
    if-ge v12, v10, :cond_54

    if-ge v12, v11, :cond_54

    .line 849
    sget-object v13, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v14, v0, Lorg/xbill/DNS/Name;->name:[B

    add-int v15, v12, v8

    add-int/2addr v15, v6

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    aget-byte v14, v13, v14

    iget-object v15, v1, Lorg/xbill/DNS/Name;->name:[B

    add-int v16, v12, v9

    add-int/lit8 v16, v16, 0x1

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    aget-byte v13, v13, v15

    sub-int/2addr v14, v13

    if-eqz v14, :cond_51

    return v14

    :cond_51
    add-int/lit8 v12, v12, 0x1

    goto :goto_30

    :cond_54
    if-eq v10, v11, :cond_58

    sub-int/2addr v10, v11

    return v10

    :cond_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_5b
    sub-int/2addr v3, v4

    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_39

    .line 795
    instance-of v1, p1, Lorg/xbill/DNS/Name;

    if-nez v1, :cond_c

    goto :goto_39

    .line 797
    :cond_c
    check-cast p1, Lorg/xbill/DNS/Name;

    .line 798
    iget v1, p1, Lorg/xbill/DNS/Name;->hashcode:I

    if-nez v1, :cond_15

    .line 799
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->hashCode()I

    .line 800
    :cond_15
    iget v1, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-nez v1, :cond_1c

    .line 801
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->hashCode()I

    .line 802
    :cond_1c
    iget v1, p1, Lorg/xbill/DNS/Name;->hashcode:I

    iget v2, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-eq v1, v2, :cond_23

    return v0

    .line 804
    :cond_23
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    if-eq v1, v2, :cond_2e

    return v0

    .line 806
    :cond_2e
    iget-object v1, p1, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p1, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result p1

    invoke-direct {p0, v1, p1}, Lorg/xbill/DNS/Name;->equals([BI)Z

    move-result p0

    return p0

    :cond_39
    :goto_39
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 814
    iget v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    const/4 v0, 0x0

    .line 817
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    :goto_a
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    shl-int/lit8 v3, v0, 0x3

    .line 818
    sget-object v4, Lorg/xbill/DNS/Name;->lowercase:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v4, v2

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 819
    :cond_1e
    iput v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    return v0
.end method

.method public isAbsolute()Z
    .registers 5

    .line 552
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 555
    :cond_8
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result p0

    aget-byte p0, v2, p0

    if-nez p0, :cond_15

    move v1, v3

    :cond_15
    return v1
.end method

.method public labels()I
    .registers 1

    .line 573
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 648
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Name;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 8

    .line 619
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    if-nez v0, :cond_9

    const-string p0, "@"

    return-object p0

    :cond_9
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    .line 622
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    aget-byte v2, v2, v3

    if-nez v2, :cond_1a

    const-string p0, "."

    return-object p0

    .line 624
    :cond_1a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 625
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    :goto_23
    if-ge v1, v0, :cond_53

    .line 626
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v3

    const/16 v5, 0x3f

    if-gt v4, v5, :cond_4b

    const/16 v5, 0x2e

    if-nez v4, :cond_37

    if-nez p1, :cond_53

    .line 631
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_53

    :cond_37
    if-lez v1, :cond_3c

    .line 635
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 636
    :cond_3c
    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v5, v3}, Lorg/xbill/DNS/Name;->byteString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 628
    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid label"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 639
    :cond_53
    :goto_53
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V
    .registers 9

    .line 684
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 688
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_44

    if-nez v2, :cond_14

    move-object v3, p0

    goto :goto_19

    .line 694
    :cond_14
    new-instance v3, Lorg/xbill/DNS/Name;

    invoke-direct {v3, p0, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    :goto_19
    if-eqz p2, :cond_20

    .line 697
    invoke-virtual {p2, v3}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v4

    goto :goto_21

    :cond_20
    const/4 v4, -0x1

    :goto_21
    if-ltz v4, :cond_2b

    const p0, 0xc000

    or-int/2addr p0, v4

    .line 700
    invoke-virtual {p1, p0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    return-void

    :cond_2b
    if-eqz p2, :cond_34

    .line 704
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v4

    invoke-virtual {p2, v4, v3}, Lorg/xbill/DNS/Compression;->add(ILorg/xbill/DNS/Name;)V

    .line 705
    :cond_34
    invoke-direct {p0, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    .line 706
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v4, v3, v5}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 709
    :cond_44
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    return-void

    .line 685
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "toWire() called on non-absolute name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .registers 4

    if-eqz p3, :cond_6

    .line 765
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    goto :goto_9

    .line 767
    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    :goto_9
    return-void
.end method

.method public toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V
    .registers 2

    .line 729
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object p0

    .line 730
    invoke-virtual {p1, p0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    return-void
.end method

.method public toWireCanonical()[B
    .registers 13

    .line 739
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    new-array p0, v1, [B

    return-object p0

    .line 742
    :cond_a
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v2, v2

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 743
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    move v4, v1

    move v5, v4

    :goto_1a
    if-ge v4, v0, :cond_4e

    .line 744
    iget-object v6, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v6, v6, v3

    const/16 v7, 0x3f

    if-gt v6, v7, :cond_46

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 747
    aput-byte v6, v2, v5

    move v5, v7

    move v7, v1

    :goto_2c
    if-ge v7, v6, :cond_43

    add-int/lit8 v8, v5, 0x1

    .line 749
    sget-object v9, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v10, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v10, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v9, v3

    aput-byte v3, v2, v5

    add-int/lit8 v7, v7, 0x1

    move v5, v8

    move v3, v11

    goto :goto_2c

    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 746
    :cond_46
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "invalid label"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    return-object v2
.end method
