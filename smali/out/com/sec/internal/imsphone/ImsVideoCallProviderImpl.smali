.class public Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;
.super Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.source "ImsVideoCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;
    }
.end annotation


# static fields
.field protected static final EMOJI_START_FAILURE:I = 0x4b1

.field protected static final EMOJI_START_SUCCESS:I = 0x4b0

.field protected static final EMOJI_STOP_FAILURE:I = 0x4b3

.field protected static final EMOJI_STOP_SUCCESS:I = 0x4b2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsVTProviderImpl"

.field protected static final NOTIFY_DOWNGRADED:I = 0x3e9

.field protected static final NOTIFY_VIDEO_RESUMED:I = 0x3e8

.field protected static final RECORD_START_FAILURE:I = 0x44d

.field protected static final RECORD_START_FAILURE_NO_SPACE:I = 0x456

.field protected static final RECORD_START_SUCCESS:I = 0x44c

.field protected static final RECORD_STOP_FAILURE:I = 0x44f

.field protected static final RECORD_STOP_NO_SPACE:I = 0x457

.field protected static final RECORD_STOP_SUCCESS:I = 0x44e


# instance fields
.field private mIsDummyCamera:Z

.field private mIsVideoPause:Z

.field protected mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

.field private mModifyRequestTime:J

.field protected mRelay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/volte2/IVideoServiceEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mSession:Lcom/sec/ims/volte2/IImsCallSession;


