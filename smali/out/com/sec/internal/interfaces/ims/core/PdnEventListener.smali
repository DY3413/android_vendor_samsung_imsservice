.class public interface abstract Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
.super Ljava/lang/Object;
.source "PdnEventListener.java"


# virtual methods
.method public onConnected(ILandroid/net/Network;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onDisconnected(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onLocalIpChanged(ILandroid/net/Network;Z)V
    .registers 4

    .line 0
    return-void
.end method

.method public onNetworkRequestFail()V
    .registers 1

    .line 0
    return-void
.end method

.method public onPcscfAddressChanged(ILandroid/net/Network;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Network;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onPcscfRestorationNotified(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onResumed(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onResumedBySnapshot(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSuspended(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSuspendedBySnapshot(I)V
    .registers 2

    .line 0
    return-void
.end method
