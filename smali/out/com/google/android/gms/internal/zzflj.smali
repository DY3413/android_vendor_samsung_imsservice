.class public final Lcom/google/android/gms/internal/zzflj;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private zzpoc:I

.field private zzpod:I

.field private zzpoe:I

.field private zzpoh:I

.field private zzpoj:I

.field private zzpok:I

.field private final zzpom:I

.field private final zzpvi:I

.field private zzpvj:I

.field private zzpvk:I


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpok:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpod:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpoe:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzflj;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/zzflj;->zzpvi:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/zzflj;->zzpvj:I

    iput p3, p0, Lcom/google/android/gms/internal/zzflj;->zzpom:I

    iput p2, p0, Lcom/google/android/gms/internal/zzflj;->zzpvk:I

    return-void
.end method

.method private final zzcyu()V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpvj:I

    iget v1, p0, Lcom/google/android/gms/internal/zzflj;->zzpoh:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpvj:I

    iget v1, p0, Lcom/google/android/gms/internal/zzflj;->zzpok:I

    if-le v0, v1, :cond_13

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/android/gms/internal/zzflj;->zzpoh:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpvj:I

    return-void

    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpoh:I

    return-void
.end method

.method private final zzcyv()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpvk:I

    iget v1, p0, Lcom/google/android/gms/internal/zzflj;->zzpvj:I

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzflj;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzflj;->zzpvk:I

    aget-byte p0, v1, v0

    return p0

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/zzflr;->zzdcn()Lcom/google/android/gms/internal/zzflr;

    move-result-object p0

    throw p0
.end method

