.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;
.super Lcom/google/flatbuffers/Table;
.source "ImComposingStatusReceived.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .registers 4

    const/4 v0, 0x0

    long-to-int p1, p1

    .line 39
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createImComposingStatusReceived(Lcom/google/flatbuffers/FlatBufferBuilder;JIII)I
    .registers 7

    const/4 v0, 0x4

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 31
    invoke-static {p0, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 32
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 33
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 34
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 35
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->endImComposingStatusReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endImComposingStatusReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 3

    .line 44
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x6

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    const/16 v1, 0x8

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    const/16 v1, 0xa

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsImComposingStatusReceived(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;
    .registers 2

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->getRootAsImComposingStatusReceived(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsImComposingStatusReceived(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;
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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;

    move-result-object p0

    return-object p0
.end method

.method public static startImComposingStatusReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2

    const/4 v0, 0x4

    .line 38
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;
    .registers 3

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3

    .line 14
    iput p1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    iput-object p2, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public sessionId()J
    .registers 5

    const/4 v0, 0x4

    .line 17
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

.method public status()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;
    .registers 2

    .line 20
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->status(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;

    move-result-object p0

    return-object p0
.end method

.method public status(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;
    .registers 4

    const/16 v0, 0x8

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_16

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__indirect(I)I

    move-result v0

    iget-object p0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public uri()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x6

    .line 18
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

.method public uriAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public userAlias()Ljava/lang/String;
    .registers 3

    const/16 v0, 0xa

    .line 22
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

.method public userAliasAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    const/16 v0, 0xa

    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method
