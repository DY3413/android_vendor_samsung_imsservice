.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;
.super Lcom/google/flatbuffers/Table;
.source "RequestImSetMoreInfoToSipUA.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createRequestImSetMoreInfoToSipUA(Lcom/google/flatbuffers/FlatBufferBuilder;I)I
    .registers 3

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 23
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 24
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;->endRequestImSetMoreInfoToSipUA(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endRequestImSetMoreInfoToSipUA(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 3

    .line 30
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x4

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsRequestImSetMoreInfoToSipUA(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;
    .registers 2

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;->getRootAsRequestImSetMoreInfoToSipUA(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsRequestImSetMoreInfoToSipUA(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;
    .registers 4

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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;

    move-result-object p0

    return-object p0
.end method

.method public static startRequestImSetMoreInfoToSipUA(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;
    .registers 3

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3

    .line 14
    iput p1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    iput-object p2, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public value()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x4

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_f

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__string(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public valueAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method
