.class Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;
.super Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;
.source "ImsVideoCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsVideoCallEventListener"
.end annotation


# instance fields
.field private mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

.field final synthetic this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;


# direct methods
.method public constructor <init>(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .registers 3

    .line 452
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    invoke-direct {p0}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;-><init>()V

    .line 453
    iput-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    return-void
.end method

.method private checkInvalidStatus(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v1, :cond_17

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_17

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-ne p1, v0, :cond_17

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 879
    :cond_4
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertStateToVideoProfile(I)I

    move-result v1

    .line 880
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoPause()Z

    move-result v2

    if-eqz v2, :cond_18

    or-int/lit8 v1, v1, 0x4

    .line 883
    :cond_18
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertQualityToVideoProfile(I)I

    move-result p0

    .line 885
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    if-nez p1, :cond_2b

    return-object v0

    .line 888
    :cond_2b
    new-instance p1, Landroid/telecom/VideoProfile;

    invoke-direct {p1, v1, p0}, Landroid/telecom/VideoProfile;-><init>(II)V

    return-object p1
.end method

.method private convertQualityToVideoProfile(I)I
    .registers 2

    .line 0
    const/16 p0, 0xc

    if-eq p1, p0, :cond_12

    const/16 p0, 0xd

    if-eq p1, p0, :cond_10

    const/16 p0, 0xf

    if-eq p1, p0, :cond_e

    const/4 p0, 0x4

    goto :goto_13

    :cond_e
    const/4 p0, 0x1

    goto :goto_13

    :cond_10
    const/4 p0, 0x2

    goto :goto_13

    :cond_12
    const/4 p0, 0x3

    :goto_13
    return p0
.end method

.method private convertStateToVideoProfile(I)I
    .registers 5

    .line 0
    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_d

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_11

    if-eq p1, v1, :cond_12

    const/4 p0, 0x4

    if-eq p1, p0, :cond_f

    :cond_d
    move p0, v0

    goto :goto_12

    :cond_f
    move p0, v2

    goto :goto_12

    :cond_11
    move p0, v1

    :cond_12
    :goto_12
    return p0
.end method


# virtual methods
.method public changeCameraCapabilities(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 702
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeCameraCapabilities() width : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance p1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-direct {p1, p2, p3}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(II)V

    .line 705
    :try_start_2a
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_2f

    :catch_2f
    return-void
.end method

.method public getSession()Lcom/sec/ims/volte2/IImsCallSession;
    .registers 1

    .line 461
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-object p0
.end method

.method public onCameraState(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 550
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVTProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x30000026

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    packed-switch p2, :pswitch_data_66

    goto :goto_64

    .line 572
    :pswitch_49
    :try_start_49
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_64

    .line 568
    :pswitch_50
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x5

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_64

    .line 561
    :pswitch_57
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x6

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_64

    .line 556
    :pswitch_5e
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_64} :catch_64

    :catch_64
    :goto_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_57
        :pswitch_50
        :pswitch_49
        :pswitch_50
        :pswitch_57
        :pswitch_50
        :pswitch_50
    .end packed-switch
.end method

.method public onChangeCallDataUsage(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 812
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p2, p3}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeCallDataUsage(J)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method

.method public onChangePeerDimension(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 666
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 670
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChangePeerDimension() width : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :try_start_25
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p2, p3}, Lcom/android/ims/internal/IImsVideoCallCallback;->changePeerDimensions(II)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method

.method public onEmojiState(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 767
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_50

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez p1, :cond_f

    goto :goto_50

    .line 771
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEmojiState() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_49

    const/4 p1, 0x1

    if-eq p2, p1, :cond_41

    const/4 p1, 0x2

    if-eq p2, p1, :cond_39

    const/4 p1, 0x3

    if-eq p2, p1, :cond_31

    goto :goto_50

    .line 787
    :cond_31
    :try_start_31
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x4b3

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_50

    .line 783
    :cond_39
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x4b2

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_50

    .line 779
    :cond_41
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x4b1

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_50

    .line 775
    :cond_49
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x4b0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_50} :catch_50

    :catch_50
    :cond_50
    :goto_50
    return-void
.end method

.method public onRecordState(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 720
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_66

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz p1, :cond_66

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez p1, :cond_f

    goto :goto_66

    .line 724
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRecordState() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5f

    const/4 p1, 0x1

    if-eq p2, p1, :cond_57

    const/4 p1, 0x2

    if-eq p2, p1, :cond_4f

    const/4 p1, 0x3

    if-eq p2, p1, :cond_47

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3f

    const/4 p1, 0x5

    if-eq p2, p1, :cond_37

    goto :goto_66

    .line 748
    :cond_37
    :try_start_37
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x457

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_66

    .line 744
    :cond_3f
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x44f

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_66

    .line 740
    :cond_47
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x44e

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_66

    .line 736
    :cond_4f
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x456

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_66

    .line 732
    :cond_57
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x44d

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_66

    .line 728
    :cond_5f
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x44c

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_66} :catch_66

    :catch_66
    :cond_66
    :goto_66
    return-void
.end method

.method public onVideoOrientChanged(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onVideoQualityChanged(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 635
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVideoQualityChanged() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_32

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2c

    if-eq p2, p1, :cond_26

    goto :goto_38

    .line 647
    :cond_26
    :try_start_26
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, v0}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeVideoQuality(I)V

    goto :goto_38

    .line 643
    :cond_2c
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeVideoQuality(I)V

    goto :goto_38

    .line 639
    :cond_32
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeVideoQuality(I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_38} :catch_38

    :catch_38
    :goto_38
    return-void
.end method

.method public onVideoState(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 594
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVTProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x30000027

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p1, 0x2

    if-eqz p2, :cond_6d

    const/4 v0, 0x1

    if-eq p2, v0, :cond_67

    if-eq p2, p1, :cond_59

    const/4 p1, 0x3

    if-eq p2, p1, :cond_51

    goto :goto_72

    .line 613
    :cond_51
    :try_start_51
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x3e9

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_72

    .line 608
    :cond_59
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->-$$Nest$fputmIsVideoPause(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;Z)V

    .line 609
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x3e8

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_72

    .line 604
    :cond_67
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, v0}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_72

    .line 600
    :cond_6d
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_72} :catch_72

    :catch_72
    :goto_72
    return-void
.end method

.method public receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    const-string p1, "ImsVTProviderImpl"

    const-string/jumbo v0, "receiveSessionModifyRequest()"

    .line 476
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0, p2}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;

    move-result-object p1

    if-nez p1, :cond_16

    return-void

    .line 483
    :cond_16
    :try_start_16
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void
.end method

.method public receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    const-string/jumbo p1, "receiveSessionModifyResponse()"

    const-string v0, "ImsVTProviderImpl"

    .line 500
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-direct {p0, p3}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;

    move-result-object p1

    .line 503
    invoke-direct {p0, p4}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;

    move-result-object p3

    const/16 v1, 0xc8

    const/4 v2, 0x0

    const-wide v3, 0x408f400000000000L    # 1000.0

    if-ne p2, v1, :cond_56

    if-eqz p1, :cond_55

    if-nez p3, :cond_26

    goto :goto_55

    .line 511
    :cond_26
    invoke-virtual {p4}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p2

    const/4 p4, 0x1

    if-ne p2, p4, :cond_32

    .line 512
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    invoke-static {p2, v2}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->-$$Nest$fputmIsVideoPause(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;Z)V

    .line 514
    :cond_32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#IMSCALL - Call Modify KPI - Success : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    invoke-static {v5}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->-$$Nest$fgetmModifyRequestTime(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, p4

    goto :goto_a7

    :cond_55
    :goto_55
    return-void

    :cond_56
    const/16 p4, 0x456

    if-ne p2, p4, :cond_7d

    .line 517
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "#IMSCALL - Call Modify KPI - Rejected : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p4, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    invoke-static {p4}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->-$$Nest$fgetmModifyRequestTime(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    goto :goto_a7

    :cond_7d
    const/16 p4, 0x455

    if-eq p2, p4, :cond_85

    const/16 p4, 0x1e7

    if-ne p2, p4, :cond_a7

    .line 521
    :cond_85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "#IMSCALL - Call Modify KPI - Failure : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p4, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    invoke-static {p4}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->-$$Nest$fgetmModifyRequestTime(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 525
    :cond_a7
    :goto_a7
    :try_start_a7
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, v2, p1, p3}, Lcom/android/ims/internal/IImsVideoCallCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_ac} :catch_ac

    :catch_ac
    return-void
.end method

.method public setVideoPause(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v1, :cond_16

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_16

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-eq p1, v0, :cond_11

    goto :goto_16

    .line 686
    :cond_11
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    invoke-static {p0, p2}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->-$$Nest$fputmIsVideoPause(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;Z)V

    :cond_16
    :goto_16
    return-void
.end method
