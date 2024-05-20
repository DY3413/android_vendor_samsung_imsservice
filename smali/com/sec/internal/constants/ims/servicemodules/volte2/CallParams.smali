.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
.super Ljava/lang/Object;
.source "CallParams.java"


# instance fields
.field private composerData:Landroid/os/Bundle;

.field private mAlertInfo:Ljava/lang/String;

.field private mAudioBitRate:Ljava/lang/String;

.field private mAudioCodec:Ljava/lang/String;

.field private mAudioEarlyMediaDir:I

.field private mAudioRxTrackId:I

.field private mCmcDeviceId:Ljava/lang/String;

.field private mCmcEdCallSlot:I

.field private mConferenceSupported:Ljava/lang/String;

.field private mDelayRinging:Z

.field private mDtmfEvent:Ljava/lang/String;

.field private mFeatureCaps:Ljava/lang/String;

.field private mHasDiversion:Z

.field private mHistoryInfo:Ljava/lang/String;

.field private mIncomingCall:Z

.field private mIndicationFlag:I

.field private mIsFocus:Ljava/lang/String;

.field private mLocalHoldTone:Z

.field private mLocalVideoRTCPPort:I

.field private mLocalVideoRTPPort:I

.field private mModifySupported:Ljava/lang/String;

.field private mNumberPlus:Ljava/lang/String;

.field private mOrganization:Ljava/lang/String;

.field private mPLettering:Ljava/lang/String;

.field private mPhotoRing:Ljava/lang/String;

.field private mReferredBy:Ljava/lang/String;

.field private mRejectCode:I

.field private mRejectProtocol:Ljava/lang/String;

.field private mRejectText:Ljava/lang/String;

.field private mRemoteHeld:Z

.field private mRemoteVideoRTCPPort:I

.field private mRemoteVideoRTPPort:I

.field private mReplaces:Ljava/lang/String;

.field private mRetryAfter:I

.field private mSipCallId:Ljava/lang/String;

.field private mSipInviteMsg:Ljava/lang/String;

.field private mTerminatingId:Lcom/sec/ims/util/ImsUri;

.field private mVerstat:Ljava/lang/String;

.field private mVideoCrbtType:I

.field private mVideoHeight:I

.field private mVideoOrientation:I

.field private mVideoWidth:I

.field private misHDIcon:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e0

    .line 36
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoWidth:I

    const/16 v0, 0x280

    .line 37
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoHeight:I

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectCode:I

    .line 54
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCmcEdCallSlot:I

    return-void
.end method


# virtual methods
.method public getAlertInfo()Ljava/lang/String;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAlertInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getAudioBitRate()Ljava/lang/String;
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioBitRate:Ljava/lang/String;

    return-object p0
.end method

.method public getAudioCodec()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioCodec:Ljava/lang/String;

    return-object p0
.end method

.method public getAudioEarlyMediaDir()I
    .locals 0

    .line 336
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioEarlyMediaDir:I

    return p0
.end method

.method public getAudioRxTrackId()I
    .locals 0

    .line 308
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioRxTrackId:I

    return p0
.end method

.method public getCmcDeviceId()Ljava/lang/String;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCmcDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getCmcEdCallSlot()I
    .locals 0

    .line 389
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCmcEdCallSlot:I

    return p0
.end method

.method public getComposerData()Landroid/os/Bundle;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->composerData:Landroid/os/Bundle;

    return-object p0
.end method

.method public getConferenceSupported()Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mConferenceSupported:Ljava/lang/String;

    return-object p0
.end method

.method public getDelayRinging()Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDelayRinging:Z

    return p0
.end method

.method public getDtmfEvent()Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDtmfEvent:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatureCaps()Ljava/lang/String;
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mFeatureCaps:Ljava/lang/String;

    return-object p0
.end method

.method public getHasDiversion()Z
    .locals 0

    .line 344
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHasDiversion:Z

    return p0
.end method

.method public getHistoryInfo()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getIndicationFlag()I
    .locals 0

    .line 165
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIndicationFlag:I

    return p0
