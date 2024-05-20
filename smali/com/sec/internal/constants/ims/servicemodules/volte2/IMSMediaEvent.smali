.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
.super Ljava/lang/Object;
.source "IMSMediaEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;,
        Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;
    }
.end annotation


# static fields
.field public static final AUDIO_FIRST_RTPRX_RECV:I = 0x1d

.field public static final AUDIO_FIRST_RTPTX_SEND:I = 0x12

.field public static final AUDIO_RTCP_TIMEOUT:I = 0x3d

.field public static final AUDIO_RTP_STATS:I = 0x20

.field public static final AUDIO_RTP_TIMEOUT:I = 0x1c

.field public static final AUDIO_RTP_TIMEOUT_CLEAR:I = 0x1f

.field public static final CAM_DISABLED_ERROR:I = 0x10

.field public static final CMC_RECORDER_DURATION_IN_PROGRESS:I = 0x9

.field public static final CMC_RECORDER_FILEOPERATION_ERROR:I = 0x2

.field public static final CMC_RECORDER_FILESIZE_IN_PROGRESS:I = 0x8

.field public static final CMC_RECORDER_INSUFFICIENT_START_MEMORY:I = 0x3

.field public static final CMC_RECORDER_MAX_DURATION_REACHED:I = 0x5

.field public static final CMC_RECORDER_MAX_FILESIZE_APPROACHING:I = 0x6

.field public static final CMC_RECORDER_MAX_FILESIZE_REACHED:I = 0x7

.field public static final CMC_RECORDER_NO_ERROR:I = 0x0

.field public static final CMC_RECORDER_NO_SPACE:I = 0x1

.field public static final CMC_RECORDER_RECORDERERROR:I = 0x4

.field public static final CMC_RECORDER_START_SUCCESS:I = 0xa

.field public static final CMC_RECORDER_STOP_SUCCESS:I = 0xb

.field public static final DTMF_RECEIVED:I = 0x0

.field public static final EPDG_DL_INFO:I = 0x4e

.field public static final EVENT_TYPE_AUDIO:I = 0x0

.field public static final EVENT_TYPE_DTMF:I = 0x4

.field public static final EVENT_TYPE_RELAY_STREAM:I = 0x3

.field public static final EVENT_TYPE_TEXT:I = 0x2

.field public static final EVENT_TYPE_VIDEO:I = 0x1

.field public static final RECORD_ERROR_FILEOPEARTION:I = 0x2

.field public static final RECORD_ERROR_NO_SPACE:I = 0x1

.field public static final RELAY_CHANNEL_ESTABLISHED:I = 0x0

.field public static final RELAY_CHANNEL_HOLDED:I = 0x4

.field public static final RELAY_CHANNEL_RESUMED:I = 0x5

.field public static final RELAY_CHANNEL_STARTED:I = 0x2

.field public static final RELAY_CHANNEL_STOPED:I = 0x3

.field public static final RELAY_CHANNEL_TERMINATED:I = 0x1

.field public static final RELAY_ECHOLOCATE_RESULT:I = 0x5

.field public static final RELAY_HOLD_STREAM:I = 0xa

.field public static final RELAY_RECORD_START:I = 0xc

.field public static final RELAY_RESUME_STREAM:I = 0xb

.field public static final RELAY_RTCP_TIMEOUT:I = 0x4

.field public static final RELAY_RTP_TIMEOUT:I = 0x3

.field public static final RELAY_STREAM_CREATED:I = 0x0

.field public static final RELAY_STREAM_DELETED:I = 0x1

.field public static final RELAY_STREAM_UPDATED:I = 0x2

.field public static final TEXT_PACKET_RECEIVED:I = 0x1

.field public static final TEXT_RTP_TIMEOUT:I = 0x2

.field public static final VIDEO_FIRST_PACKET_RECV:I = 0x11

.field public static final VIDEO_RESP_RTCP_REPORT:I = 0x75

.field public static final VIDEO_RTCP_TIMEOUT:I = 0x15

