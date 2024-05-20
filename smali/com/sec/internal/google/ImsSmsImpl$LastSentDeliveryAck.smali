.class final Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;
.super Ljava/lang/Object;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/ImsSmsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LastSentDeliveryAck"
.end annotation


# instance fields
.field public mNetworkType:I

.field public mPdu:[B

.field public mRetryCount:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 1447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    iput-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;->mPdu:[B

    .line 1449
    iput p3, p0, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;->mNetworkType:I

    const/4 p1, 0x0

    .line 1450
    iput p1, p0, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;->mRetryCount:I

    return-void
.end method