# direct methods
.method static bridge synthetic -$$Nest$fgetmModifyRequestTime(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mModifyRequestTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmIsVideoPause(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/volte2/IImsCallSession;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mModifyRequestTime:J

    .line 48
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    .line 52
    :try_start_1a
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getMediaCallProvider()Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_22} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    return-void
.end method

.method private convertQualityFromVideoProfile(I)I
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_10

    const/4 p0, 0x2

    const/16 v0, 0xd

    if-eq p1, p0, :cond_12

    const/4 p0, 0x3

    if-eq p1, p0, :cond_d

    const/4 p0, 0x4

    goto :goto_12

    :cond_d
    const/16 v0, 0xc

    goto :goto_12

    :cond_10
    const/16 v0, 0xf

    :cond_12
    :goto_12
    return v0
.end method

.method private notifyLocalVideoSize(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/MediaProfile;->getWidth()I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getHeight()I

    move-result v1

    .line 139
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsVTProviderImpl"

    if-nez v0, :cond_49

    if-nez v1, :cond_49

    .line 141
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_43

    const/16 v0, 0x1e0

    const/16 v1, 0x280

    goto :goto_49

    :cond_43
    const-string p0, "Use updateCallProfile notification"

    .line 145
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 150
    :cond_49
    :goto_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notify Local video width : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " videoSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_73
    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    .line 152
    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v5

    if-nez v5, :cond_73

    const-string v5, "LAND"

    .line 153
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9f

    const-string v5, "QCIF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 154
    invoke-interface {v4, p1, v1, v0}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    goto :goto_73

    .line 156
    :cond_9f
    invoke-interface {v4, p1, v0, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    goto :goto_73

    :cond_a3
    return-void
.end method

.method private setCameraAdditionService(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "effect,"

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    const/4 v0, 0x7

    .line 165
    :try_start_a
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 166
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p0, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setCameraEffect(I)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_18

    goto :goto_2e

    .line 168
    :catch_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid effect Id : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsVTProviderImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return v1

    :cond_2f
    const-string/jumbo v0, "startRecord,"

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/16 v0, 0xc

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 173
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->startRecord(Ljava/lang/String;)V

    return v1

    :cond_44
    const-string/jumbo v0, "stopRecord"

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 176
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->stopRecord()V

    return v1

    :cond_53
    const-string v0, "filter,0"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 179
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->stopEmoji(I)V

    return v1

    :cond_67
    const-string v0, "filter"

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 182
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->startEmoji(Ljava/lang/String;)V

    return v1

    :cond_75
    const-string v0, "StartScreenSharing"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ""

    const/16 v3, 0x64

    if-eqz v0, :cond_8d

    .line 185
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, v3, p0, v1, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendGeneralEvent(IIILjava/lang/String;)V

    return v1

    :cond_8d
    const-string v0, "StopScreenSharing"

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a2

    .line 188
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, v3, p0, v0, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendGeneralEvent(IIILjava/lang/String;)V

    return v1

    :cond_a2
    return v0
.end method


# virtual methods
.method public requestCallDataUsage()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_5

    return-void

    .line 399
    :cond_5
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->requestCallDataUsage()V

    return-void
.end method

.method public requestCameraCapabilities()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getWidth()I

    move-result v1

    .line 375
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getHeight()I

    move-result v2

    .line 376
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object v3

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCameraCapabilities() width : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImsVTProviderImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_55
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    const-string v5, "LAND"

    .line 380
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_75

    const-string v5, "QCIF"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_75

    .line 381
    invoke-interface {v4, v0, v2, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    goto :goto_55

    .line 383
    :cond_75
    invoke-interface {v4, v0, v1, v2}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    goto :goto_55

    :cond_79
    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 8

    .line 270
    monitor-enter p0

    if-eqz p2, :cond_f0

    .line 271
    :try_start_3
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_9

    goto/16 :goto_f0

    :cond_9
    const-string v0, "ImsVTProviderImpl"

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSessionModifyRequest from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 275
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance p1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 279
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_48

    .line 280
    invoke-virtual {p1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_74

    .line 281
    :cond_48
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v1

    if-eqz v1, :cond_57

    const/4 v1, 0x2

    .line 282
    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_74

    .line 283
    :cond_57
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_66

    const/4 v1, 0x3

    .line 284
    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_74

    .line 285
    :cond_66
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v1, 0x4

    .line 286
    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 289
    :cond_74
    :goto_74
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    if-nez v1, :cond_7c

    .line 290
    monitor-exit p0

    return-void

    .line 293
    :cond_7c
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    .line 294
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->convertQualityFromVideoProfile(I)I

    move-result v3

    .line 293
    invoke-virtual {v1, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 296
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mModifyRequestTime:J
    :try_end_93
    .catchall {:try_start_3 .. :try_end_93} :catchall_f2

    .line 301
    :try_start_93
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    if-eq v1, v3, :cond_ab

    .line 302
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const-string v1, ""

    invoke-interface {p2, p1, v0, v1}, Lcom/sec/ims/volte2/IImsCallSession;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V

    goto :goto_ee

    .line 304
    :cond_ab
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result p1

    if-eqz p1, :cond_bd

    .line 305
    iput-boolean v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    .line 306
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->holdVideo()V

    goto :goto_ee

    .line 307
    :cond_bd
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result p1

    if-nez p1, :cond_ee

    iget-boolean p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    if-eqz p1, :cond_ee

    .line 308
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    .line 309
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->resumeVideo()V
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_d2} :catch_d3
    .catch Ljava/lang/NullPointerException; {:try_start_93 .. :try_end_d2} :catch_d3
    .catchall {:try_start_93 .. :try_end_d2} :catchall_f2

    goto :goto_ee

    :catch_d3
    move-exception p1

    :try_start_d4
    const-string p2, "ImsVTProviderImpl"

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t notify due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_ee
    :goto_ee
    monitor-exit p0

    return-void

    .line 272
    :cond_f0
    :goto_f0
    monitor-exit p0

    return-void

    :catchall_f2
    move-exception p1

    .line 315
    monitor-exit p0
    :try_end_f4
    .catchall {:try_start_d4 .. :try_end_f4} :catchall_f2

    throw p1
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_af

    .line 325
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_8

    goto/16 :goto_af

    .line 329
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSessionModifyResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVTProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    const/4 v1, 0x0

    .line 331
    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 332
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 333
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 334
    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_4b

    :cond_47
    const/4 v2, 0x1

    .line 336
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 338
    :goto_4b
    iget-boolean v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    if-eqz v2, :cond_7e

    .line 339
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    goto :goto_7e

    .line 341
    :cond_52
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 v2, 0x2

    .line 342
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_7e

    .line 343
    :cond_61
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_70

    const/4 v2, 0x3

    .line 344
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_7e

    .line 345
    :cond_70
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_7e

    const/4 v2, 0x4

    .line 346
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 349
    :cond_7e
    :goto_7e
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    if-nez v2, :cond_85

    return-void

    .line 353
    :cond_85
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    .line 354
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->convertQualityFromVideoProfile(I)I

    move-result p1

    .line 353
    invoke-virtual {v2, p1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 357
    :try_start_94
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    if-ne p1, v2, :cond_aa

    .line 358
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0, v1}, Lcom/sec/ims/volte2/IImsCallSession;->reject(I)V

    goto :goto_af

    .line 360
    :cond_aa
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0, v0}, Lcom/sec/ims/volte2/IImsCallSession;->accept(Lcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_af} :catch_af

    :catch_af
    :cond_af
    :goto_af
    return-void
.end method

.method public declared-synchronized setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-nez v0, :cond_a

    goto :goto_41

    :cond_a
    if-nez p1, :cond_30

    .line 71
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    .line 72
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v1, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->unregisterForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V

    goto :goto_12

    .line 74
    :cond_24
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 76
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_43

    .line 77
    monitor-exit p0

    return-void

    .line 80
    :cond_30
    :try_start_30
    new-instance v0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;-><init>(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;Lcom/android/ims/internal/IImsVideoCallCallback;)V

    .line 81
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p1, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->registerForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_43

    .line 83
    monitor-exit p0

    return-void

    .line 67
    :cond_41
    :goto_41
    monitor-exit p0

    return-void

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCamera(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    monitor-enter p0

    .line 95
    :try_start_1
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz p2, :cond_d6

    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-nez p2, :cond_b

    goto/16 :goto_d6

    :cond_b
    const-string p2, "ImsVTProviderImpl"

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCamera("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): cameraId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x30000025

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-nez p1, :cond_70

    .line 101
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    iget-boolean p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    invoke-interface {p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->stopCameraForProvider(Z)V

    .line 103
    iget-boolean p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    if-eqz p1, :cond_6e

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    .line 106
    :cond_6e
    monitor-exit p0

    return-void

    .line 109
    :cond_70
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->setCameraAdditionService(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_78

    .line 110
    monitor-exit p0

    return-void

    .line 113
    :cond_78
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->getDefaultCameraId()I

    move-result p2

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 115
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_94

    .line 118
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    .line 119
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2, p1}, Lcom/sec/ims/volte2/IImsCallSession;->startCameraForProvider(I)V

    goto :goto_d1

    :cond_94
    if-eq p2, p1, :cond_a6

    if-eq p2, v2, :cond_a6

    .line 120
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getUsingCamera()Z

    move-result p2

    if-eqz p2, :cond_a6

    .line 121
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->switchCamera()V

    goto :goto_d1

    .line 123
    :cond_a6
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getUsingCamera()Z

    move-result p2

    if-eqz p2, :cond_c4

    .line 124
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    .line 125
    invoke-interface {v2, v0, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onCameraState(II)V

    goto :goto_b4

    .line 128
    :cond_c4
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p2

    if-lez p2, :cond_d1

    .line 129
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2, p1}, Lcom/sec/ims/volte2/IImsCallSession;->startCameraForProvider(I)V

    .line 132
    :cond_d1
    :goto_d1
    invoke-direct {p0, v0}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->notifyLocalVideoSize(I)V

    .line 133
    monitor-exit p0

    return-void

    .line 96
    :cond_d6
    :goto_d6
    monitor-exit p0

    return-void

    :catchall_d8
    move-exception p1

    .line 133
    monitor-exit p0
    :try_end_da
    .catchall {:try_start_1 .. :try_end_da} :catchall_d8

    throw p1
.end method

.method public setDeviceOrientation(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    monitor-enter p0

    .line 237
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_61

    const-string v0, "ImsVTProviderImpl"

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 240
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3000002a

    .line 239
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setDeviceOrientation(I)V

    .line 243
    :cond_61
    monitor-exit p0

    return-void

    :catchall_63
    move-exception p1

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_63

    throw p1
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    monitor-enter p0

    .line 219
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_6e

    const-string v0, "ImsVTProviderImpl"

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplaySurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 222
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_54

    const-string v1, "0"

    goto :goto_56

    :cond_54
    const-string v1, "1"

    :goto_56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x30000029

    .line 221
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setDisplaySurface(ILandroid/view/Surface;)V

    .line 225
    :cond_6e
    monitor-exit p0

    return-void

    :catchall_70
    move-exception p1

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_70

    throw p1
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-nez v0, :cond_9

    goto :goto_7e

    .line 414
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3000002b

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz p1, :cond_5d

    .line 416
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendStillImage filePath "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v3

    const/16 v5, 0x100

    const-string v6, "VGA"

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendStillImage(ILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_7e

    .line 420
    :cond_5d
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getUsingCamera()Z

    move-result p1

    if-nez p1, :cond_73

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p1

    if-lez p1, :cond_73

    .line 421
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/ims/volte2/IImsCallSession;->startCameraForProvider(I)V

    .line 423
    :cond_73
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendLiveVideo(I)V

    :cond_7e
    :goto_7e
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_6e

    const-string v0, "ImsVTProviderImpl"

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 205
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_54

    const-string v1, "0"

    goto :goto_56

    :cond_54
    const-string v1, "1"

    :goto_56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x30000028

    .line 204
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setPreviewSurface(ILandroid/view/Surface;)V

    .line 208
    :cond_6e
    monitor-exit p0

    return-void

    :catchall_70
    move-exception p1

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_70

    throw p1
.end method

.method public setZoom(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    monitor-enter p0

    .line 255
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_c

    .line 256
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setZoom(F)V

    .line 258
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method
