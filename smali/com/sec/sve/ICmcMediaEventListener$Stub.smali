.class public abstract Lcom/sec/sve/ICmcMediaEventListener$Stub;
.super Landroid/os/Binder;
.source "ICmcMediaEventListener.java"

# interfaces
.implements Lcom/sec/sve/ICmcMediaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sve/ICmcMediaEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sve/ICmcMediaEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCmcRecordEvent:I = 0x5

.field static final TRANSACTION_onCmcRecorderStoppedEvent:I = 0x6

.field static final TRANSACTION_onRelayChannelEvent:I = 0x4

.field static final TRANSACTION_onRelayEvent:I = 0x1

.field static final TRANSACTION_onRelayRtpStats:I = 0x3

.field static final TRANSACTION_onRelayStreamEvent:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.sve.ICmcMediaEventListener"

    .line 39
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/sve/ICmcMediaEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sec.sve.ICmcMediaEventListener"

    .line 50
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    instance-of v1, v0, Lcom/sec/sve/ICmcMediaEventListener;

    if-eqz v1, :cond_1

    .line 52
    check-cast v0, Lcom/sec/sve/ICmcMediaEventListener;

    return-object v0

    .line 54
    :cond_1
    new-instance v0, Lcom/sec/sve/ICmcMediaEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/sve/ICmcMediaEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.sec.sve.ICmcMediaEventListener"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 64
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 148
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-interface {p0, p1, p4, v1}, Lcom/sec/sve/ICmcMediaEventListener;->onCmcRecorderStoppedEvent(IILjava/lang/String;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 135
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-interface {p0, p1, p4, v1}, Lcom/sec/sve/ICmcMediaEventListener;->onCmcRecordEvent(III)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-interface {p0, p1, p4}, Lcom/sec/sve/ICmcMediaEventListener;->onRelayChannelEvent(II)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 103
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, p0

    .line 117
    invoke-interface/range {v1 .. v8}, Lcom/sec/sve/ICmcMediaEventListener;->onRelayRtpStats(IIIIIII)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-interface {p0, p1, p4, v1}, Lcom/sec/sve/ICmcMediaEventListener;->onRelayStreamEvent(III)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 83
    invoke-interface {p0, p1, p4}, Lcom/sec/sve/ICmcMediaEventListener;->onRelayEvent(II)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