.field public static final VIDEO_RTCP_TIMEOUT_CLEAR:I = 0x17

.field public static final VIDEO_RTP_TIMEOUT:I = 0x14

.field public static final VIDEO_RTP_TIMEOUT_CLEAR:I = 0x16


# instance fields
.field private mAudioEvent:I

.field private mAudioRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

.field private mCameraId:I

.field private mChannelId:I

.field private mCmcRecordingArg:I

.field private mCmcRecordingEvent:I

.field private mDtmKey:I

.field private mDtmfEvent:I

.field private mFileName:Ljava/lang/String;

.field private mGeneralEvent:I

.field private mHeight:I

.field private mIsHeldCall:Z

.field private mIsNearEnd:Z

.field private mPhoneId:I

.field private mRelayChannelEvent:I

.field private mRelayChannelId:I

.field private mRelayRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

.field private mRelayStreamEvent:I

.field private mRtpLossRate:Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

.field private mRttText:Ljava/lang/String;

.field private mRttTextLen:I

.field private mSessionID:I

.field private mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

.field private mStreamId:I

.field private mTextEvent:I

.field private mVideoEvent:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mPhoneId:I

    .line 9
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mSessionID:I

    .line 10
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCameraId:I

    .line 11
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mChannelId:I

    .line 12
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mStreamId:I

    .line 13
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayChannelId:I

    .line 14
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mAudioEvent:I

    .line 15
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mVideoEvent:I

    .line 16
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mTextEvent:I

    .line 17
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayStreamEvent:I

    .line 18
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayChannelEvent:I

    .line 19
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCmcRecordingEvent:I

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCmcRecordingArg:I

    .line 21
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mDtmfEvent:I

    .line 22
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mDtmKey:I

    .line 23
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mIsNearEnd:Z

    const/4 v2, 0x0

    .line 24
    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mFileName:Ljava/lang/String;

    .line 25
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mIsHeldCall:Z

    .line 26
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mWidth:I

    .line 27
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mHeight:I

    .line 28
    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRttText:Ljava/lang/String;

    .line 29
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRttTextLen:I

    .line 30
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mGeneralEvent:I

    .line 215
    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRtpLossRate:Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    .line 216
    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mAudioRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    .line 217
    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    return-void
.end method


# virtual methods
.method public getAudioEvent()I
    .locals 0

    .line 307
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mAudioEvent:I

    return p0
.end method

.method public getAudioRtpStats()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mAudioRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    return-object p0
.end method

.method public getCameraId()I
    .locals 0

    .line 251
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCameraId:I

    return p0
.end method

.method public getChannelId()I
    .locals 0

    .line 283
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mChannelId:I

    return p0
.end method

.method public getCmcRecordingArg()I
    .locals 0

    .line 403
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCmcRecordingArg:I

    return p0
.end method

.method public getCmcRecordingEvent()I
    .locals 0

    .line 391
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCmcRecordingEvent:I

    return p0
.end method

.method public getDtmfEvent()I
    .locals 0

    .line 443
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mDtmfEvent:I

    return p0
.end method

.method public getDtmfKey()I
    .locals 0

    .line 463
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mDtmKey:I

    return p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getGeneralEvent()I
    .locals 0

    .line 452
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mGeneralEvent:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 419
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mHeight:I

    return p0
.end method

.method public getIsNearEnd()Z
    .locals 0

    .line 259
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mIsNearEnd:Z

    return p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 239
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mPhoneId:I

    return p0
.end method

.method public getRelayChannelEvent()I
    .locals 0

    .line 379
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayChannelEvent:I

    return p0
.end method

.method public getRelayChannelId()I
    .locals 0

    .line 299
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayChannelId:I

    return p0
.end method

.method public getRelayRtpStats()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    return-object p0
.end method

.method public getRelayStreamEvent()I
    .locals 0

    .line 359
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayStreamEvent:I

    return p0
.end method

.method public getRtpLossRate()Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRtpLossRate:Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    return-object p0
.end method

