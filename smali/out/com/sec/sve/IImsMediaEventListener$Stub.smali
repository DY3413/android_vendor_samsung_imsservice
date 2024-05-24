.class public abstract Lcom/sec/sve/IImsMediaEventListener$Stub;
.super Landroid/os/Binder;
.source "IImsMediaEventListener.java"

# interfaces
.implements Lcom/sec/sve/IImsMediaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sve/IImsMediaEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sve/IImsMediaEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAudioInjectionEnded:I = 0x9

.field static final TRANSACTION_onAudioRtpRtcpTimeout:I = 0x1

.field static final TRANSACTION_onDtmfEvent:I = 0x7

.field static final TRANSACTION_onRecordEvent:I = 0x8

.field static final TRANSACTION_onRecordingStopped:I = 0xa

.field static final TRANSACTION_onRtpLossRate:I = 0x2

.field static final TRANSACTION_onRtpStats:I = 0x3

.field static final TRANSACTION_onTextReceive:I = 0x5

.field static final TRANSACTION_onTextRtpRtcpTimeout:I = 0x6

.field static final TRANSACTION_onVideoEvent:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.sve.IImsMediaEventListener"

    .line 51
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/sve/IImsMediaEventListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.sec.sve.IImsMediaEventListener"

    .line 62
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 63
    instance-of v1, v0, Lcom/sec/sve/IImsMediaEventListener;

    if-eqz v1, :cond_13

    .line 64
    check-cast v0, Lcom/sec/sve/IImsMediaEventListener;

    return-object v0

    .line 66
    :cond_13
    new-instance v0, Lcom/sec/sve/IImsMediaEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/sve/IImsMediaEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v2, "com.sec.sve.IImsMediaEventListener"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v3, 0xffffff

    if-gt p1, v3, :cond_d

    .line 76
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v4, 0x5f4e5446

    if-eq p1, v4, :cond_120

    packed-switch p1, :pswitch_data_124

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 216
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-wide v3, v4

    move-object v5, v6

    .line 222
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/IImsMediaEventListener;->onRecordingStopped(JJLjava/lang/String;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11f

    .line 205
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-interface {p0, v1, v2, v4, v5}, Lcom/sec/sve/IImsMediaEventListener;->onAudioInjectionEnded(JJ)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11f

    .line 194
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-interface {p0, v1, v2}, Lcom/sec/sve/IImsMediaEventListener;->onRecordEvent(II)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11f

    .line 183
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-interface {p0, v1, v2}, Lcom/sec/sve/IImsMediaEventListener;->onDtmfEvent(II)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11f

    .line 172
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-interface {p0, v1, v2}, Lcom/sec/sve/IImsMediaEventListener;->onTextRtpRtcpTimeout(II)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11f

    .line 155
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 165
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/IImsMediaEventListener;->onTextReceive(IILjava/lang/String;II)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_11f

    .line 138
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    .line 148
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/IImsMediaEventListener;->onVideoEvent(IIIII)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_11f

    .line 119
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    .line 131
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/IImsMediaEventListener;->onRtpStats(IIIIII)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_11f

    .line 102
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    .line 112
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/IImsMediaEventListener;->onRtpLossRate(IIFFI)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_11f

    .line 91
    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    invoke-interface {p0, v1, v2}, Lcom/sec/sve/IImsMediaEventListener;->onAudioRtpRtcpTimeout(II)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_11f
    return v7

    .line 82
    :cond_120
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_10e
        :pswitch_ec
        :pswitch_c5
        :pswitch_a3
        :pswitch_80
        :pswitch_6d
        :pswitch_5a
        :pswitch_47
        :pswitch_34
        :pswitch_1a
    .end packed-switch
.end method