.method private final zzlk(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    if-ltz p1, :cond_21

    iget v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpvk:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/zzflj;->zzpok:I

    if-gt v1, v2, :cond_18

    iget v1, p0, Lcom/google/android/gms/internal/zzflj;->zzpvj:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_13

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpvk:I

    return-void

    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/zzflr;->zzdcn()Lcom/google/android/gms/internal/zzflr;

    move-result-object p0

    throw p0

    :cond_18
    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzflj;->zzlk(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzflr;->zzdcn()Lcom/google/android/gms/internal/zzflr;

    move-result-object p0

    throw p0

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/zzflr;->zzdco()Lcom/google/android/gms/internal/zzflr;

    move-result-object p0

    throw p0
.end method

.method public static zzo([BII)Lcom/google/android/gms/internal/zzflj;
    .registers 4

    .line 0
    new-instance p1, Lcom/google/android/gms/internal/zzflj;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/zzflj;-><init>([BII)V

    return-object p1
.end method


# virtual methods
.method public final getPosition()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpvk:I

    iget p0, p0, Lcom/google/android/gms/internal/zzflj;->zzpvi:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result v0

    if-ltz v0, :cond_21

    iget v1, p0, Lcom/google/android/gms/internal/zzflj;->zzpvj:I

    iget v2, p0, Lcom/google/android/gms/internal/zzflj;->zzpvk:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1c

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzflj;->buffer:[B

    sget-object v4, Lcom/google/android/gms/internal/zzflq;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/zzflj;->zzpvk:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/zzflj;->zzpvk:I

    return-object v1

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/zzflr;->zzdcn()Lcom/google/android/gms/internal/zzflr;

    move-result-object p0

    throw p0

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/zzflr;->zzdco()Lcom/google/android/gms/internal/zzflr;

    move-result-object p0

    throw p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfls;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzflj;->zzpoc:I

    iget v2, p0, Lcom/google/android/gms/internal/zzflj;->zzpod:I

    if-ge v1, v2, :cond_25

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzflj;->zzli(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzflj;->zzpoc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzflj;->zzpoc:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzflj;->zzlf(I)V

    iget p1, p0, Lcom/google/android/gms/internal/zzflj;->zzpoc:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzflj;->zzpoc:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzflj;->zzlj(I)V

    return-void

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/zzflr;->zzdcq()Lcom/google/android/gms/internal/zzflr;

    move-result-object p0

    throw p0
.end method

.method public final zzao(II)[B
    .registers 5

    .line 0
    if-nez p2, :cond_5

    sget-object p0, Lcom/google/android/gms/internal/zzflv;->zzpwe:[B

    return-object p0

    :cond_5
    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/zzflj;->zzpvi:I

    add-int/2addr v1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzflj;->buffer:[B

    const/4 p1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method final zzap(II)V
    .registers 5

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpvk:I

    iget v1, p0, Lcom/google/android/gms/internal/zzflj;->zzpvi:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_28

    if-ltz p1, :cond_f

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/zzflj;->zzpvk:I

    iput p2, p0, Lcom/google/android/gms/internal/zzflj;->zzpoj:I

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x18

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Bad position "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpvk:I

    iget p0, p0, Lcom/google/android/gms/internal/zzflj;->zzpvi:I

    sub-int/2addr v0, p0

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Position "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final zzcxx()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpvk:I

    iget v1, p0, Lcom/google/android/gms/internal/zzflj;->zzpvj:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpoj:I

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpoj:I

    if-eqz v0, :cond_13

    return v0

    :cond_13
    new-instance p0, Lcom/google/android/gms/internal/zzflr;

    const-string v0, "Protocol message contained an invalid tag (zero)."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzflr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzcxz()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyr()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzcya()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result p0

    return p0
.end method

.method public final zzcym()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v0

    if-ltz v0, :cond_7

    return v0

    :cond_7
    and-int/lit8 v0, v0, 0x7f

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v1

    if-ltz v1, :cond_13

    shl-int/lit8 p0, v1, 0x7

    :goto_11
    or-int/2addr p0, v0

    goto :goto_51

    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v1

    if-ltz v1, :cond_21

    shl-int/lit8 p0, v1, 0xe

    goto :goto_11

    :cond_21
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v1

    if-ltz v1, :cond_2f

    shl-int/lit8 p0, v1, 0x15

    goto :goto_11

    :cond_2f
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_50

    const/4 v1, 0x0

    :goto_3e
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4b

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v2

    if-ltz v2, :cond_48

    return v0

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_4b
    invoke-static {}, Lcom/google/android/gms/internal/zzflr;->zzdcp()Lcom/google/android/gms/internal/zzflr;

    move-result-object p0

    throw p0

    :cond_50
    move p0, v0

    :goto_51
    return p0
.end method

.method public final zzcyr()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v0, v3, :cond_18

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v1

    :cond_15
    add-int/lit8 v0, v0, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/zzflr;->zzdcp()Lcom/google/android/gms/internal/zzflr;

    move-result-object p0

    throw p0
.end method

.method public final zzcys()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result p0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public final zzcyt()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result v6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyv()B

    move-result p0

    int-to-long v7, v0

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    int-to-long v0, v1

    and-long/2addr v0, v9

    const/16 v11, 0x8

    shl-long/2addr v0, v11

    or-long/2addr v0, v7

    int-to-long v7, v2

    and-long/2addr v7, v9

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v0, v7

    int-to-long v2, v3

    and-long/2addr v2, v9

    const/16 v7, 0x18

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v9

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v9

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v9

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p0

    and-long/2addr v2, v9

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzlf(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzflr;
        }
    .end annotation

    .line 0
    iget p0, p0, Lcom/google/android/gms/internal/zzflj;->zzpoj:I

    if-ne p0, p1, :cond_5

    return-void

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/zzflr;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzflr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzlg(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    if-eq v0, v1, :cond_3c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_34

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_21

    if-eq v0, v2, :cond_1f

    const/4 p1, 0x5

    if-ne v0, p1, :cond_17

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflj;->zzcys()I

    return v1

    :cond_17
    new-instance p0, Lcom/google/android/gms/internal/zzflr;

    const-string p1, "Protocol message tag had invalid wire type."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzflr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzflj;->zzlg(I)Z

    move-result v0

    if-nez v0, :cond_21

    :cond_2d
    ushr-int/2addr p1, v3

    shl-int/2addr p1, v3

    or-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzflj;->zzlf(I)V

    return v1

    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzflj;->zzlk(I)V

    return v1

    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyt()J

    return v1

    :cond_40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    return v1
.end method

.method public final zzli(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzflr;
        }
    .end annotation

    .line 0
    if-ltz p1, :cond_14

    iget v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpvk:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/zzflj;->zzpok:I

    if-gt p1, v0, :cond_f

    iput p1, p0, Lcom/google/android/gms/internal/zzflj;->zzpok:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyu()V

    return v0

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/zzflr;->zzdcn()Lcom/google/android/gms/internal/zzflr;

    move-result-object p0

    throw p0

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/zzflr;->zzdco()Lcom/google/android/gms/internal/zzflr;

    move-result-object p0

    throw p0
.end method

.method public final zzlj(I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/zzflj;->zzpok:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflj;->zzcyu()V

    return-void
.end method
