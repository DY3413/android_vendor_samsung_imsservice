.class public abstract Lcom/sec/internal/ims/core/handler/PresenceHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "PresenceHandler.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    .line 72
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

.method public publish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;I)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForPresenceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForPresenceNotifyInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForPresenceNotifyStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForPublishFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public registerForWatcherInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public subscribe(Lcom/sec/ims/util/ImsUri;ZLandroid/os/Message;Ljava/lang/String;I)V
    .registers 6

    .line 0
    return-void
.end method

.method public subscribeList(Ljava/util/List;ZLandroid/os/Message;Ljava/lang/String;ZII)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Landroid/os/Message;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public unpublish(I)V
    .registers 2

    .line 0
    return-void
.end method
