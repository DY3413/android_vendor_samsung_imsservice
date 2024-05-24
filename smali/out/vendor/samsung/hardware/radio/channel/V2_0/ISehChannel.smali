.class public interface abstract Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;
.super Ljava/lang/Object;
.source "ISehChannel.java"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string/jumbo v1, "vendor.samsung.hardware.radio.channel@2.0::ISehChannel"

    .line 23
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 25
    instance-of v3, v2, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    if-eqz v3, :cond_14

    .line 26
    check-cast v2, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    return-object v2

    .line 29
    :cond_14
    new-instance v2, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel$Proxy;

    invoke-direct {v2, p0}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 32
    :try_start_19
    invoke-interface {v2}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_31} :catch_34

    if-eqz v3, :cond_21

    return-object v2

    :catch_34
    :cond_34
    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "vendor.samsung.hardware.radio.channel@2.0::ISehChannel"

    .line 79
    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract send(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCallback(Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannelCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
