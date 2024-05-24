.class Lcom/sec/internal/ims/core/handler/secims/ImsRequest;
.super Ljava/lang/Object;
.source "StackIF.java"


# instance fields
.field private mReqBuffer:Lcom/google/flatbuffers/FlatBufferBuilder;

.field mResult:Landroid/os/Message;

.field mTid:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Message;)Lcom/sec/internal/ims/core/handler/secims/ImsRequest;
    .registers 3

    .line 192
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;-><init>()V

    .line 194
    iput-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mReqBuffer:Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 195
    iput-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mResult:Landroid/os/Message;

    if-eqz p1, :cond_1a

    .line 197
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_12

    goto :goto_1a

    .line 198
    :cond_12
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Message target must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    :goto_1a
    return-object v0
.end method


# virtual methods
.method public getReqBuffer()Lcom/google/flatbuffers/FlatBufferBuilder;
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mReqBuffer:Lcom/google/flatbuffers/FlatBufferBuilder;

    return-object p0
.end method
