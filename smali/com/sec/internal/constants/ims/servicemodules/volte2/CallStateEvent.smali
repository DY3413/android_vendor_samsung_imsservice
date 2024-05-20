.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
.super Ljava/lang/Object;
.source "CallStateEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;,
        Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;,
        Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;
    }
.end annotation


# instance fields
.field private mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

.field private mAlternativeServiceReason:Ljava/lang/String;

.field private mAlternativeServiceType:Ljava/lang/String;

.field private mAlternativeServiceUrn:Ljava/lang/String;

.field private mCallType:I

.field private mCmcCallTime:Ljava/lang/String;

.field private mCmcDeviceId:Ljava/lang/String;

.field private mIsConference:Z

.field private mIsSdToSdPull:Z

.field private mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

.field private mPeerAddr:Lcom/sec/ims/util/NameAddr;

.field private mRemoteVideoCapa:Z

.field private mRetryAfter:I

.field private mSessionID:I

.field private mSipErrorCode:Lcom/sec/ims/util/SipError;

.field private mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

.field private mUpdatedParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    .line 22
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 23
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCallType:I

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRemoteVideoCapa:Z

    .line 26
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mUpdatedParticipants:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    .line 29
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->NONE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceType:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceReason:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceUrn:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRetryAfter:I

    .line 34
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsConference:Z

    .line 35
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcDeviceId:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcCallTime:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsSdToSdPull:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V
    .locals 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    .line 22
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 23
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCallType:I

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRemoteVideoCapa:Z

    .line 26
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mUpdatedParticipants:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    .line 29
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->NONE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceType:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceReason:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceUrn:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRetryAfter:I

    .line 34
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsConference:Z

    .line 35
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcDeviceId:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcCallTime:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsSdToSdPull:Z

    .line 97
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-void
.end method


# virtual methods
.method public addUpdatedParticipantsList(Ljava/lang/String;III)V
    .locals 1

    .line 157
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mUpdatedParticipants:Ljava/util/List;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAlternativeService()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    return-object p0
.end method

.method public getAlternativeServiceReason()Ljava/lang/String;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceReason:Ljava/lang/String;

    return-object p0
.end method

.method public getAlternativeServiceType()Ljava/lang/String;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceType:Ljava/lang/String;

    return-object p0
.end method

.method public getAlternativeServiceUrn()Ljava/lang/String;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceUrn:Ljava/lang/String;

    return-object p0
.end method

.method public getCallType()I
    .locals 0

    .line 128
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCallType:I

    return p0
.end method

.method public getCmcCallTime()Ljava/lang/String;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcCallTime:Ljava/lang/String;

    return-object p0
.end method

.method public getCmcDeviceId()Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorCode()Lcom/sec/ims/util/SipError;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    return-object p0
.end method

.method public getIsSdToSdPull()Z
    .locals 0

    .line 237
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsSdToSdPull:Z

    return p0
.end method

.method public getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    return-object p0
.end method

.method public getPeerAddr()Lcom/sec/ims/util/NameAddr;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    return-object p0
.end method

.method public getRemoteVideoCapa()Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRemoteVideoCapa:Z

    return p0
.end method

.method public getRetryAfter()I
    .locals 0

    .line 209
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRetryAfter:I

    return p0
.end method

.method public getSessionID()I
    .locals 0

    .line 120
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    return p0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0
.end method

.method public getUpdatedParticipantsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mUpdatedParticipants:Ljava/util/List;

    return-object p0
.end method

.method public isConference()Z
    .locals 0

    .line 217
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsConference:Z

    return p0
.end method

.method public setAlternativeService(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    return-void
.end method

.method public setAlternativeServiceReason(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceReason:Ljava/lang/String;

    return-void
.end method

.method public setAlternativeServiceType(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceType:Ljava/lang/String;

    return-void
.end method

.method public setAlternativeServiceUrn(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceUrn:Ljava/lang/String;

    return-void
.end method

.method public setCallType(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCallType:I

    return-void
.end method

.method public setCmcCallTime(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcCallTime:Ljava/lang/String;

    return-void
.end method

.method public setCmcDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setConference(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsConference:Z

    return-void
.end method

.method public setErrorCode(Lcom/sec/ims/util/SipError;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method public setIsSdToSdPull(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsSdToSdPull:Z

    return-void
.end method

.method public setParams(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    return-void
.end method

.method public setPeerAddr(Lcom/sec/ims/util/NameAddr;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    return-void
.end method

.method public setRemoteVideoCapa(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRemoteVideoCapa:Z

    return-void
.end method

.method public setRetryAfter(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRetryAfter:I

    return-void
.end method

.method public setSessionID(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    return-void
.end method

.method public setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallStateEvent [sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    .line 246
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSipErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
