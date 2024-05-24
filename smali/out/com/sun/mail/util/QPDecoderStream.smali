.class public Lcom/sun/mail/util/QPDecoderStream;
.super Ljava/io/FilterInputStream;
.source "QPDecoderStream.java"


# instance fields
.field protected ba:[B

.field protected spaces:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 64
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-array p1, v1, [B

    .line 55
    iput-object p1, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public markSupported()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-lez v0, :cond_b

    sub-int/2addr v0, v1

    .line 82
    iput v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    return v2

    .line 86
    :cond_b
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0xa

    if-ne v0, v2, :cond_3a

    .line 90
    :goto_19
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v2, :cond_34

    if-eq v0, v3, :cond_30

    if-eq v0, v6, :cond_30

    if-ne v0, v5, :cond_28

    goto :goto_30

    .line 99
    :cond_28
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast p0, Ljava/io/PushbackInputStream;

    invoke-virtual {p0, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_33

    .line 96
    :cond_30
    :goto_30
    iput v4, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    move v2, v0

    :goto_33
    return v2

    .line 91
    :cond_34
    iget v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    goto :goto_19

    :cond_3a
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_85

    .line 106
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v6, :cond_4b

    .line 114
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result p0

    return p0

    :cond_4b
    if-ne v2, v3, :cond_61

    .line 117
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v6, :cond_5c

    .line 122
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 123
    :cond_5c
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result p0

    return p0

    :cond_61
    if-ne v2, v5, :cond_64

    return v5

    .line 128
    :cond_64
    iget-object v3, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 129
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    .line 131
    :try_start_72
    iget-object v1, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v3}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I

    move-result p0
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_7b} :catch_7c

    return p0

    .line 140
    :catch_7c
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    iget-object p0, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    invoke-virtual {v1, p0}, Ljava/io/PushbackInputStream;->unread([B)V

    :cond_85
    return v0
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p3, :cond_4

    goto :goto_e

    .line 165
    :cond_4
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    if-nez v0, :cond_e

    move v0, v2

    :cond_e
    :goto_e
    return v0

    :cond_f
    add-int v2, p2, v0

    int-to-byte v1, v1

    .line 170
    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
