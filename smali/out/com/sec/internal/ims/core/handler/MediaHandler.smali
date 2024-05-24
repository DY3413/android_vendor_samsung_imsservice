.class public abstract Lcom/sec/internal/ims/core/handler/MediaHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "MediaHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;


# instance fields
.field protected final mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 16
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-void
.end method


# virtual methods
.method public bindToNetwork(Landroid/net/Network;)V
    .registers 2

    .line 0
    return-void
.end method

.method public deinitSurface(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public getCameraInfo(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public getHwSupportedVideoCodecs(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    return-object p1
.end method

.method public getMaxZoom()V
    .registers 1

    .line 0
    return-void
.end method

.method public getZoom()V
    .registers 1

    .line 0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    .line 36
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public holdVideo(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public registerForMediaEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 24
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public requestCallDataUsage()V
    .registers 1

    .line 0
    return-void
.end method

.method public resetCameraId()V
    .registers 1

    .line 0
    return-void
.end method

.method public restartEmoji(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public resumeVideo(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public sendGeneralEvent(IIILjava/lang/String;)V
    .registers 5

    .line 0
    return-void
.end method

.method public sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    .registers 2

    .line 0
    return-void
.end method

.method public sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 0
    return-void
.end method

.method public setCamera(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public setCameraEffect(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public setDisplaySurface(ILjava/lang/Object;I)V
    .registers 4

    .line 0
    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public setPreviewResolution(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public setPreviewSurface(ILjava/lang/Object;I)V
    .registers 4

    .line 0
    return-void
.end method

.method public setZoom(F)V
    .registers 2

    .line 0
    return-void
.end method

.method public startCamera(III)V
    .registers 4

    .line 0
    return-void
.end method

.method public startCamera(Landroid/view/Surface;)V
    .registers 2

    .line 0
    return-void
.end method

.method public startEmoji(IILjava/lang/String;)V
    .registers 4

    .line 0
    return-void
.end method

.method public startLocalRingBackTone(III)I
    .registers 4

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public startRecord(IILjava/lang/String;)V
    .registers 4

    .line 0
    return-void
.end method

.method public startRender(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public startVideoRenderer(Landroid/view/Surface;)V
    .registers 2

    .line 0
    return-void
.end method

.method public stopCamera(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public stopEmoji(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public stopLocalRingBackTone()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public stopRecord(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public stopVideoRenderer()V
    .registers 1

    .line 0
    return-void
.end method

.method public swipeVideoSurface()V
    .registers 1

    .line 0
    return-void
.end method

.method public switchCamera()V
    .registers 1

    .line 0
    return-void
.end method

.method public unregisterForMediaEvent(Landroid/os/Handler;)V
    .registers 2

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
