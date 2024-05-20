.class Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;
.super Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;
.source "ImsVideoCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/ImsVideoCallProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsVideoCallEventListener"
.end annotation


# instance fields
.field private mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

.field final synthetic this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;


# direct methods
.method public constructor <init>(Lcom/sec/internal/google/ImsVideoCallProviderImpl;Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-direct {p0}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;-><init>()V

    .line 454
    iput-object p2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    return-void
.end method

.method private checkInvalidStatus(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 880
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertStateToVideoProfile(I)I

    move-result v1

    .line 881
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoPause()Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x4

    .line 884
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertQualityToVideoProfile(I)I

    move-result p0

    .line 886
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 889
    :cond_2
    new-instance p1, Landroid/telecom/VideoProfile;

    invoke-direct {p1, v1, p0}, Landroid/telecom/VideoProfile;-><init>(II)V

    return-object p1
.end method

.method private convertQualityToVideoProfile(I)I
    .locals 0

    const/16 p0, 0xc

    if-eq p1, p0, :cond_2

    const/16 p0, 0xd

    if-eq p1, p0, :cond_1

    const/16 p0, 0xf

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method private convertStateToVideoProfile(I)I
    .locals 3

    const/4 p0, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    :cond_0
    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v0

    goto :goto_0

    :cond_2
    move p0, v1

    :cond_3
    :goto_0
    return p0
.end method


# virtual methods
.method public changeCameraCapabilities(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 703
    :cond_0
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

    .line 704
    new-instance p1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-direct {p1, p2, p3}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(II)V

    .line 706
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getSession()Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-object p0
.end method

.method public onCameraState(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 551
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVTProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x30000026

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 573
    :pswitch_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 569
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x5

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 562
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x6

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 557
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onChangeCallDataUsage(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 808
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 813
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p2, p3}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeCallDataUsage(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onChangePeerDimension(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 667
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 671
    :cond_0
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

    .line 673
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p2, p3}, Lcom/android/ims/internal/IImsVideoCallCallback;->changePeerDimensions(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onEmojiState(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    iget-object v0, p1, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez p1, :cond_0

    goto :goto_0

    .line 772
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEmojiState() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 788
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x4b3

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 784
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x4b2

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 780
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x4b1

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 776
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x4b0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_0
    return-void
.end method

.method public onRecordState(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 721
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    iget-object v0, p1, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez p1, :cond_0

    goto :goto_0

    .line 725
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRecordState() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    if-eq p2, p1, :cond_5

    const/4 p1, 0x2

    if-eq p2, p1, :cond_4

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 749
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x457

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 745
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x44f

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 741
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x44e

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 737
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x456

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 733
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x44d

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 729
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x44c

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_0
    return-void
.end method

.method public onVideoOrientChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onVideoQualityChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 636
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVideoQualityChanged() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 648
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, v0}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeVideoQuality(I)V

    goto :goto_0

    .line 644
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeVideoQuality(I)V

    goto :goto_0

    .line 640
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeVideoQuality(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public onVideoState(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 595
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVTProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x30000027

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p1, 0x2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 614
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x3e9

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 609
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->-$$Nest$fputmIsVideoPause(Lcom/sec/internal/google/ImsVideoCallProviderImpl;Z)V

    .line 610
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x3e8

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 605
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, v0}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 601
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "ImsVTProviderImpl"

    const-string v0, "receiveSessionModifyRequest()"

    .line 477
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-direct {p0, p2}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 484
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "ImsVTProviderImpl"

    const-string v0, "receiveSessionModifyResponse()"

    .line 501
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-direct {p0, p3}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;

    move-result-object p3

    .line 504
    invoke-direct {p0, p4}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide v4, 0x408f400000000000L    # 1000.0

    if-ne p2, v1, :cond_4

    if-eqz p3, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 512
    :cond_1
    invoke-virtual {p4}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p2

    if-ne p2, v2, :cond_2

    .line 513
    iget-object p2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {p2, v3}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->-$$Nest$fputmIsVideoPause(Lcom/sec/internal/google/ImsVideoCallProviderImpl;Z)V

    .line 515
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "#IMSCALL - Call Modify KPI - Success : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object p4, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {p4}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->-$$Nest$fgetmModifyRequestTime(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-double v6, v6

    div-double/2addr v6, v4

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/16 p4, 0x456

    if-ne p2, p4, :cond_5

    const/4 v2, 0x5

    .line 518
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "#IMSCALL - Call Modify KPI - Rejected : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object p4, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {p4}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->-$$Nest$fgetmModifyRequestTime(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-double v6, v6

    div-double/2addr v6, v4

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 p4, 0x455

    if-eq p2, p4, :cond_7

    const/16 p4, 0x1e7

    if-ne p2, p4, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v2, 0x2

    .line 522
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "#IMSCALL - Call Modify KPI - Failure : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object p4, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {p4}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->-$$Nest$fgetmModifyRequestTime(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-double v6, v6

    div-double/2addr v6, v4

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :goto_2
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, v2, p3, v0}, Lcom/android/ims/internal/IImsVideoCallCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setVideoPause(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 687
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {p0, p2}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->-$$Nest$fputmIsVideoPause(Lcom/sec/internal/google/ImsVideoCallProviderImpl;Z)V

    :cond_1
    :goto_0
    return-void
.end method