.end method

.method public getIsFocus()Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIsFocus:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalHoldTone()Z
    .locals 0

    .line 268
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalHoldTone:Z

    return p0
.end method

.method public getLocalVideoRTCPPort()I
    .locals 0

    .line 141
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTCPPort:I

    return p0
.end method

.method public getLocalVideoRTPPort()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTPPort:I

    return p0
.end method

.method public getModifyHeader()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mModifySupported:Ljava/lang/String;

    return-object p0
.end method

.method public getNumberPlus()Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mNumberPlus:Ljava/lang/String;

    return-object p0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mOrganization:Ljava/lang/String;

    return-object p0
.end method

.method public getPLettering()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPLettering:Ljava/lang/String;

    return-object p0
.end method

.method public getPhotoRing()Ljava/lang/String;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPhotoRing:Ljava/lang/String;

    return-object p0
.end method

.method public getRejectCode()I
    .locals 0

    .line 368
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectCode:I

    return p0
.end method

.method public getRejectProtocol()Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public getRejectText()Ljava/lang/String;
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectText:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteHeld()Z
    .locals 0

    .line 384
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteHeld:Z

    return p0
.end method

.method public getRemoteVideoRTCPPort()I
    .locals 0

    .line 157
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTCPPort:I

    return p0
.end method

.method public getRemoteVideoRTPPort()I
    .locals 0

    .line 149
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTPPort:I

    return p0
.end method

.method public getReplaces()Ljava/lang/String;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mReplaces:Ljava/lang/String;

    return-object p0
.end method

.method public getRetryAfter()I
    .locals 0

    .line 181
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRetryAfter:I

    return p0
.end method

.method public getSipCallId()Ljava/lang/String;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipCallId:Ljava/lang/String;

    return-object p0
.end method

.method public getSipInviteMsg()Ljava/lang/String;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipInviteMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getTerminatingId()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mTerminatingId:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getVerstat()Ljava/lang/String;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVerstat:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoCrbtType()I
    .locals 0

    .line 205
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoCrbtType:I

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    .line 292
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoHeight:I

    return p0
.end method

.method public getVideoOrientation()I
    .locals 0

    .line 213
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoOrientation:I

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    .line 284
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoWidth:I

    return p0
.end method

.method public getisHDIcon()I
    .locals 0

    .line 173
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->misHDIcon:I

    return p0
.end method

.method public isIncomingCall()Z
    .locals 0

    .line 324
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIncomingCall:Z

    return p0
.end method

