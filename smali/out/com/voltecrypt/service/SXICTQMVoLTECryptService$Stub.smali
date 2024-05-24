.class public abstract Lcom/voltecrypt/service/SXICTQMVoLTECryptService$Stub;
.super Landroid/os/Binder;
.source "SXICTQMVoLTECryptService.java"

# interfaces
.implements Lcom/voltecrypt/service/SXICTQMVoLTECryptService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voltecrypt/service/SXICTQMVoLTECryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voltecrypt/service/SXICTQMVoLTECryptService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_checkNeedGoClientApp:I = 0x6

.field static final TRANSACTION_notifyAuthenticationStatus:I = 0x2

.field static final TRANSACTION_notifyLoginResult:I = 0x7

.field static final TRANSACTION_notifyPeerProfileStatus:I = 0x3

.field static final TRANSACTION_notifyQMKeyStatus:I = 0x4

.field static final TRANSACTION_notifyVoLTEStatus:I = 0x5

.field static final TRANSACTION_registerVoLTECallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.voltecrypt.service.SXICTQMVoLTECryptService"

    .line 88
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/voltecrypt/service/SXICTQMVoLTECryptService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.voltecrypt.service.SXICTQMVoLTECryptService"

    .line 99
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 100
    instance-of v1, v0, Lcom/voltecrypt/service/SXICTQMVoLTECryptService;

    if-eqz v1, :cond_13

    .line 101
    check-cast v0, Lcom/voltecrypt/service/SXICTQMVoLTECryptService;

    return-object v0

    .line 103
    :cond_13
    new-instance v0, Lcom/voltecrypt/service/SXICTQMVoLTECryptService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/voltecrypt/service/SXICTQMVoLTECryptService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.voltecrypt.service.SXICTQMVoLTECryptService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 113
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_c3

    packed-switch p1, :pswitch_data_c8

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 207
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-interface {p0, p1, p4}, Lcom/voltecrypt/service/SXICTQMVoLTECryptService;->notifyLoginResult(ILjava/lang/String;)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_c2

    .line 198
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-interface {p0, p1}, Lcom/voltecrypt/service/SXICTQMVoLTECryptService;->checkNeedGoClientApp(I)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_c2

    .line 186
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-interface {p0, p1, p4}, Lcom/voltecrypt/service/SXICTQMVoLTECryptService;->notifyVoLTEStatus(ILjava/lang/String;)I

    move-result p0

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c2

    .line 168
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 178
    invoke-interface/range {v2 .. v7}, Lcom/voltecrypt/service/SXICTQMVoLTECryptService;->notifyQMKeyStatus(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I

    move-result p0

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c2

    .line 152
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/voltecrypt/service/SXICTQMVoLTECryptService;->notifyPeerProfileStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c2

    .line 138
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-interface {p0, p1, p4, v0}, Lcom/voltecrypt/service/SXICTQMVoLTECryptService;->notifyAuthenticationStatus(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c2

    .line 128
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    move-result-object p1

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-interface {p0, p1}, Lcom/voltecrypt/service/SXICTQMVoLTECryptService;->registerVoLTECallback(Lcom/voltecrypt/service/SXICTQMVoLTECallBack;)I

    move-result p0

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c2
    return v1

    .line 119
    :cond_c3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_93
        :pswitch_75
        :pswitch_52
        :pswitch_3c
        :pswitch_2d
        :pswitch_1a
    .end packed-switch
.end method
