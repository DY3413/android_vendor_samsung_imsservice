.class public Lcom/sec/internal/google/ImsVideoCallProviderImpl;
.super Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.source "ImsVideoCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;
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
.method static bridge synthetic -$$Nest$fgetmModifyRequestTime(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mModifyRequestTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmIsVideoPause(Lcom/sec/internal/google/ImsVideoCallProviderImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mModifyRequestTime:J

    .line 48
    iput-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    .line 52
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getMediaCallProvider()Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private convertQualityFromVideoProfile(I)I
    .locals 1

    const/4 p0, 0x1

    const/16 v0, 0xd

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    const/16 v0, 0xf

    :cond_2
    :goto_0
    return v0
.end method

.method private notifyLocalVideoSize(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/MediaProfile;->getWidth()I

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getHeight()I

    move-result v1

    .line 140
    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsVTProviderImpl"

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1e0

    const/16 v1, 0x280

    goto :goto_0

    :cond_0
    const-string p0, "Use updateCallProfile notification"

    .line 146
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_1
    :goto_0
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

    .line 152
    iget-object v3, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    .line 153
    iget-object v5, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "LAND"

    .line 154
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "QCIF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 155
    invoke-interface {v4, p1, v1, v0}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    goto :goto_1

    .line 157
    :cond_3
    invoke-interface {v4, p1, v0, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private setCameraAdditionService(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "effect,"

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 166
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 167
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p0, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setCameraEffect(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid effect Id : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsVTProviderImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v0, "startRecord,"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 174
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->startRecord(Ljava/lang/String;)V

    return v1

    :cond_1
    const-string/jumbo v0, "stopRecord"

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->stopRecord()V

    return v1

    :cond_2
    const-string v0, "filter,0"

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->stopEmoji(I)V

    return v1

    :cond_3
    const-string v0, "filter"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->startEmoji(Ljava/lang/String;)V

    return v1

    :cond_4
    const-string v0, "StartScreenSharing"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ""

    const/16 v3, 0x64

    if-eqz v0, :cond_5

    .line 186
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, v3, p0, v1, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendGeneralEvent(IIILjava/lang/String;)V

    return v1

    :cond_5
    const-string v0, "StopScreenSharing"

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 189
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, v3, p0, v0, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendGeneralEvent(IIILjava/lang/String;)V

    return v1

    :cond_6
    return v0
.end method


# virtual methods
.method public requestCallDataUsage()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->requestCallDataUsage()V

    return-void
.end method

.method public requestCameraCapabilities()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getWidth()I

    move-result v1

    .line 376
    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getHeight()I

    move-result v2

    .line 377
    iget-object v3, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object v3

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestCameraCapabilities() width : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImsVTProviderImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    const-string v5, "LAND"

    .line 381
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "QCIF"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 382
    invoke-interface {v4, v0, v2, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    goto :goto_0

    .line 384
    :cond_0
    invoke-interface {v4, v0, v1, v2}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 5

    .line 271
    monitor-enter p0

    if-eqz p2, :cond_9

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "ImsVTProviderImpl"

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSessionModifyRequest from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance p1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 280
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {p1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 283
    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 285
    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 287
    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 290
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    if-nez v1, :cond_5

    .line 291
    monitor-exit p0

    return-void

    .line 294
    :cond_5
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    .line 295
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->convertQualityFromVideoProfile(I)I

    move-result v3

    .line 294
    invoke-virtual {v1, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 297
    iput-boolean v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mModifyRequestTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    if-eq v1, v3, :cond_6

    .line 303
    iget-object p2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const-string v1, ""

    invoke-interface {p2, p1, v0, v1}, Lcom/sec/ims/volte2/IImsCallSession;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_6
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 306
    iput-boolean v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    .line 307
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->holdVideo()V

    goto :goto_1

    .line 308
    :cond_7
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result p1

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    if-eqz p1, :cond_8

    .line 309
    iput-boolean v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    .line 310
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->resumeVideo()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "ImsVTProviderImpl"

    .line 314
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

    .line 316
    :cond_8
    :goto_1
    monitor-exit p0

    return-void

    .line 273
    :cond_9
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 316
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 326
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSessionModifyResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVTProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    const/4 v1, 0x0

    .line 332
    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 333
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 335
    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 337
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 339
    :goto_0
    iget-boolean v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    if-eqz v2, :cond_5

    .line 340
    iput-boolean v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    goto :goto_1

    .line 342
    :cond_2
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    .line 343
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_1

    .line 344
    :cond_3
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    .line 345
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_1

    .line 346
    :cond_4
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    .line 347
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 350
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    if-nez v2, :cond_6

    return-void

    .line 354
    :cond_6
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    .line 355
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->convertQualityFromVideoProfile(I)I

    move-result p1

    .line 354
    invoke-virtual {v2, p1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 358
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    if-ne p1, v2, :cond_7

    .line 359
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0, v1}, Lcom/sec/ims/volte2/IImsCallSession;->reject(I)V

    goto :goto_2

    .line 361
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0, v0}, Lcom/sec/ims/volte2/IImsCallSession;->accept(Lcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_2
    return-void
.end method

.method public setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    .line 71
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    .line 72
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v1, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->unregisterForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 75
    monitor-enter p0

    const/4 p1, 0x0

    .line 76
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 77
    iput-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 81
    :cond_2
    new-instance v0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;-><init>(Lcom/sec/internal/google/ImsVideoCallProviderImpl;Lcom/android/ims/internal/IImsVideoCallCallback;)V

    .line 82
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p0, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->registerForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setCamera(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object p2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p2, "ImsVTProviderImpl"

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCamera("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): cameraId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p2, 0x30000025

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-nez p1, :cond_2

    .line 102
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    iget-boolean p2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    invoke-interface {p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->stopCameraForProvider(Z)V

    .line 104
    iget-boolean p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    .line 107
    :cond_1
    monitor-exit p0

    return-void

    .line 110
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->setCameraAdditionService(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 111
    monitor-exit p0

    return-void

    .line 114
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->getDefaultCameraId()I

    move-result p2

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 116
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    .line 119
    iput-boolean v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    .line 120
    iget-object p2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2, p1}, Lcom/sec/ims/volte2/IImsCallSession;->startCameraForProvider(I)V

    goto :goto_1

    :cond_4
    if-eq p2, p1, :cond_5

    if-eq p2, v2, :cond_5

    .line 121
    iget-object p2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getUsingCamera()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 122
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->switchCamera()V

    goto :goto_1

    .line 124
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getUsingCamera()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 125
    iget-object p2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    .line 126
    invoke-interface {v2, v0, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onCameraState(II)V

    goto :goto_0

    .line 129
    :cond_6
    iget-object p2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p2

    if-lez p2, :cond_7

    .line 130
    iget-object p2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2, p1}, Lcom/sec/ims/volte2/IImsCallSession;->startCameraForProvider(I)V

    .line 133
    :cond_7
    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->notifyLocalVideoSize(I)V

    .line 134
    monitor-exit p0

    return-void

    .line 97
    :cond_8
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDeviceOrientation(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_0

    const-string v0, "ImsVTProviderImpl"

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x3000002a

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 241
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setDeviceOrientation(I)V

    .line 244
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_1

    const-string v0, "ImsVTProviderImpl"

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplaySurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x30000029

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 223
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    const-string v2, "1"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setDisplaySurfaceForPhoneId(ILandroid/view/Surface;)V

    .line 226
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3000002b

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz p1, :cond_1

    .line 417
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 418
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendStillImage filePath "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v3

    const/16 v5, 0x100

    const/4 v7, 0x0

    const-string v6, "VGA"

    invoke-interface/range {v2 .. v7}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendStillImage(ILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    .line 421
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getUsingCamera()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p1

    if-lez p1, :cond_2

    .line 422
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/ims/volte2/IImsCallSession;->startCameraForProvider(I)V

    .line 424
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendLiveVideo(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_1

    const-string v0, "ImsVTProviderImpl"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x30000028

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 206
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    const-string v2, "1"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setPreviewSurfaceForPhoneId(ILandroid/view/Surface;)V

    .line 209
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setZoom(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setZoom(F)V

    .line 259
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
