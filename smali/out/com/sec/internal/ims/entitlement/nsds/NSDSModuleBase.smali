.class public abstract Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
.super Landroid/os/Handler;
.source "NSDSModuleBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase$InitialState;
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public activateSimDevice(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public deactivateSimDevice(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public dump()V
    .registers 1

    .line 0
    return-void
.end method

.method public handleVoWifToggleOffEvent()V
    .registers 1

    .line 0
    return-void
.end method

.method public handleVoWifToggleOnEvent()V
    .registers 1

    .line 0
    return-void
.end method

.method public initForDeviceReady()V
    .registers 1

    .line 0
    return-void
.end method

.method public onDeviceReady()V
    .registers 1

    .line 0
    return-void
.end method

.method public onSimNotAvailable()V
    .registers 1

    .line 0
    return-void
.end method

.method public onSimReady(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public queueGcmTokenRetrieval()V
    .registers 1

    .line 0
    return-void
.end method

.method public queuePushTokenUpdateInEntitlementServer()V
    .registers 1

    .line 0
    return-void
.end method

.method public queueRefreshDeviceAndServiceInfo(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public queueRefreshDeviceConfig(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public retrieveAkaToken(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public updateE911Address()V
    .registers 1

    .line 0
    return-void
.end method

.method public updateEntitlementUrl(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method
