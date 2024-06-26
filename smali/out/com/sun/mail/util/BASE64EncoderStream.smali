.class public Lcom/sun/mail/util/BASE64EncoderStream;
.super Ljava/io/FilterOutputStream;
.source "BASE64EncoderStream.java"


# static fields
.field private static newline:[B

.field private static final pem_array:[C


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private bytesPerLine:I

.field private count:I

.field private lineLimit:I

.field private noCRLF:Z

.field private outbuf:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 64
    fill-array-data v0, :array_12

    sput-object v0, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 210
    fill-array-data v0, :array_18

    sput-object v0, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    return-void

    :array_12
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_18
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    const/16 v0, 0x4c

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 6

    .line 77
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    .line 59
    iput p1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 62
    iput-boolean p1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    const/4 p1, 0x3

    new-array v0, p1, [B

    .line 78
    iput-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    const v0, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p2, v0, :cond_18

    if-ge p2, v2, :cond_1c

    .line 80
    :cond_18
    iput-boolean v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    const/16 p2, 0x4c

    .line 83
    :cond_1c
    div-int/2addr p2, v2

    mul-int/2addr p2, v2

    .line 84
    iput p2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    .line 85
    div-int/lit8 v0, p2, 0x4

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    .line 87
    iget-boolean p1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-eqz p1, :cond_2e

    .line 88
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    goto :goto_3d

    :cond_2e
    add-int/lit8 p1, p2, 0x2

    .line 90
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    const/16 p0, 0xd

    .line 91
    aput-byte p0, p1, p2

    add-int/2addr p2, v1

    const/16 p0, 0xa

    .line 92
    aput-byte p0, p1, p2

    :goto_3d
    return-void
.end method

.method private encode()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    invoke-static {v0}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v0

    .line 230
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    iget v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 232
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 235
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    if-lt v1, v0, :cond_2c

    .line 236
    iget-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v0, :cond_2a

    .line 237
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 238
    :cond_2a
    iput v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    :cond_2c
    return-void
.end method

.method private static encode([BII[B)[B
    .registers 10

    if-nez p3, :cond_8

    .line 262
    invoke-static {p2}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result p3

    new-array p3, p3, [B

    :cond_8
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    const/4 v2, 0x3

    if-ge p2, v2, :cond_6c

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne p2, v3, :cond_36

    .line 281
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x4

    add-int/lit8 p1, v1, 0x3

    .line 283
    aput-byte v2, p3, p1

    add-int/lit8 p1, v1, 0x2

    .line 284
    aput-byte v2, p3, p1

    add-int/lit8 p1, v1, 0x1

    .line 285
    sget-object p2, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v2, p0, 0x3f

    aget-char v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, p1

    shr-int/lit8 p0, p0, 0x6

    add-int/2addr v1, v0

    and-int/lit8 p0, p0, 0x3f

    .line 287
    aget-char p0, p2, p0

    int-to-byte p0, p0

    aput-byte p0, p3, v1

    goto :goto_6b

    :cond_36
    const/4 v3, 0x2

    if-ne p2, v3, :cond_6b

    add-int/lit8 p2, p1, 0x1

    .line 289
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    .line 291
    aget-byte p0, p0, p2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    shl-int/2addr p0, v3

    add-int/lit8 p1, v1, 0x3

    .line 293
    aput-byte v2, p3, p1

    add-int/lit8 p1, v1, 0x2

    .line 294
    sget-object p2, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v2, p0, 0x3f

    aget-char v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, p1

    shr-int/lit8 p0, p0, 0x6

    add-int/lit8 p1, v1, 0x1

    and-int/lit8 v2, p0, 0x3f

    .line 296
    aget-char v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, p1

    shr-int/lit8 p0, p0, 0x6

    add-int/2addr v1, v0

    and-int/lit8 p0, p0, 0x3f

    .line 298
    aget-char p0, p2, p0

    int-to-byte p0, p0

    aput-byte p0, p3, v1

    :cond_6b
    :goto_6b
    return-object p3

    :cond_6c
    add-int/lit8 v2, p1, 0x1

    .line 266
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 v3, v2, 0x1

    .line 268
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 v2, v3, 0x1

    .line 270
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr p1, v3

    add-int/lit8 v3, v1, 0x3

    .line 271
    sget-object v4, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v5, p1, 0x3f

    aget-char v5, v4, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 v3, v1, 0x2

    and-int/lit8 v5, p1, 0x3f

    .line 273
    aget-char v5, v4, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 v5, p1, 0x3f

    .line 275
    aget-char v5, v4, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 v3, v1, 0x0

    and-int/lit8 p1, p1, 0x3f

    .line 277
    aget-char p1, v4, p1

    int-to-byte p1, p1

    aput-byte p1, p3, v3

    add-int/lit8 p2, p2, -0x3

    add-int/lit8 v1, v1, 0x4

    move p1, v2

    goto/16 :goto_a
.end method

.method private static encodedSize(I)I
    .registers 1

    add-int/lit8 p0, p0, 0x2

    .line 308
    div-int/lit8 p0, p0, 0x3

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 201
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->flush()V

    .line 202
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    if-lez v0, :cond_18

    iget-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v0, :cond_18

    .line 203
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 204
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 206
    :cond_18
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 207
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 189
    :try_start_1
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    if-lez v0, :cond_b

    .line 190
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode()V

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    .line 193
    :cond_b
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 194
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    const/4 p1, 0x3

    if-ne v2, p1, :cond_15

    .line 177
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode()V

    const/4 p1, 0x0

    .line 178
    iput p1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 180
    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/BASE64EncoderStream;->write([BII)V

    return-void
.end method

.method public declared-synchronized write([BII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    add-int/2addr p3, p2

    .line 121
    :goto_2
    :try_start_2
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    if-eqz v0, :cond_12

    if-lt p2, p3, :cond_9

    goto :goto_12

    :cond_9
    add-int/lit8 v0, p2, 0x1

    .line 122
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lcom/sun/mail/util/BASE64EncoderStream;->write(I)V

    move p2, v0

    goto :goto_2

    .line 125
    :cond_12
    :goto_12
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    add-int v1, p2, v0

    const/4 v2, 0x0

    if-ge v1, p3, :cond_44

    .line 128
    invoke-static {v0}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v3

    .line 129
    iget-boolean v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v4, :cond_36

    .line 130
    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0xd

    aput-byte v6, v4, v3

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0xa

    .line 131
    aput-byte v6, v4, v5

    .line 133
    :cond_36
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, p2, v0, v5}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object p2

    invoke-virtual {v4, p2, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 135
    iput v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    move p2, v1

    .line 139
    :cond_44
    :goto_44
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    add-int v1, p2, v0

    if-lt v1, p3, :cond_75

    add-int/lit8 v0, p2, 0x3

    if-ge v0, p3, :cond_69

    sub-int v0, p3, p2

    .line 145
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x3

    .line 147
    invoke-static {v0}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v1

    .line 148
    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, p2, v0, v4}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr p2, v0

    .line 150
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I
    :try_end_69
    .catchall {:try_start_2 .. :try_end_69} :catchall_84

    :cond_69
    :goto_69
    if-lt p2, p3, :cond_6d

    .line 156
    monitor-exit p0

    return-void

    .line 155
    :cond_6d
    :try_start_6d
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/BASE64EncoderStream;->write(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_69

    .line 140
    :cond_75
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, p2, v0, v3}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 139
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I
    :try_end_82
    .catchall {:try_start_6d .. :try_end_82} :catchall_84

    add-int/2addr p2, v0

    goto :goto_44

    :catchall_84
    move-exception p1

    monitor-exit p0

    throw p1
.end method
