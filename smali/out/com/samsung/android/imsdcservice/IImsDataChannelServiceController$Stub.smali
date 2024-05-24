.class public abstract Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController$Stub;
.super Landroid/os/Binder;
.source "IImsDataChannelServiceController.java"

# interfaces
.implements Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.samsung.android.imsdcservice.IImsDataChannelServiceController"

    .line 64
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 65
    instance-of v1, v0, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    if-eqz v1, :cond_13

    .line 66
    check-cast v0, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    return-object v0

    .line 68
    :cond_13
    new-instance v0, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
