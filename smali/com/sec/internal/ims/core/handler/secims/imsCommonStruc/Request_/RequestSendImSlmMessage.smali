.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;
.super Lcom/google/flatbuffers/Table;
.source "RequestSendImSlmMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 0

    long-to-int p1, p1

    const/4 p2, 0x0

    .line 44
    invoke-virtual {p0, p2, p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addReportData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createParticipantVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 2

    .line 48
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

.method public static createRequestSendImSlmMessage(Lcom/google/flatbuffers/FlatBufferBuilder;JIIII)I
    .locals 1

    const/4 v0, 0x5

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 35
    invoke-static {p0, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addReportData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 36
    invoke-static {p0, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 37
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 38
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 39
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 40
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->endRequestSendImSlmMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endRequestSendImSlmMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x6

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    const/16 v1, 0x8

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    const/16 v1, 0xc

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsRequestSendImSlmMessage(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;
    .locals 1

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->getRootAsRequestSendImSlmMessage(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsRequestSendImSlmMessage(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;
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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;

    move-result-object p0

    return-object p0
.end method

.method public static startParticipantVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x4

    .line 49
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startRequestSendImSlmMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x5

    .line 43
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    iput-object p2, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public messageParam()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;
    .locals 1

    .line 20
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->messageParam(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object p0

    return-object p0
.end method

.method public messageParam(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;
    .locals 2

    const/16 v0, 0x8

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__indirect(I)I

    move-result v0

    iget-object p0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public participant(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;
    .locals 1

    .line 22
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->participant(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;

    move-result-object p0

    return-object p0
.end method

.method public participant(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;
    .locals 1

    const/16 v0, 0xa

    .line 23
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

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public participantLength()I
    .locals 1

    const/16 v0, 0xa

    .line 24
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

.method public registrationHandle()J
    .locals 4

    const/4 v0, 0x4

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, p0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public reportData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;
    .locals 1

    .line 25
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->reportData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;

    move-result-object p0

    return-object p0
.end method

.method public reportData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;
    .locals 2

    const/16 v0, 0xc

    .line 26
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__indirect(I)I

    move-result v0

    iget-object p0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public sessionData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    .locals 1

    .line 18
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->sessionData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object p0

    return-object p0
.end method

.method public sessionData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    .locals 2

    const/4 v0, 0x6

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__indirect(I)I

    move-result v0

    iget-object p0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