.method public getRttText()Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRttText:Ljava/lang/String;

    return-object p0
.end method

.method public getRttTextLen()I
    .locals 0

    .line 435
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRttTextLen:I

    return p0
.end method

.method public getSessionID()I
    .locals 0

    .line 247
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mSessionID:I

    return p0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    return-object p0
.end method

.method public getStreamId()I
    .locals 0

    .line 291
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mStreamId:I

    return p0
.end method

.method public getTextEvent()I
    .locals 0

    .line 339
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mTextEvent:I

    return p0
.end method

.method public getVideoEvent()I
    .locals 0

    .line 347
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mVideoEvent:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 411
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mWidth:I

    return p0
.end method

.method public isAudioEvent()Z
    .locals 1

    .line 311
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mAudioEvent:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCmcRecordingEvent()Z
    .locals 1

    .line 395
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCmcRecordingEvent:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDtmfEvent()Z
    .locals 1

    .line 447
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mDtmfEvent:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGeneralEvent()Z
    .locals 1

    .line 455
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mGeneralEvent:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHeldCall()Z
    .locals 0

    .line 275
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mIsHeldCall:Z

    return p0
.end method

.method public isRelayChannelEvent()Z
    .locals 1

    .line 383
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayChannelEvent:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRelayStreamEvent()Z
    .locals 1

    .line 363
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayStreamEvent:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTextEvent()Z
    .locals 1

    .line 343
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mTextEvent:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoEvent()Z
    .locals 1

    .line 351
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mVideoEvent:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAudioEvent(I)V
    .locals 0

    .line 303
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mAudioEvent:I

    return-void
.end method

.method public setAudioRtpStats(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mAudioRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    return-void
.end method

.method public setChannelId(I)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mChannelId:I

    return-void
.end method

.method public setCmcRecordingArg(I)V
    .locals 0

    .line 399
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCmcRecordingArg:I

    return-void
.end method

.method public setCmcRecordingEvent(I)V
    .locals 0

    .line 387
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mCmcRecordingEvent:I

    return-void
.end method

.method public setDtmfEvent(I)V
    .locals 0

    .line 439
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mDtmfEvent:I

    return-void
.end method

.method public setDtmfKey(I)V
    .locals 0

    .line 459
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mDtmKey:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public setGeneralEvent(I)V
    .locals 0

    .line 450
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mGeneralEvent:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 415
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mHeight:I

    return-void
.end method

.method public setIsHeldCall(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mIsHeldCall:Z

    return-void
.end method

.method public setIsNearEnd(Z)V
    .locals 0

    .line 255
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mIsNearEnd:Z

    return-void
.end method

.method public setPhoneId(I)V
    .locals 0

    .line 235
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mPhoneId:I

    return-void
.end method

.method public setRelayChannelEvent(I)V
    .locals 0

    .line 375
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayChannelEvent:I

    return-void
.end method

.method public setRelayChannelId(I)V
    .locals 0

    .line 295
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayChannelId:I

    return-void
.end method

.method public setRelayRtpStats(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayRtpStats:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    return-void
.end method

.method public setRelayStreamEvent(I)V
    .locals 0

    .line 355
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRelayStreamEvent:I

    return-void
.end method

.method public setRtpLossRate(Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRtpLossRate:Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    return-void
.end method

.method public setRttText(Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRttText:Ljava/lang/String;

    return-void
.end method

.method public setRttTextLen(I)V
    .locals 0

    .line 431
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mRttTextLen:I

    return-void
.end method

.method public setSessionID(I)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mSessionID:I

    return-void
.end method

.method public setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    return-void
.end method

.method public setStreamId(I)V
    .locals 0

    .line 287
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mStreamId:I

    return-void
.end method

.method public setTextEvent(I)V
    .locals 0

    .line 335
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mTextEvent:I

    return-void
.end method

.method public setVideoEvent(I)V
    .locals 0

    .line 331
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mVideoEvent:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 407
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->mWidth:I

    return-void
.end method
