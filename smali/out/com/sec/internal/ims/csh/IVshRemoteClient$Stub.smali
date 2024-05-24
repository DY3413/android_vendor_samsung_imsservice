.class public abstract Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;
.super Landroid/os/Binder;
.source "IVshRemoteClient.java"

# interfaces
.implements Lcom/sec/internal/ims/csh/IVshRemoteClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/csh/IVshRemoteClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_closeVshSource:I = 0x2

.field static final TRANSACTION_openVshSource:I = 0x1

.field static final TRANSACTION_setOrientationListenerType:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.internal.ims.csh.IVshRemoteClient"

    .line 75
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/internal/ims/csh/IVshRemoteClient;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.sec.internal.ims.csh.IVshRemoteClient"

    .line 86
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 87
    instance-of v1, v0, Lcom/sec/internal/ims/csh/IVshRemoteClient;

    if-eqz v1, :cond_13

    .line 88
    check-cast v0, Lcom/sec/internal/ims/csh/IVshRemoteClient;

    return-object v0

    .line 90
    :cond_13
    new-instance v0, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.sec.internal.ims.csh.IVshRemoteClient"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 100
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_7f

    if-eq p1, v1, :cond_53

    const/4 v0, 0x2

    if-eq p1, v0, :cond_35

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1f

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 149
    :cond_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-interface {p0, p1, p4}, Lcom/sec/internal/ims/csh/IVshRemoteClient;->setOrientationListenerType(II)I

    move-result p0

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7e

    .line 135
    :cond_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 137
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-interface {p0, v2, v3, p1, p4}, Lcom/sec/internal/ims/csh/IVshRemoteClient;->closeVshSource(JLandroid/view/Surface;Z)I

    move-result p0

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7e

    .line 115
    :cond_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 117
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/view/Surface;

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 127
    invoke-interface/range {v2 .. v9}, Lcom/sec/internal/ims/csh/IVshRemoteClient;->openVshSource(JLandroid/view/Surface;IIII)I

    move-result p0

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7e
    return v1

    .line 106
    :cond_7f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
