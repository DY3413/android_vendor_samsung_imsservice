.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;
.super Lcom/google/flatbuffers/Table;
.source "ImMessageReceived.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createImMessageReceived(Lcom/google/flatbuffers/FlatBufferBuilder;II)I
    .registers 4

    const/4 v0, 0x2

    .line 25
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 26
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;->addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 27
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 28
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;->endImMessageReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endImMessageReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 3

    .line 35
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x4

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    const/4 v1, 0x6

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsImMessageReceived(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;
    .registers 2

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;->getRootAsImMessageReceived(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsImMessageReceived(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;
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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;

    move-result-object p0

    return-object p0
.end method

.method public static startImMessageReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2

    const/4 v0, 0x2

    .line 31
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;
    .registers 3

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3

    .line 14
    iput p1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    iput-object p2, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public messageParam()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;
    .registers 2

    .line 19
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;->messageParam(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object p0

    return-object p0
.end method

.method public messageParam(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;
    .registers 4

    const/4 v0, 0x6

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_15

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__indirect(I)I

    move-result v0

    iget-object p0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public sessionData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    .registers 2

    .line 17
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;->sessionData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object p0

    return-object p0
.end method

.method public sessionData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    .registers 4

    const/4 v0, 0x4

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_15

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__indirect(I)I

    move-result v0

    iget-object p0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method
