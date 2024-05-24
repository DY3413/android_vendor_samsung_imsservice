.class public Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;
.super Ljava/lang/Object;
.source "TidGenerator.java"


# static fields
.field private static final CLOCK_SEQ_LIMIT:I = 0x4000

.field private static final CLOCK_SEQ_MASK:I = 0x3fff

.field private static final INTERVAL:J = 0x2710L

.field private static final MULTICAST:J = 0x10000000000L

.field private static final NODE_LIMIT:J = 0x1000000000000L

.field private static final NODE_MASK:J = 0xffffffffffffL

.field private static final OFFSET:J = 0xb1d069b5400L

.field private static final RESERVED:J = -0x8000000000000000L

.field private static final VERSION_NUMBER:J = 0x1000L


# instance fields
.field private mClockSeq:J

.field private final mNode:J

.field private mPrevSysTime:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x10000000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mNode:J

    .line 38
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mClockSeq:J

    return-void
.end method


# virtual methods
.method public generate()Ljava/util/UUID;
    .registers 13

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 44
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mPrevSysTime:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_14

    .line 45
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mClockSeq:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3fff

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mClockSeq:J

    :cond_14
    const-wide v2, 0xb1d069b5400L

    add-long/2addr v2, v0

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    const-wide/16 v4, -0x1

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shr-long v7, v2, v6

    const-wide/32 v9, 0xffff

    and-long/2addr v7, v9

    const/16 v9, 0x30

    shr-long/2addr v2, v9

    const-wide/16 v10, 0xfff

    and-long/2addr v2, v10

    shl-long/2addr v4, v6

    const/16 v6, 0x10

    shl-long v6, v7, v6

    or-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x1000

    or-long/2addr v2, v4

    .line 55
    iget-wide v4, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mClockSeq:J

    shl-long/2addr v4, v9

    const-wide/high16 v6, -0x8000000000000000L

    or-long/2addr v4, v6

    iget-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mNode:J

    or-long/2addr v4, v6

    .line 57
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mPrevSysTime:J

    .line 59
    new-instance p0, Ljava/util/UUID;

    invoke-direct {p0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object p0
.end method
