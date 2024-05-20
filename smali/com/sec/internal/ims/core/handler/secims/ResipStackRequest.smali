.class public Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;
.super Ljava/lang/Object;
.source "ResipStackRequest.java"


# instance fields
.field public mCallback:Landroid/os/Message;

.field public mId:I

.field public mOffset:I

.field public mRequest:Lcom/google/flatbuffers/FlatBufferBuilder;


# direct methods
.method public constructor <init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;->mId:I

    .line 19
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;->mRequest:Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 20
    iput p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;->mOffset:I

    .line 21
    iput-object p4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;->mCallback:Landroid/os/Message;

    return-void
.end method
