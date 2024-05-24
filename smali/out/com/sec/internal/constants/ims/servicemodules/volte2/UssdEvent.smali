.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;
.super Ljava/lang/Object;
.source "UssdEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;
    }
.end annotation


# instance fields
.field private mDCS:I

.field private mData:[B

.field private mSessionID:I

.field private mSipErrorCode:Lcom/sec/ims/util/SipError;

.field private mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSessionID:I

    .line 7
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    .line 8
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mStatus:I

    .line 9
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mDCS:I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mData:[B

    .line 11
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method private setData([B)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mData:[B

    return-void
.end method


# virtual methods
.method public getDCS()I
    .registers 1

    .line 52
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mDCS:I

    return p0
.end method

.method public getData()[B
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mData:[B

    return-object p0
.end method

.method public getErrorCode()Lcom/sec/ims/util/SipError;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    return-object p0
.end method

.method public getSessionID()I
    .registers 1

    .line 28
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSessionID:I

    return p0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    return-object p0
.end method

.method public getStatus()I
    .registers 1

    .line 44
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mStatus:I

    return p0
.end method

.method public setDCS(I)V
    .registers 2

    .line 48
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mDCS:I

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 3

    .line 60
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 61
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData([B)V

    goto :goto_29

    .line 62
    :cond_e
    instance-of v0, p1, [B

    if-eqz v0, :cond_18

    .line 63
    check-cast p1, [B

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData([B)V

    goto :goto_29

    .line 64
    :cond_18
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_29

    .line 65
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData([B)V

    :cond_29
    :goto_29
    return-void
.end method

.method public setErrorCode(Lcom/sec/ims/util/SipError;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method public setSessionID(I)V
    .registers 2

    .line 24
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSessionID:I

    return-void
.end method

.method public setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mStatus:I

    return-void
.end method
