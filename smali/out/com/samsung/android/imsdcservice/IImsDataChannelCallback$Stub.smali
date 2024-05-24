.class public abstract Lcom/samsung/android/imsdcservice/IImsDataChannelCallback$Stub;
.super Landroid/os/Binder;
.source "IImsDataChannelCallback.java"

# interfaces
.implements Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/imsdcservice/IImsDataChannelCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_sendCallEnd:I = 0x3

.field static final TRANSACTION_sendDCEnd:I = 0x4

.field static final TRANSACTION_sendNegotiatedLocalSdp:I = 0x5

.field static final TRANSACTION_sendSdpAnswer:I = 0x2

.field static final TRANSACTION_sendSdpOffer:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.imsdcservice.IImsDataChannelCallback"

    .line 36
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.samsung.android.imsdcservice.IImsDataChannelCallback"

    .line 47
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 48
    instance-of v1, v0, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.imsdcservice.IImsDataChannelCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 61
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_87

    if-eq p1, v1, :cond_71

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_37

    const/4 v0, 0x5

    if-eq p1, v0, :cond_25

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 124
    :cond_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;->sendNegotiatedLocalSdp(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_86

    .line 111
    :cond_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;->sendDCEnd(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_86

    .line 102
    :cond_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-interface {p0, p1}, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;->sendCallEnd(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_86

    .line 89
    :cond_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;->sendSdpAnswer(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_86

    .line 76
    :cond_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;->sendSdpOffer(Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_86
    return v1

    .line 67
    :cond_87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
