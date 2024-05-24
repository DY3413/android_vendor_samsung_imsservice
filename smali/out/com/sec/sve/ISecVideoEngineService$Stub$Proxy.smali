.class Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISecVideoEngineService.java"

# interfaces
.implements Lcom/sec/sve/ISecVideoEngineService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sve/ISecVideoEngineService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 2233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2234
    iput-object p1, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 2238
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public bindToNetwork(Landroid/net/Network;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2387
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2390
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2391
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2392
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xa

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2393
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_26

    .line 2396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p0

    .line 2396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2398
    throw p0
.end method

.method public cpveStartInjection(Ljava/lang/String;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4427
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4431
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4432
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4433
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4434
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4435
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4436
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 4439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 4439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4441
    throw p0
.end method

.method public cpveStopInjection()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4446
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4450
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4451
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x6c

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4452
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4453
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_27

    .line 4456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_27
    move-exception p0

    .line 4456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4458
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 0
    const-string p0, "com.sec.sve.ISecVideoEngineService"

    return-object p0
.end method

.method public isSupportingCameraMotor()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4220
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4224
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4225
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x61

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4226
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4227
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_27

    .line 4230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_27
    move-exception p0

    .line 4230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4232
    throw p0
.end method

.method public onDestroy()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2246
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2249
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2250
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2251
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_22

    .line 2254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception p0

    .line 2254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2256
    throw p0
.end method

.method public registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4495
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4498
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4499
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4500
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6f

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4501
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_26

    .line 4504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p0

    .line 4504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4506
    throw p0
.end method

.method public registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4464
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4467
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4468
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4469
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6d

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4470
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_26

    .line 4473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p0

    .line 4473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4475
    throw p0
.end method

.method public saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2497
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2501
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2503
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2504
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2505
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2506
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2507
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2509
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2510
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2511
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2512
    invoke-virtual {v0, p11}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2513
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xf

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2514
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2515
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_41
    .catchall {:try_start_c .. :try_end_41} :catchall_48

    .line 2518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_48
    move-exception p0

    .line 2518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2520
    throw p0
.end method

.method public saeDeleteChannel(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2607
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2611
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2612
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2613
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x14

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2614
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2615
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 2618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 2618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2620
    throw p0
.end method

.method public saeEnableSRTP(III[BI)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2668
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2672
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2673
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2674
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2675
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2676
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2677
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2678
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x17

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2679
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2680
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_36

    .line 2683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_36
    move-exception p0

    .line 2683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2685
    throw p0
.end method

.method public saeGetAudioRxTrackId(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2846
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2847
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2850
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2851
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2852
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x20

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2853
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2854
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 2857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 2857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2859
    throw p0
.end method

.method public saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2771
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2775
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2776
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2777
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1c

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2778
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2779
    sget-object p0, Lcom/sec/sve/TimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/sve/TimeInfo;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2e

    .line 2782
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2e
    move-exception p0

    .line 2782
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2784
    throw p0
.end method

.method public saeGetVersion([BI)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2827
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2831
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2832
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2833
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2834
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2835
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2836
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 2839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 2839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2841
    throw p0
.end method

.method public saeHandleDtmf(IIII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2625
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2629
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2631
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2632
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2633
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2634
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x15

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2635
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2636
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_33

    .line 2639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_33
    move-exception p0

    .line 2639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2641
    throw p0
.end method

.method public saeInitialize(III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2419
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2422
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2424
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2425
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2426
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xc

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2427
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2c

    .line 2430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2c
    move-exception p0

    .line 2430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2432
    throw p0
.end method

.method public saeModifyChannel(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2588
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2592
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2594
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2595
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x13

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2596
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2597
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 2600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 2600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2602
    throw p0
.end method

.method public saeSetAudioPath(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2864
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2868
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2869
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2870
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2871
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x21

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2872
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2873
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 2876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 2876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2878
    throw p0
.end method

.method public saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2450
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 2451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_c
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 2454
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 2455
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p2

    .line 2456
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p3

    .line 2457
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p4

    .line 2458
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 2459
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 2460
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p7

    .line 2461
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p8

    .line 2462
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p9

    .line 2463
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p10

    .line 2464
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 2465
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 2466
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 2467
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p14

    .line 2468
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 2469
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p16

    .line 2470
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p17

    .line 2471
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p18

    .line 2472
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p19

    .line 2473
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p20

    .line 2474
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p21

    .line 2475
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p22

    .line 2476
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p23

    .line 2477
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p24

    .line 2478
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p25

    .line 2479
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p26

    .line 2480
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p27

    .line 2481
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p28

    .line 2482
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p29

    .line 2483
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p30

    .line 2484
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p0

    .line 2485
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2486
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2487
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_ad
    .catchall {:try_start_c .. :try_end_ad} :catchall_b4

    .line 2490
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_b4
    move-exception v0

    .line 2490
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2492
    throw v0
.end method

.method public saeSetDtmfCodecInfo(IIIII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2646
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2650
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2651
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2652
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2653
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2654
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2655
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2656
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x16

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2657
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2658
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_36

    .line 2661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_36
    move-exception p0

    .line 2661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2663
    throw p0
.end method

.method public saeSetRtcpOnCall(III)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2690
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2694
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2695
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2696
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2697
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2698
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x18

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2700
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_30

    .line 2703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_30
    move-exception p0

    .line 2703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2705
    throw p0
.end method

.method public saeSetRtcpTimeout(IJ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2729
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2733
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2734
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2735
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2736
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2737
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2738
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 2741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 2741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2743
    throw p0
.end method

.method public saeSetRtcpXr(IIIII[I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2748
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2752
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2753
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2754
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2755
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2756
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2757
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2758
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2759
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2760
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2761
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_39

    .line 2764
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_39
    move-exception p0

    .line 2764
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2766
    throw p0
.end method

.method public saeSetRtpTimeout(IJ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2710
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2714
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2715
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2716
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2717
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x19

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2718
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2719
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 2722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 2722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2724
    throw p0
.end method

.method public saeSetTOS(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2808
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2812
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2813
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2814
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2815
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1e

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2816
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2817
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 2820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 2820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2822
    throw p0
.end method

.method public saeSetVoicePlayDelay(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2789
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2793
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2794
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2795
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2796
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1d

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2797
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2798
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 2801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 2801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2803
    throw p0
.end method

.method public saeStartChannel(IIZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2525
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2529
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2531
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2532
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2533
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x10

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2534
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2535
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_30

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_30
    move-exception p0

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2540
    throw p0
.end method

.method public saeStartRecording(IIIZ)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4349
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4353
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4354
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4355
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4356
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4357
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4358
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x67

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4359
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4360
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_33

    .line 4363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_33
    move-exception p0

    .line 4363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4365
    throw p0
.end method

.method public saeStopChannel(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2570
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2574
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2575
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2576
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x12

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2577
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2578
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 2581
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 2581
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2583
    throw p0
.end method

.method public saeStopRecording(IZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4370
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4374
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4375
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4376
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4377
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x68

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4378
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4379
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 4382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 4382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4384
    throw p0
.end method

.method public saeTerminate()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2436
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2439
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2440
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2441
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_23

    .line 2444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_23
    move-exception p0

    .line 2444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2446
    throw p0
.end method

.method public saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2545
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2549
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2551
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2552
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2553
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2554
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2555
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2556
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2557
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2558
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x11

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2559
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2560
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_3f

    .line 2563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_3f
    move-exception p0

    .line 2563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2565
    throw p0
.end method

.method public sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2402
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2405
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2407
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2408
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2409
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_29

    .line 2412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_29
    move-exception p0

    .line 2412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2414
    throw p0
.end method

.method public sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2338
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2341
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2343
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2344
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2345
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2346
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2347
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2e

    .line 2350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2e
    move-exception p0

    .line 2350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2352
    throw p0
.end method

.method public setCameraEffect(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2356
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2359
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2360
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2361
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2362
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_26

    .line 2365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p0

    .line 2365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2367
    throw p0
.end method

.method public setDisplaySurface(ILandroid/view/Surface;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2277
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2280
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 2282
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2283
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2284
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x3

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2285
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2b

    .line 2288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p0

    .line 2288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2290
    throw p0
.end method

.method public setOrientation(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2294
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2297
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2299
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2300
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_25

    .line 2303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p0

    .line 2303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2305
    throw p0
.end method

.method public setPreviewResolution(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2371
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2374
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2375
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2376
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2377
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x9

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2378
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_29

    .line 2381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_29
    move-exception p0

    .line 2381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2383
    throw p0
.end method

.method public setPreviewSurface(ILandroid/view/Surface;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2260
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2263
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 2265
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2266
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2267
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2268
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2b

    .line 2271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p0

    .line 2271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2273
    throw p0
.end method

.method public setZoom(F)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2309
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2312
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2313
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2314
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_25

    .line 2318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p0

    .line 2318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2320
    throw p0
.end method

.method public sreCreateRelayChannel(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3851
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3855
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3856
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3857
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3858
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x50

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3859
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3860
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 3863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 3863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3865
    throw p0
.end method

.method public sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3764
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 3765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_c
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 3768
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 3769
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p2

    .line 3770
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p3

    .line 3771
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p4

    .line 3772
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p5

    .line 3773
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p6

    .line 3774
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p7

    .line 3775
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p8

    .line 3776
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p9

    .line 3777
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p10

    .line 3778
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 3779
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p12

    .line 3780
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p13

    .line 3781
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v0, p14

    .line 3782
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v0, p0

    .line 3783
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3784
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3785
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_5d
    .catchall {:try_start_c .. :try_end_5d} :catchall_64

    .line 3788
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3789
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_64
    move-exception v0

    .line 3788
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3789
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3790
    throw v0
.end method

.method public sreDeleteRelayChannel(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3870
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3874
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3875
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3876
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x51

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3877
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3878
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 3881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 3881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3883
    throw p0
.end method

.method public sreDeleteStream(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3815
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3816
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3819
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3820
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3821
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4e

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3822
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3823
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 3826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 3826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3828
    throw p0
.end method

.method public sreEnableSRTP(III[BI)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4005
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4009
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4010
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4011
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4012
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4013
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4014
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4015
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x58

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4016
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4017
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_36

    .line 4020
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_36
    move-exception p0

    .line 4020
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4022
    throw p0
.end method

.method public sreGetMdmn(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3727
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3731
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3733
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4a

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3734
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3735
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 3738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 3738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3740
    throw p0
.end method

.method public sreGetVersion()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3691
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3695
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3696
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x48

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3697
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3698
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_27

    .line 3701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_27
    move-exception p0

    .line 3701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3703
    throw p0
.end method

.method public sreHoldRelayChannel(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3925
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3929
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3930
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3931
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x54

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3932
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3933
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 3936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 3936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3938
    throw p0
.end method

.method public sreInitialize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3677
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3680
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3681
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3682
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_23

    .line 3685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_23
    move-exception p0

    .line 3685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3687
    throw p0
.end method

.method public sreResumeRelayChannel(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3943
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3947
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3948
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3949
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x55

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3950
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3951
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 3954
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 3954
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3956
    throw p0
.end method

.method public sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4110
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 4111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_c
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 4114
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 4115
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p2

    .line 4116
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p3

    .line 4117
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p4

    .line 4118
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 4119
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 4120
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p7

    .line 4121
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p8

    .line 4122
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p9

    .line 4123
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p10

    .line 4124
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 4125
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 4126
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 4127
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p14

    .line 4128
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 4129
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p16

    .line 4130
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p17

    .line 4131
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p18

    .line 4132
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p19

    .line 4133
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p20

    .line 4134
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p21

    .line 4135
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p22

    .line 4136
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p23

    .line 4137
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p24

    .line 4138
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p25

    .line 4139
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p26

    .line 4140
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p27

    .line 4141
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p28

    .line 4142
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p29

    .line 4143
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p30

    .line 4144
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p31

    .line 4145
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p0

    .line 4146
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4147
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4148
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_b2
    .catchall {:try_start_c .. :try_end_b2} :catchall_b9

    .line 4151
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_b9
    move-exception v0

    .line 4151
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4153
    throw v0
.end method

.method public sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3980
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3984
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3985
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3986
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3987
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3988
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3989
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3990
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3991
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3992
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3993
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x57

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3994
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3995
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_3f

    .line 3998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_3f
    move-exception p0

    .line 3998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4000
    throw p0
.end method

.method public sreSetDtmfCodecInfo(IIIIII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4158
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4162
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4164
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4165
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4166
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4167
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4168
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4169
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5e

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4171
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_39

    .line 4174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_39
    move-exception p0

    .line 4174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4176
    throw p0
.end method

.method public sreSetMdmn(IZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3708
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3712
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3714
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3715
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x49

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3716
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3717
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 3720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 3720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3722
    throw p0
.end method

.method public sreSetNetId(IJ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3745
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3749
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3750
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3751
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3752
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3753
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3754
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 3757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 3757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3759
    throw p0
.end method

.method public sreSetRtcpOnCall(IIIII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4027
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4031
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4032
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4033
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4034
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4035
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4036
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4037
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x59

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4038
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4039
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_36

    .line 4042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_36
    move-exception p0

    .line 4042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4044
    throw p0
.end method

.method public sreSetRtcpTimeout(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4068
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4072
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4073
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4074
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4075
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4076
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4077
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 4080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 4080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4082
    throw p0
.end method

.method public sreSetRtcpXr(IIIII[I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4087
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4091
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4092
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4093
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4094
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4095
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4096
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4097
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4098
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4099
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4100
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_39

    .line 4103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_39
    move-exception p0

    .line 4103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4105
    throw p0
.end method

.method public sreSetRtpTimeout(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4049
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4053
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4054
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4055
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4056
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4057
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4058
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 4061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 4061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4063
    throw p0
.end method

.method public sreStartRecording(III)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4181
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4185
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4187
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4188
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4189
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4190
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4191
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_30

    .line 4194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_30
    move-exception p0

    .line 4194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4196
    throw p0
.end method

.method public sreStartRelayChannel(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3888
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3892
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3893
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3894
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3895
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x52

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3896
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3897
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 3900
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 3900
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3902
    throw p0
.end method

.method public sreStartStream(III)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3795
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3799
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3800
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3801
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3802
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3803
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4d

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3804
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3805
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_30

    .line 3808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_30
    move-exception p0

    .line 3808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3810
    throw p0
.end method

.method public sreStopRecording(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4201
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4205
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4207
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4208
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x60

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4209
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4210
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 4213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 4213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4215
    throw p0
.end method

.method public sreStopRelayChannel(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3907
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3911
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3912
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3913
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x53

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3914
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3915
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 3918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 3918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3920
    throw p0
.end method

.method public sreUpdateRelayChannel(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3961
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3965
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3966
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3967
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3968
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x56

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3969
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3970
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 3973
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 3973
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3975
    throw p0
.end method

.method public sreUpdateStream(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3833
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3837
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3838
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3839
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4f

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3840
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3841
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 3844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 3844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3846
    throw p0
.end method

.method public steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3369
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3373
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3374
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3375
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3376
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3377
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3378
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3379
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3380
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3381
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3382
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3383
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3384
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x38

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3386
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_45

    .line 3389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_45
    move-exception p0

    .line 3389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3391
    throw p0
.end method

.method public steDeleteChannel(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3478
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3482
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3484
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3d

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3485
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3486
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 3489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 3489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3491
    throw p0
.end method

.method public steEnableSRTP(III[BI)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3516
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3520
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3521
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3522
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3523
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3524
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3525
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3526
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3527
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3528
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_36

    .line 3531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_36
    move-exception p0

    .line 3531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3533
    throw p0
.end method

.method public steInitialize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3308
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3311
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3312
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x36

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3313
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_23

    .line 3316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_23
    move-exception p0

    .line 3316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3318
    throw p0
.end method

.method public steModifyChannel(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3459
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3463
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3464
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3465
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3466
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3468
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 3471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 3471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3473
    throw p0
.end method

.method public steSendText(ILjava/lang/String;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3496
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3500
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3501
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3502
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3503
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3504
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3e

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3505
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3506
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_30

    .line 3509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_30
    move-exception p0

    .line 3509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3511
    throw p0
.end method

.method public steSetCallOptions(IZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3619
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3623
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3625
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3626
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x44

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3628
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 3631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 3631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3633
    throw p0
.end method

.method public steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3322
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 3323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_c
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 3326
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 3327
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p2

    .line 3328
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p3

    .line 3329
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p4

    .line 3330
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 3331
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 3332
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p7

    .line 3333
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p8

    .line 3334
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p9

    .line 3335
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p10

    .line 3336
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 3337
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 3338
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 3339
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p14

    .line 3340
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 3341
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p16

    .line 3342
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p17

    .line 3343
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p18

    .line 3344
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p19

    .line 3345
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p20

    .line 3346
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p21

    .line 3347
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p22

    .line 3348
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p23

    .line 3349
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p24

    .line 3350
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p25

    .line 3351
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p26

    .line 3352
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p27

    .line 3353
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p28

    .line 3354
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p29

    .line 3355
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p30

    .line 3356
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p0

    .line 3357
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3358
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3359
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_ad
    .catchall {:try_start_c .. :try_end_ad} :catchall_b4

    .line 3362
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_b4
    move-exception v0

    .line 3362
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3364
    throw v0
.end method

.method public steSetNetId(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3638
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3642
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3644
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3645
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x45

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3646
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3647
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 3650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 3650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3652
    throw p0
.end method

.method public steSetRtcpOnCall(III)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3538
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3542
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3543
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3544
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3545
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3546
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x40

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3547
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3548
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_30

    .line 3551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_30
    move-exception p0

    .line 3551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3553
    throw p0
.end method

.method public steSetRtcpTimeout(IJ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3577
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3581
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3583
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3584
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x42

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3585
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3586
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 3589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 3589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3591
    throw p0
.end method

.method public steSetRtcpXr(IIIII[I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3596
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3600
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3601
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3602
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3603
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3604
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3605
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3606
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3607
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x43

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3608
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3609
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_39

    .line 3612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_39
    move-exception p0

    .line 3612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3614
    throw p0
.end method

.method public steSetRtpTimeout(IJ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3558
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3562
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3564
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3565
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x41

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3566
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3567
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 3570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 3570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3572
    throw p0
.end method

.method public steSetSessionId(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3657
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3661
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3662
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3663
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3664
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x46

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3665
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3666
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 3669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 3669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3671
    throw p0
.end method

.method public steStartChannel(IIZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3396
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3400
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3401
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3402
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3403
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3404
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x39

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3406
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_30

    .line 3409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_30
    move-exception p0

    .line 3409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3411
    throw p0
.end method

.method public steStopChannel(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3441
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3445
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3446
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3447
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3b

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3449
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 3452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 3452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3454
    throw p0
.end method

.method public steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3416
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3420
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3422
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3423
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3424
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3425
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3426
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3427
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3428
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3429
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3430
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3431
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_3f

    .line 3434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_3f
    move-exception p0

    .line 3434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3436
    throw p0
.end method

.method public sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4261
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 4262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_c
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 4265
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 4266
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p2

    .line 4267
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p3

    .line 4268
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p4

    .line 4269
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p5

    .line 4270
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 4271
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v3, p7

    .line 4272
    invoke-virtual {v1, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    move v0, p9

    .line 4273
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p10

    .line 4274
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p11

    .line 4275
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 4276
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 4277
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p14

    .line 4278
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 4279
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v3, p16

    .line 4280
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p18

    .line 4281
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p0

    .line 4282
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4283
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4284
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_68
    .catchall {:try_start_c .. :try_end_68} :catchall_6f

    .line 4287
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_6f
    move-exception v0

    .line 4287
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4289
    throw v0
.end method

.method public sveCreateChannel()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2884
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2888
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2889
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2890
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2891
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_27

    .line 2894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_27
    move-exception p0

    .line 2894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2896
    throw p0
.end method

.method public sveGetCodecCapacity(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3289
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3293
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3295
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x35

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3297
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 3300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2a
    move-exception p0

    .line 3300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3302
    throw p0
.end method

.method public sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3192
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3196
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3197
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3198
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x30

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3199
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3200
    sget-object p0, Lcom/sec/sve/TimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/sve/TimeInfo;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2e

    .line 3203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2e
    move-exception p0

    .line 3203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3205
    throw p0
.end method

.method public sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3271
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3275
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3277
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x34

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3278
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3279
    sget-object p0, Lcom/sec/sve/TimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/sve/TimeInfo;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2e

    .line 3282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2e
    move-exception p0

    .line 3282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3284
    throw p0
.end method

.method public sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4238
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4242
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4244
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4245
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4246
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4247
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4248
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4249
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x62

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4251
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_39

    .line 4254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_39
    move-exception p0

    .line 4254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4256
    throw p0
.end method

.method public sveRecorderDelete(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4294
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4298
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4300
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x64

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4301
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4302
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 4305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 4305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4307
    throw p0
.end method

.method public sveRecorderStart(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4312
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4316
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4318
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x65

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4319
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4320
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 4323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 4323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4325
    throw p0
.end method

.method public sveRecorderStop(IZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4330
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4334
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4337
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x66

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4338
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4339
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 4342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 4342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4344
    throw p0
.end method

.method public sveRestartEmoji(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3157
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3160
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3162
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2e

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3163
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_26

    .line 3166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p0

    .line 3166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3168
    throw p0
.end method

.method public sveSendGeneralEvent(IIILjava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3250
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3254
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3255
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3256
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3257
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3258
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3259
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x33

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3261
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_33

    .line 3264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_33
    move-exception p0

    .line 3264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3266
    throw p0
.end method

.method public sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2965
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 2966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_c
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 2969
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 2970
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p2

    .line 2971
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p3

    .line 2972
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p4

    .line 2973
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 2974
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 2975
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p7

    .line 2976
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p8

    .line 2977
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p9

    .line 2978
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p10

    .line 2979
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 2980
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 2981
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 2982
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v0, p14

    .line 2983
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 2984
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v0, p16

    .line 2985
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p17

    .line 2986
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p18

    .line 2987
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p19

    .line 2988
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p20

    .line 2989
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p21

    .line 2990
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p22

    .line 2991
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p23

    .line 2992
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move/from16 v0, p24

    .line 2993
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p25

    .line 2994
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p26

    .line 2995
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p0

    .line 2996
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2997
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2998
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_99
    .catchall {:try_start_c .. :try_end_99} :catchall_a0

    .line 3001
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3002
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_a0
    move-exception v0

    .line 3001
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3002
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3003
    throw v0
.end method

.method public sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIIIJ)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2939
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2943
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2944
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2945
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2946
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2947
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2948
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2949
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2950
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2951
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2952
    invoke-virtual {v0, p9, p10}, Landroid/os/Parcel;->writeLong(J)V

    .line 2953
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x25

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2955
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_42

    .line 2958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_42
    move-exception p0

    .line 2958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2960
    throw p0
.end method

.method public sveSetGcmSrtpParams(IIIICI[BI[BI)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3038
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3042
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3043
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3044
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3045
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3046
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3047
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3048
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3049
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3050
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3051
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3052
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3053
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x28

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3054
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3055
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_45

    .line 3058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_45
    move-exception p0

    .line 3058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3060
    throw p0
.end method

.method public sveSetHeldInfo(IZZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3172
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3176
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3178
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3179
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3180
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3182
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_30

    .line 3185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_30
    move-exception p0

    .line 3185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3187
    throw p0
.end method

.method public sveSetMediaConfig(IZIZIIII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3065
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3069
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3070
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3071
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3072
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3073
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3074
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3075
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3076
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3077
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3078
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x29

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3079
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3080
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_3f

    .line 3083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_3f
    move-exception p0

    .line 3083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3085
    throw p0
.end method

.method public sveSetNetworkQoS(IIII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3229
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3233
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3235
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3236
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3237
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3238
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x32

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3239
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3240
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_33

    .line 3243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_33
    move-exception p0

    .line 3243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3245
    throw p0
.end method

.method public sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3008
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 3009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_c
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 3012
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 3013
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p2

    .line 3014
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p3

    .line 3015
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, p4

    .line 3016
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 3017
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 3018
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p7

    .line 3019
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p8

    .line 3020
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p9

    .line 3021
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, p10

    .line 3022
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 3023
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 3024
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 3025
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p0

    .line 3026
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3027
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3028
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_58
    .catchall {:try_start_c .. :try_end_58} :catchall_5f

    .line 3031
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_5f
    move-exception v0

    .line 3031
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3033
    throw v0
.end method

.method public sveSetVideoPlayDelay(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3210
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3214
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3216
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3217
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x31

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3218
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3219
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 3222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 3222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3224
    throw p0
.end method

.method public sveStartCamera(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3090
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3094
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3095
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3096
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3097
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3098
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3099
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 3102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 3102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3104
    throw p0
.end method

.method public sveStartChannel(III)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2901
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2905
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2906
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2907
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2908
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2909
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x23

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2910
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2911
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_30

    .line 2914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_30
    move-exception p0

    .line 2914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2916
    throw p0
.end method

.method public sveStartEmoji(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3126
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3129
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3131
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3132
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3133
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_29

    .line 3136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_29
    move-exception p0

    .line 3136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3138
    throw p0
.end method

.method public sveStartRecording(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4389
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4393
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4395
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4396
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x69

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4397
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4398
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    .line 4401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2d
    move-exception p0

    .line 4401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4403
    throw p0
.end method

.method public sveStopCamera()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3109
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3113
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3114
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3115
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3116
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_27

    .line 3119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_27
    move-exception p0

    .line 3119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3121
    throw p0
.end method

.method public sveStopChannel(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2921
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2925
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2926
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2927
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x24

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2928
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2929
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 2932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 2932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2934
    throw p0
.end method

.method public sveStopEmoji(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3142
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3145
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3147
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2d

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3148
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_26

    .line 3151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p0

    .line 3151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3153
    throw p0
.end method

.method public sveStopRecording(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4408
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4412
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4414
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6a

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4415
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4416
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 4419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2a
    move-exception p0

    .line 4419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4421
    throw p0
.end method

.method public switchCamera()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2324
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2327
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2328
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_22

    .line 2332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception p0

    .line 2332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2334
    throw p0
.end method

.method public unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4510
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4513
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4514
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4515
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x70

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4516
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_26

    .line 4519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p0

    .line 4519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4521
    throw p0
.end method

.method public unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4479
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_c
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4482
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4484
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6e

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4485
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_26

    .line 4488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p0

    .line 4488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4490
    throw p0
.end method
