.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;
.super Lcom/google/flatbuffers/Table;
.source "ImNotificationParam.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addImdnDateTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addImdnMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addImdnOriginalTo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addImdnRecRoute(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createImNotificationParam(Lcom/google/flatbuffers/FlatBufferBuilder;IIIII)I
    .locals 1

    const/4 v0, 0x5

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 37
    invoke-static {p0, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addImdnRecRoute(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 38
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addImdnOriginalTo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 39
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 40
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addImdnDateTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 41
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addImdnMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 42
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->endImNotificationParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static createImdnRecRouteVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 2

    .line 53
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result p0

    return p0
.end method

.method public static createStatusVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 2

    .line 49
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result p0

    return p0
.end method

.method public static endImNotificationParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x4

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    const/4 v1, 0x6

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsImNotificationParam(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;
    .locals 1

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->getRootAsImNotificationParam(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsImNotificationParam(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;
    .locals 2

    .line 13
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;

    move-result-object p0

    return-object p0
.end method

.method public static startImNotificationParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x5

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method

.method public static startImdnRecRouteVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x4

    .line 54
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startStatusVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x4

    .line 50
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    iput-object p2, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public imdnDateTime()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x6

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__string(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public imdnDateTimeAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public imdnMessageId()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__string(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public imdnMessageIdAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public imdnOriginalTo()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__string(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public imdnOriginalToAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public imdnRecRoute(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;
    .locals 1

    .line 26
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->imdnRecRoute(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;

    move-result-object p0

    return-object p0
.end method

.method public imdnRecRoute(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;
    .locals 1

    const/16 v0, 0xc

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__vector(I)I

    move-result v0

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__indirect(I)I

    move-result p2

    iget-object p0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public imdnRecRouteLength()I
    .locals 1

    const/16 v0, 0xc

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__vector_len(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public status(I)I
    .locals 2

    const/16 v0, 0x8

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__vector(I)I

    move-result p0

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p0, p1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public statusAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x4

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public statusLength()I
    .locals 1

    const/16 v0, 0x8

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__vector_len(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
