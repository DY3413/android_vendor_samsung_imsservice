.class public Lcom/google/flatbuffers/FlatBufferBuilder;
.super Ljava/lang/Object;
.source "FlatBufferBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;,
        Lcom/google/flatbuffers/FlatBufferBuilder$HeapByteBufferFactory;
    }
.end annotation


# static fields
.field static final utf8charset:Ljava/nio/charset/Charset;


# instance fields
.field bb:Ljava/nio/ByteBuffer;

.field bb_factory:Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;

.field dst:Ljava/nio/ByteBuffer;

.field encoder:Ljava/nio/charset/CharsetEncoder;

.field finished:Z

.field force_defaults:Z

.field minalign:I

.field nested:Z

.field num_vtables:I

.field object_start:I

.field space:I

.field vector_num_elems:I

.field vtable:[I

.field vtable_in_use:I

.field vtables:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 47
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/flatbuffers/FlatBufferBuilder;->utf8charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 82
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder$HeapByteBufferFactory;

    invoke-direct {v0}, Lcom/google/flatbuffers/FlatBufferBuilder$HeapByteBufferFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;)V
    .registers 6

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->minalign:I

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable_in_use:I

    .line 51
    iput-boolean v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    .line 52
    iput-boolean v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->finished:Z

    const/16 v2, 0x10

    new-array v2, v2, [I

    .line 54
    iput-object v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtables:[I

    .line 55
    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->num_vtables:I

    .line 56
    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vector_num_elems:I

    .line 57
    iput-boolean v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    .line 58
    sget-object v1, Lcom/google/flatbuffers/FlatBufferBuilder;->utf8charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-gtz p1, :cond_33

    move p1, v0

    .line 71
    :cond_33
    iput p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    .line 72
    iput-object p2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb_factory:Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;

    .line 73
    invoke-interface {p2, p1}, Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static growByteBuffer(Ljava/nio/ByteBuffer;Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;)Ljava/nio/ByteBuffer;
    .registers 5

    .line 201
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    and-int/2addr v1, v0

    if-nez v1, :cond_1b

    shl-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 206
    invoke-interface {p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sub-int/2addr v1, v0

    .line 207
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 208
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p1

    .line 203
    :cond_1b
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "FlatBuffers: cannot grow buffer beyond 2 gigabytes."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public addBoolean(IZZ)V
    .registers 5

    .line 678
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_6

    if-eq p2, p3, :cond_c

    .line 679
    :cond_6
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addBoolean(Z)V

    .line 680
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    :cond_c
    return-void
.end method

.method public addBoolean(Z)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 332
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->putBoolean(Z)V

    return-void
.end method

.method public addByte(B)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 343
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->putByte(B)V

    return-void
.end method

.method public addByte(IBI)V
    .registers 5

    .line 694
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_6

    if-eq p2, p3, :cond_c

    .line 695
    :cond_6
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(B)V

    .line 696
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    :cond_c
    return-void
.end method

.method public addFloat(F)V
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 382
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 383
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->putFloat(F)V

    return-void
.end method

.method public addFloat(IFD)V
    .registers 7

    .line 758
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_9

    float-to-double v0, p2

    cmpl-double p3, v0, p3

    if-eqz p3, :cond_f

    .line 759
    :cond_9
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(F)V

    .line 760
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    :cond_f
    return-void
.end method

.method public addInt(I)V
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 362
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 363
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->putInt(I)V

    return-void
.end method

.method public addInt(III)V
    .registers 5

    .line 726
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_6

    if-eq p2, p3, :cond_c

    .line 727
    :cond_6
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(I)V

    .line 728
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    :cond_c
    return-void
.end method

.method public addLong(IJJ)V
    .registers 7

    .line 742
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_8

    cmp-long p4, p2, p4

    if-eqz p4, :cond_e

    .line 743
    :cond_8
    invoke-virtual {p0, p2, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->addLong(J)V

    .line 744
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    :cond_e
    return-void
.end method

.method public addLong(J)V
    .registers 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 372
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->putLong(J)V

    return-void
.end method

.method public addOffset(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 402
    invoke-virtual {p0, v1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 403
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v0

    if-gt p1, v0, :cond_15

    .line 407
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/2addr v0, v1

    .line 408
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->putInt(I)V

    return-void

    .line 404
    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is higher than value relative to the end of the buffer: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public addOffset(III)V
    .registers 5

    .line 790
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_6

    if-eq p2, p3, :cond_c

    .line 791
    :cond_6
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    .line 792
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->slot(I)V

    :cond_c
    return-void
.end method

.method public addShort(S)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 352
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 353
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->putShort(S)V

    return-void
.end method

.method public createString(Ljava/lang/CharSequence;)I
    .registers 5

    .line 534
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-float v0, v0

    .line 535
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 536
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->dst:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_23

    :cond_17
    const/16 v1, 0x80

    .line 537
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->dst:Ljava/nio/ByteBuffer;

    .line 540
    :cond_23
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->dst:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 542
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_2f

    check-cast p1, Ljava/nio/CharBuffer;

    goto :goto_33

    .line 543
    :cond_2f
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 544
    :goto_33
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->dst:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p1

    .line 545
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 547
    :try_start_42
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_45
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_4d

    :catch_46
    move-exception p0

    .line 549
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 553
    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->dst:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 554
    iget-object p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->dst:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public createString(Ljava/nio/ByteBuffer;)I
    .registers 5

    .line 564
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    .line 565
    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(B)V

    const/4 v1, 0x1

    .line 566
    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    .line 567
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 568
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 569
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result p0

    return p0
.end method

.method public dataBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 952
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finished()V

    .line 953
    iget-object p0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public endObject()I
    .registers 12

    .line 827
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    if-eqz v0, :cond_c5

    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    if-eqz v0, :cond_c5

    const/4 v0, 0x0

    .line 829
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(I)V

    .line 830
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v1

    .line 832
    iget v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable_in_use:I

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_1f

    .line 834
    iget-object v3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    aget v3, v3, v2

    if-nez v3, :cond_1f

    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_1f
    add-int/lit8 v3, v2, 0x1

    :goto_21
    if-ltz v2, :cond_34

    .line 839
    iget-object v4, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    aget v4, v4, v2

    if-eqz v4, :cond_2c

    sub-int v4, v1, v4

    goto :goto_2d

    :cond_2c
    move v4, v0

    :goto_2d
    int-to-short v4, v4

    .line 840
    invoke-virtual {p0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->addShort(S)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 844
    :cond_34
    iget v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->object_start:I

    sub-int v2, v1, v2

    int-to-short v2, v2

    invoke-virtual {p0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addShort(S)V

    const/4 v2, 0x2

    add-int/2addr v3, v2

    mul-int/2addr v3, v2

    int-to-short v3, v3

    .line 845
    invoke-virtual {p0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->addShort(S)V

    move v3, v0

    .line 850
    :goto_44
    iget v4, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->num_vtables:I

    if-ge v3, v4, :cond_84

    .line 851
    iget-object v4, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    iget-object v5, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtables:[I

    aget v5, v5, v3

    sub-int/2addr v4, v5

    .line 852
    iget v5, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    .line 853
    iget-object v6, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    .line 854
    iget-object v7, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    if-ne v6, v7, :cond_81

    move v7, v2

    :goto_64
    if-ge v7, v6, :cond_7c

    .line 856
    iget-object v8, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    add-int v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    iget-object v9, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    add-int v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v9

    if-eq v8, v9, :cond_79

    goto :goto_81

    :cond_79
    add-int/lit8 v7, v7, 0x2

    goto :goto_64

    .line 860
    :cond_7c
    iget-object v4, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtables:[I

    aget v3, v4, v3

    goto :goto_85

    :cond_81
    :goto_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_84
    move v3, v0

    :goto_85
    if-eqz v3, :cond_97

    .line 868
    iget-object v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    .line 870
    iget-object v4, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    sub-int/2addr v3, v1

    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_c2

    .line 874
    :cond_97
    iget v3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->num_vtables:I

    iget-object v4, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtables:[I

    array-length v5, v4

    if-ne v3, v5, :cond_a5

    mul-int/2addr v3, v2

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtables:[I

    .line 875
    :cond_a5
    iget-object v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtables:[I

    iget v3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->num_vtables:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->num_vtables:I

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v4

    aput v4, v2, v3

    .line 877
    iget-object v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 880
    :goto_c2
    iput-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    return v1

    .line 828
    :cond_c5
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "FlatBuffers: endObject called without startObject"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public endVector()I
    .registers 2

    .line 471
    iget-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 473
    iput-boolean v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    .line 474
    iget v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vector_num_elems:I

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->putInt(I)V

    .line 475
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result p0

    return p0

    .line 472
    :cond_11
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "FlatBuffers: endVector called without startVector"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public finish(I)V
    .registers 4

    .line 907
    iget v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->minalign:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 908
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    .line 909
    iget-object p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x1

    .line 910
    iput-boolean p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->finished:Z

    return-void
.end method

.method public finished()V
    .registers 2

    .line 592
    iget-boolean p0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->finished:Z

    if-eqz p0, :cond_5

    return-void

    .line 593
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish()."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public notNested()V
    .registers 2

    .line 603
    iget-boolean p0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    if-nez p0, :cond_5

    return-void

    .line 604
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "FlatBuffers: object serialization must not be nested."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public offset()I
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget p0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public pad(I)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_12

    .line 227
    iget-object v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v2, v3, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return-void
.end method

.method public prep(II)V
    .registers 7

    .line 242
    iget v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->minalign:I

    if-le p1, v0, :cond_6

    iput p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->minalign:I

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    not-int v0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    .line 247
    :goto_16
    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int v2, v0, p1

    add-int/2addr v2, p2

    if-ge v1, v2, :cond_38

    .line 248
    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    .line 249
    iget-object v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb_factory:Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;

    invoke-static {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->growByteBuffer(Ljava/nio/ByteBuffer;Lcom/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 250
    iget v3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    goto :goto_16

    .line 252
    :cond_38
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->pad(I)V

    return-void
.end method

.method public putBoolean(Z)V
    .registers 4

    .line 262
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    int-to-byte p0, p1

    invoke-virtual {v0, v1, p0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putByte(B)V
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putFloat(F)V
    .registers 4

    .line 312
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putInt(I)V
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putLong(J)V
    .registers 5

    .line 302
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putShort(S)V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public required(II)V
    .registers 4

    .line 892
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p1

    .line 893
    iget-object p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    sub-int/2addr v0, p1

    .line 894
    iget-object p0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    if-eqz p0, :cond_1d

    return-void

    .line 897
    :cond_1d
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FlatBuffers: field "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " must be set"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public sizedByteArray()[B
    .registers 4

    .line 993
    iget v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    iget-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray(II)[B

    move-result-object p0

    return-object p0
.end method

.method public sizedByteArray(II)[B
    .registers 4

    .line 980
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finished()V

    .line 981
    new-array p2, p2, [B

    .line 982
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 983
    iget-object p0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p2
.end method

.method public slot(I)V
    .registers 3

    .line 817
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result p0

    aput p0, v0, p1

    return-void
.end method

.method public startObject(I)V
    .registers 4

    .line 660
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->notNested()V

    .line 661
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    if-eqz v0, :cond_a

    array-length v0, v0

    if-ge v0, p1, :cond_e

    :cond_a
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    .line 662
    :cond_e
    iput p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable_in_use:I

    .line 663
    iget-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    const/4 p1, 0x1

    .line 664
    iput-boolean p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    .line 665
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->offset()I

    move-result p1

    iput p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->object_start:I

    return-void
.end method

.method public startVector(III)V
    .registers 4

    .line 456
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->notNested()V

    .line 457
    iput p2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vector_num_elems:I

    mul-int/2addr p1, p2

    const/4 p2, 0x4

    .line 458
    invoke-virtual {p0, p2, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 459
    invoke-virtual {p0, p3, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->prep(II)V

    const/4 p1, 0x1

    .line 460
    iput-boolean p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    return-void
.end method