.method public setAlertInfo(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAlertInfo:Ljava/lang/String;

    return-void
.end method

.method public setAsIncomingCall()V
    .locals 1

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIncomingCall:Z

    return-void
.end method

.method public setAudioBitRate(Ljava/lang/String;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioBitRate:Ljava/lang/String;

    return-void
.end method

.method public setAudioCodec(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioCodec:Ljava/lang/String;

    return-void
.end method

.method public setAudioEarlyMediaDir(I)V
    .locals 0

    .line 332
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioEarlyMediaDir:I

    return-void
.end method

.method public setAudioRxTrackId(I)V
    .locals 0

    .line 304
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioRxTrackId:I

    return-void
.end method

.method public setCmcDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCmcDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setCmcEdCallSlot(I)V
    .locals 0

    .line 387
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCmcEdCallSlot:I

    return-void
.end method

.method public setComposerData(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->composerData:Landroid/os/Bundle;

    return-void
.end method

.method public setConferenceSupported(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mConferenceSupported:Ljava/lang/String;

    return-void
.end method

.method public setDelayRinging(Z)V
    .locals 0

    .line 348
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDelayRinging:Z

    return-void
.end method

.method public setDtmfEvent(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDtmfEvent:Ljava/lang/String;

    return-void
.end method

.method public setFeatureCaps(Ljava/lang/String;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mFeatureCaps:Ljava/lang/String;

    return-void
.end method

.method public setHasDiversion(Z)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHasDiversion:Z

    return-void
.end method

.method public setHistoryInfo(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    return-void
.end method

.method public setIndicationFlag(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIndicationFlag:I

    return-void
.end method

.method public setIsFocus(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIsFocus:Ljava/lang/String;

    return-void
.end method

.method public setLocalHoldTone(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalHoldTone:Z

    return-void
.end method

.method public setLocalVideoRTCPPort(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTCPPort:I

    return-void
.end method

.method public setLocalVideoRTPPort(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTPPort:I

    return-void
.end method

.method public setModifyHeader(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mModifySupported:Ljava/lang/String;

    return-void
.end method

.method public setNumberPlus(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mNumberPlus:Ljava/lang/String;

    return-void
.end method

.method public setOrganization(Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mOrganization:Ljava/lang/String;

    return-void
.end method

.method public setPLettering(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPLettering:Ljava/lang/String;

    return-void
.end method

.method public setPhotoRing(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPhotoRing:Ljava/lang/String;

    return-void
.end method

.method public setReferredBy(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mReferredBy:Ljava/lang/String;

    return-void
.end method

.method public setRejectCode(I)V
    .locals 0

    .line 364
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectCode:I

    return-void
.end method

.method public setRejectProtocol(Ljava/lang/String;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectProtocol:Ljava/lang/String;

    return-void
.end method

.method public setRejectText(Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectText:Ljava/lang/String;

    return-void
.end method

.method public setRemoteHeld(Z)V
    .locals 0

    .line 380
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteHeld:Z

    return-void
.end method

.method public setRemoteVideoRTCPPort(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTCPPort:I

    return-void
.end method

.method public setRemoteVideoRTPPort(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTPPort:I

    return-void
.end method

.method public setReplaces(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mReplaces:Ljava/lang/String;

    return-void
.end method

.method public setRetryAfter(I)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRetryAfter:I

    return-void
.end method

.method public setSipCallId(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipCallId:Ljava/lang/String;

    return-void
.end method

.method public setSipInviteMsg(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipInviteMsg:Ljava/lang/String;

    return-void
.end method

.method public setTerminatingId(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mTerminatingId:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public setVerstat(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVerstat:Ljava/lang/String;

    return-void
.end method

.method public setVideoCrbtType(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoCrbtType:I

    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    .line 288
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoHeight:I

    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoOrientation:I

    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    .line 280
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoWidth:I

    return-void
.end method

.method public setisHDIcon(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->misHDIcon:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallParams [mPLettering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPLettering:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mHistoryInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mDtmfEvent="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDtmfEvent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mModifySupported="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mModifySupported:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mAudioCodec="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioCodec:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mNumberPlus="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mNumberPlus:Ljava/lang/String;

    .line 395
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mConferenceSupported="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mConferenceSupported:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mIsFocus="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIsFocus:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mIndicationFlag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIndicationFlag:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", misHDIcon="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->misHDIcon:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mPhotoRing="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPhotoRing:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mLocalVideoRTPPort="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTPPort:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mLocalVideoRTCPPort="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTCPPort:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mRemoteVideoRTPPort="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTPPort:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mRemoteVideoRTCPPort="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTCPPort:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mRetryAfter="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRetryAfter:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mAlertInfo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAlertInfo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mVideoOrientation="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoOrientation:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mReferredBy="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mReferredBy:Ljava/lang/String;

    .line 401
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mSipCallId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipCallId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mOrganization="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mOrganization:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mComposerData="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->composerData:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mLocalHoldTone="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalHoldTone:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mVideoWidth="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoWidth:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mVideoHeight="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoHeight:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mVideoCrbtType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoCrbtType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mFeatureCaps="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mFeatureCaps:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mAudioEarlyMediaDir="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioEarlyMediaDir:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mVerstat="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVerstat:Ljava/lang/String;

    .line 406
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mHasDiversion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHasDiversion:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mDelayRinging="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDelayRinging:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mRejectProtocol="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectProtocol:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mRejectCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mRejectText="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mRemoteHeld="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteHeld:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mCmcEdCallSlot="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCmcEdCallSlot:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method