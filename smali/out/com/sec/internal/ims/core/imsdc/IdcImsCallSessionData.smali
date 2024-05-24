.class public Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;
.super Ljava/lang/Object;
.source "IdcImsCallSessionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;
    }
.end annotation


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field mCurrentState:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

.field private mIsNotifiedTelecomCallId:Z

.field private mLocalBdcTlsId:Ljava/lang/String;

.field private mLocalSdp:Ljava/lang/String;

.field private mRemoteSdp:Ljava/lang/String;

.field private mTelecomCallId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mIsNotifiedTelecomCallId:Z

    .line 32
    sget-object v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->IDLE:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mCurrentState:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mTelecomCallId:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mLocalBdcTlsId:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mLocalSdp:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mRemoteSdp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrentIdcSessionState()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mCurrentState:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    return-object p0
.end method

.method public getIsNotifiedTelecomCallId()Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mIsNotifiedTelecomCallId:Z

    return p0
.end method

.method public getLocalBdcSdp()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mLocalSdp:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalBdcTlsId()Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mLocalBdcTlsId:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteBdcSdp()Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mRemoteSdp:Ljava/lang/String;

    return-object p0
.end method

.method public getTelecomCallId()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mTelecomCallId:Ljava/lang/String;

    return-object p0
.end method

.method public setIsNotifiedTelecomCallId(Z)V
    .registers 2

    .line 67
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mIsNotifiedTelecomCallId:Z

    return-void
.end method

.method public setLocalBdcSdp(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mLocalSdp:Ljava/lang/String;

    return-void
.end method

.method public setLocalBdcTlsId(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mLocalBdcTlsId:Ljava/lang/String;

    return-void
.end method

.method public setRemoteBdcSdp(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mRemoteSdp:Ljava/lang/String;

    return-void
.end method

.method public setTelecomCallId(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mTelecomCallId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IdcImsCallSessionData [mTelecomCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mLocalBdcTlsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mLocalBdcTlsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsNotifiedTelecomCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mIsNotifiedTelecomCallId:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transitIdcSessionState(Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;)V
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mCurrentState:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    if-ne v0, p1, :cond_5

    return-void

    .line 43
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transitSessionRecordState: new ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], old ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mCurrentState:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-object p1, p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->mCurrentState:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    return-void
.end method
