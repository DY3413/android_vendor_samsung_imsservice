.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;
.super Lcom/google/flatbuffers/Table;
.source "UpdateRouteTable.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addAddress(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .registers 4

    long-to-int p1, p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addOperation(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static createUpdateRouteTable(Lcom/google/flatbuffers/FlatBufferBuilder;IJI)I
    .registers 6

    const/4 v0, 0x3

    .line 26
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 27
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->addAddress(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 28
    invoke-static {p0, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 29
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->addOperation(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 30
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->endUpdateRouteTable(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endUpdateRouteTable(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 1

    .line 38
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result p0

    return p0
.end method

.method public static getRootAsUpdateRouteTable(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;
    .registers 2

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->getRootAsUpdateRouteTable(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsUpdateRouteTable(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;
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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;

    move-result-object p0

    return-object p0
.end method

.method public static startUpdateRouteTable(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2

    const/4 v0, 0x3

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;
    .registers 3

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3

    .line 14
    iput p1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    iput-object p2, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public address()Ljava/lang/String;
    .registers 3

    const/16 v0, 0x8

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_10

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__string(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public addressAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public handle()J
    .registers 5

    const/4 v0, 0x6

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, p0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    goto :goto_1a

    :cond_18
    const-wide/16 v0, 0x0

    :goto_1a
    return-wide v0
.end method

.method public operation()I
    .registers 3

    const/4 v0, 0x4

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, p0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method
