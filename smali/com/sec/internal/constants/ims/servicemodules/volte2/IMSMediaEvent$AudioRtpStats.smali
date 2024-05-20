.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;
.super Ljava/lang/Object;
.source "IMSMediaEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioRtpStats"
.end annotation


# instance fields
.field public mChannelId:I

.field public mDelay:I

.field public mDirection:I

.field public mJitter:I

.field public mLossData:I

.field public mMeasuredPeriod:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mChannelId:I

    .line 207
    iput p2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mLossData:I

    .line 208
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mDelay:I

    .line 209
    iput p4, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mJitter:I

    .line 210
    iput p5, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mMeasuredPeriod:I

    .line 211
    iput p6, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mDirection:I

    return-void
.end method
