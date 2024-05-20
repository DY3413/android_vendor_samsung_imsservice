.class public interface abstract Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
.super Ljava/lang/Object;
.source "NetworkStateListener.java"


# virtual methods
.method public abstract onCellInfoChanged(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onDataConnectionStateChanged(IZI)V
.end method

.method public abstract onDefaultNetworkStateChanged(I)V
.end method

.method public abstract onEpdgConnected(I)V
.end method

.method public abstract onEpdgDeregisterRequested(I)V
.end method

.method public abstract onEpdgDisconnected(I)V
.end method

.method public abstract onEpdgHandoverEnableChanged(IZ)V
.end method

.method public abstract onEpdgIpsecDisconnected(I)V
.end method

.method public abstract onEpdgRegisterRequested(IZ)V
.end method

.method public abstract onIKEAuthFAilure(I)V
.end method

.method public abstract onMobileRadioConnected(I)V
.end method

.method public abstract onMobileRadioDisconnected(I)V
.end method

.method public abstract onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V
.end method
