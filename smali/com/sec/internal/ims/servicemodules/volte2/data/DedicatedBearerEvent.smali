.class public Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;
.super Ljava/lang/Object;
.source "DedicatedBearerEvent.java"


# instance fields
.field private final mBearerSessionId:I

.field private final mBearerState:I

.field private final mQci:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->mBearerState:I

    .line 21
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->mQci:I

    .line 22
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->mBearerSessionId:I

    return-void
.end method


# virtual methods
.method public getBearerSessionId()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->mBearerSessionId:I

    return p0
.end method

.method public getBearerState()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->mBearerState:I

    return p0
.end method

.method public getQci()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->mQci:I

    return p0
.end method
