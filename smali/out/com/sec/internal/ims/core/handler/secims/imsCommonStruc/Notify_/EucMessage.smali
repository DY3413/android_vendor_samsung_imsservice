.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;
.super Lcom/google/flatbuffers/Table;
.source "EucMessage.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addMessageType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .registers 3

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static createEucMessage(Lcom/google/flatbuffers/FlatBufferBuilder;BI)I
    .registers 4

    const/4 v0, 0x2

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 24
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->addMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 25
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->addMessageType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 26
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->endEucMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endEucMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 1

    .line 33
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result p0

    return p0
.end method

.method public static getRootAsEucMessage(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;
    .registers 2

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->getRootAsEucMessage(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsEucMessage(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;
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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;

    move-result-object p0

    return-object p0
.end method

.method public static startEucMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2

    const/4 v0, 0x2

    .line 29
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;
    .registers 3

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3

    .line 14
    iput p1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    iput-object p2, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public message(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;
    .registers 3

    const/4 v0, 0x6

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1, v0}, Lcom/google/flatbuffers/Table;->__union(Lcom/google/flatbuffers/Table;I)Lcom/google/flatbuffers/Table;

    move-result-object p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return-object p0
.end method

.method public messageType()B
    .registers 3

    const/4 v0, 0x4

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, p0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method
