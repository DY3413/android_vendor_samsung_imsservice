.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;
.super Lcom/google/flatbuffers/Table;
.source "RequestStartFtSession.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addPayload(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 0

    long-to-int p1, p1

    const/4 p2, 0x0

    .line 39
    invoke-virtual {p0, p2, p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addReportData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createRequestStartFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;JIII)I
    .locals 1

    const/4 v0, 0x4

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 31
    invoke-static {p0, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addReportData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 32
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addPayload(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 33
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 34
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 35
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->endRequestStartFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endRequestStartFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

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

.method public static getRootAsRequestStartFtSession(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;
    .locals 1

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->getRootAsRequestStartFtSession(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsRequestStartFtSession(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;
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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;

    move-result-object p0

    return-object p0
.end method

.method public static startRequestStartFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x4

    .line 38
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    iput-object p2, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public payload()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;
    .locals 1

    .line 20
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->payload(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;

    move-result-object p0

    return-object p0
.end method

.method public payload(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;
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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
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

    .line 22
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->reportData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;

    move-result-object p0

    return-object p0
.end method

.method public reportData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;
    .locals 2

    const/16 v0, 0xa

    .line 23
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

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->sessionData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

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
