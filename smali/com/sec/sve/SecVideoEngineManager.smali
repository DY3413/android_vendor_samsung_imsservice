.class public Lcom/sec/sve/SecVideoEngineManager;
.super Ljava/lang/Object;
.source "SecVideoEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;

.field private mService:Lcom/sec/sve/ISecVideoEngineService;


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/sve/SecVideoEngineManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/sve/SecVideoEngineManager;)Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mListener:Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/sec/sve/SecVideoEngineManager;Lcom/sec/sve/ISecVideoEngineService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/sec/sve/SecVideoEngineManager$1;

    invoke-direct {v0, p0}, Lcom/sec/sve/SecVideoEngineManager$1;-><init>(Lcom/sec/sve/SecVideoEngineManager;)V

    iput-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mConnection:Landroid/content/ServiceConnection;

    .line 58
    iput-object p1, p0, Lcom/sec/sve/SecVideoEngineManager;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/sec/sve/SecVideoEngineManager;->mListener:Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;

    return-void
.end method


# virtual methods
.method public bindToNetwork(Landroid/net/Network;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 87
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SVE service is not ready!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToNetwork "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :try_start_0
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->bindToNetwork(Landroid/net/Network;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public connectService()V
    .locals 4

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.sve"

    const-string v2, "com.sec.sve.service.SecVideoEngineService"

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/sec/sve/SecVideoEngineManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public cpveStartInjection(Ljava/lang/String;I)I
    .locals 2

    .line 1659
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1660
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SVE service is not ready!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1665
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->cpveStartInjection(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1667
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public cpveStopInjection()I
    .locals 2

    .line 1674
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1675
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SVE service is not ready!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1680
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/sve/ISecVideoEngineService;->cpveStopInjection()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1682
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public disconnectService()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/sec/sve/SecVideoEngineManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    :cond_0
    return-void
.end method

.method public isSupportingCameraMotor()Z
    .locals 1

    .line 1478
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1483
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->isSupportingCameraMotor()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1485
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerForCmcEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 830
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 832
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerForMediaEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 804
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 806
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public restartEmoji(I)V
    .locals 0

    .line 1647
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 1652
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveRestartEmoji(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1654
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 13

    move-object v0, p0

    .line 247
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v12, -0x1

    if-nez v0, :cond_0

    return v12

    :cond_0
    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 252
    :try_start_0
    invoke-interface/range {v0 .. v11}, Lcom/sec/sve/ISecVideoEngineService;->saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 256
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v12
.end method

.method public saeDeleteChannel(I)I
    .locals 1

    .line 321
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 326
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeDeleteChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 328
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeEnableSRTP(III[BI)I
    .locals 6

    .line 363
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 368
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->saeEnableSRTP(III[BI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 370
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public saeGetAudioRxTrackId(I)I
    .locals 1

    .line 489
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 494
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeGetAudioRxTrackId(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 496
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;
    .locals 1

    .line 433
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 438
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 440
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public saeGetVersion([BI)I
    .locals 1

    .line 475
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 480
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeGetVersion([BI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 482
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeHandleDtmf(IIII)I
    .locals 1

    .line 335
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 340
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->saeHandleDtmf(IIII)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 342
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeInitialize(III)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 202
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeInitialize(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 204
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public saeModifyChannel(II)I
    .locals 1

    .line 307
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 312
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeModifyChannel(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 314
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeSetAudioPath(II)I
    .locals 1

    .line 503
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 508
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetAudioPath(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 510
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 32

    move-object/from16 v0, p0

    .line 226
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v31, -0x1

    if-nez v0, :cond_0

    return v31

    :cond_0
    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    .line 231
    :try_start_0
    invoke-interface/range {v0 .. v30}, Lcom/sec/sve/ISecVideoEngineService;->saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 238
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v31
.end method

.method public saeSetDtmfCodecInfo(IIIII)I
    .locals 6

    .line 349
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 354
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->saeSetDtmfCodecInfo(IIIII)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 356
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public saeSetRtcpOnCall(III)I
    .locals 1

    .line 377
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 382
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpOnCall(III)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 384
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeSetRtcpTimeout(IJ)I
    .locals 1

    .line 405
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 410
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpTimeout(IJ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 412
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeSetRtcpXr(IIIII[I)I
    .locals 7

    .line 419
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 424
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpXr(IIIII[I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 426
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public saeSetRtpTimeout(IJ)I
    .locals 1

    .line 391
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 396
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtpTimeout(IJ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 398
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeSetTOS(II)I
    .locals 1

    .line 461
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 466
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetTOS(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 468
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeSetVoicePlayDelay(II)I
    .locals 1

    .line 447
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 452
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetVoicePlayDelay(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 454
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeStartChannel(IIZ)I
    .locals 1

    .line 263
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 268
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeStartChannel(IIZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 270
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeStartRecording(IIIZ)I
    .locals 1

    .line 1567
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1572
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->saeStartRecording(IIIZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1574
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeStopChannel(I)I
    .locals 1

    .line 293
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 298
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeStopChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 300
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeStopRecording(IZ)I
    .locals 1

    .line 1581
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1586
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeStopRecording(IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1588
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeTerminate()V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 214
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->saeTerminate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 216
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 10

    move-object v0, p0

    .line 278
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v9, -0x1

    if-nez v0, :cond_0

    return v9

    :cond_0
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 283
    :try_start_0
    invoke-interface/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService;->saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 286
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v9
.end method

.method public sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 772
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 777
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 779
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 178
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 180
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 190
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->setCameraEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;I)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 118
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->setDisplaySurface(Landroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 130
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->setOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 132
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPreviewResolution(II)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 166
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->setPreviewResolution(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;I)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 106
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->setPreviewSurface(Landroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 142
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 144
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sreCreateRelayChannel(II)I
    .locals 1

    .line 1227
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1232
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreCreateRelayChannel(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1234
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I
    .locals 16

    move-object/from16 v0, p0

    .line 1170
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v15, -0x1

    if-nez v0, :cond_0

    return v15

    :cond_0
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    .line 1175
    :try_start_0
    invoke-interface/range {v0 .. v14}, Lcom/sec/sve/ISecVideoEngineService;->sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1178
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v15
.end method

.method public sreDeleteRelayChannel(I)I
    .locals 1

    .line 1241
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1246
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreDeleteRelayChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1248
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreDeleteStream(I)I
    .locals 1

    .line 1199
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1204
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreDeleteStream(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1206
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreEnableSRTP(III[BI)I
    .locals 6

    .line 1341
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1346
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->sreEnableSRTP(III[BI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 1348
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public sreGetMdmn(I)Z
    .locals 1

    .line 1140
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1145
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreGetMdmn(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1147
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreGetVersion()Ljava/lang/String;
    .locals 1

    .line 1112
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1117
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->sreGetVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1119
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public sreHoldRelayChannel(I)I
    .locals 1

    .line 1283
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1288
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreHoldRelayChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1290
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreInitialize()V
    .locals 0

    .line 1100
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 1105
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->sreInitialize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1107
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sreResumeRelayChannel(I)I
    .locals 1

    .line 1297
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1302
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreResumeRelayChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1304
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 33

    move-object/from16 v0, p0

    .line 1417
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v32, -0x1

    if-nez v0, :cond_0

    return v32

    :cond_0
    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move/from16 v31, p31

    .line 1422
    :try_start_0
    invoke-interface/range {v0 .. v31}, Lcom/sec/sve/ISecVideoEngineService;->sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1429
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v32
.end method

.method public sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .locals 10

    move-object v0, p0

    .line 1326
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v9, -0x1

    if-nez v0, :cond_0

    return v9

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 1331
    :try_start_0
    invoke-interface/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService;->sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1334
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v9
.end method

.method public sreSetDtmfCodecInfo(IIIIII)I
    .locals 7

    .line 1436
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1441
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->sreSetDtmfCodecInfo(IIIIII)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 1443
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public sreSetMdmn(IZ)I
    .locals 1

    .line 1126
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1131
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreSetMdmn(IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1133
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreSetNetId(IJ)I
    .locals 1

    .line 1154
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1159
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sreSetNetId(IJ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1161
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreSetRtcpOnCall(IIIII)I
    .locals 6

    .line 1355
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1360
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpOnCall(IIIII)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 1362
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public sreSetRtcpTimeout(II)I
    .locals 1

    .line 1383
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1388
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpTimeout(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1390
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreSetRtcpXr(IIIII[I)I
    .locals 7

    .line 1397
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1402
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpXr(IIIII[I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 1404
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public sreSetRtpTimeout(II)I
    .locals 1

    .line 1369
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1374
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtpTimeout(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1376
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreStartRecording(III)I
    .locals 1

    .line 1450
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1455
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sreStartRecording(III)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1457
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreStartRelayChannel(II)I
    .locals 1

    .line 1255
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1260
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreStartRelayChannel(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1262
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreStartStream(III)I
    .locals 1

    .line 1185
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1190
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sreStartStream(III)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1192
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreStopRecording(II)I
    .locals 1

    .line 1464
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1469
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreStopRecording(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1471
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreStopRelayChannel(I)I
    .locals 1

    .line 1269
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1274
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreStopRelayChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1276
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreUpdateRelayChannel(II)I
    .locals 1

    .line 1311
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1316
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreUpdateRelayChannel(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1318
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreUpdateStream(I)I
    .locals 1

    .line 1213
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1218
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreUpdateStream(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1220
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public startEmoji(ILjava/lang/String;)V
    .locals 0

    .line 1623
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 1628
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveStartEmoji(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1630
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 12

    move-object v0, p0

    .line 888
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v11, -0x1

    if-nez v0, :cond_0

    return v11

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 893
    :try_start_0
    invoke-interface/range {v0 .. v10}, Lcom/sec/sve/ISecVideoEngineService;->steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 897
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v11
.end method

.method public steDeleteChannel(I)I
    .locals 1

    .line 1018
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1023
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->steDeleteChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1025
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steEnableSRTP(III[BI)I
    .locals 6

    .line 1044
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1049
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->steEnableSRTP(III[BI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 1051
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public steInitialize()V
    .locals 0

    .line 850
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 855
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->steInitialize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 857
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public steModifyChannel(II)I
    .locals 1

    .line 948
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 953
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steModifyChannel(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 955
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steSendText(ILjava/lang/String;I)I
    .locals 1

    .line 1032
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1036
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSendText(ILjava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1038
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steSetCallOptions(IZ)I
    .locals 1

    .line 990
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 995
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steSetCallOptions(IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 997
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 32

    move-object/from16 v0, p0

    .line 867
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v31, -0x1

    if-nez v0, :cond_0

    return v31

    :cond_0
    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    .line 872
    :try_start_0
    invoke-interface/range {v0 .. v30}, Lcom/sec/sve/ISecVideoEngineService;->steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 879
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v31
.end method

.method public steSetNetId(II)I
    .locals 1

    .line 1004
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1009
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steSetNetId(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1011
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steSetRtcpOnCall(III)I
    .locals 1

    .line 1058
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1063
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpOnCall(III)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1065
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steSetRtcpTimeout(IJ)I
    .locals 1

    .line 1072
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1077
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpTimeout(IJ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1079
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steSetRtcpXr(IIIII[I)I
    .locals 7

    .line 962
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 967
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpXr(IIIII[I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 969
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public steSetRtpTimeout(IJ)I
    .locals 1

    .line 976
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 981
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtpTimeout(IJ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 983
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steSetSessionId(II)I
    .locals 1

    .line 1086
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1091
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steSetSessionId(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1093
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steStartChannel(IIZ)I
    .locals 1

    .line 904
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 909
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steStartChannel(IIZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 911
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steStopChannel(I)I
    .locals 1

    .line 934
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 939
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->steStopChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 941
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 10

    move-object v0, p0

    .line 919
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v9, -0x1

    if-nez v0, :cond_0

    return v9

    :cond_0
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 924
    :try_start_0
    invoke-interface/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService;->steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 927
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v9
.end method

.method public stopEmoji(I)V
    .locals 0

    .line 1635
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 1640
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveStopEmoji(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1642
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I
    .locals 20

    move-object/from16 v0, p0

    .line 1508
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v19, -0x1

    if-nez v0, :cond_0

    return v19

    :cond_0
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-wide/from16 v16, p16

    move-object/from16 v18, p18

    .line 1513
    :try_start_0
    invoke-interface/range {v0 .. v18}, Lcom/sec/sve/ISecVideoEngineService;->sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1518
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v19
.end method

.method public sveCreateChannel()I
    .locals 1

    .line 517
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 522
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->sveCreateChannel()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 524
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveGetCodecCapacity(I)Ljava/lang/String;
    .locals 1

    .line 716
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 721
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveGetCodecCapacity(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 723
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;
    .locals 1

    .line 702
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 707
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 709
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;
    .locals 1

    .line 784
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 789
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 791
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I
    .locals 7

    .line 1492
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 1497
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 1499
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public sveRecorderDelete(I)I
    .locals 1

    .line 1525
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1530
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderDelete(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1532
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveRecorderStart(I)I
    .locals 1

    .line 1539
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1544
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderStart(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1546
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveRecorderStop(IZ)I
    .locals 1

    .line 1553
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1558
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderStop(IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1560
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveSendGeneralEvent(IIILjava/lang/String;)I
    .locals 1

    .line 758
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 763
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->sveSendGeneralEvent(IIILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 765
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I
    .locals 28

    move-object/from16 v0, p0

    .line 579
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v27, -0x1

    if-nez v0, :cond_0

    return v27

    :cond_0
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    .line 584
    :try_start_0
    invoke-interface/range {v0 .. v26}, Lcom/sec/sve/ISecVideoEngineService;->sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 590
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v27
.end method

.method public sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .locals 10

    move-object v0, p0

    .line 560
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v9, -0x1

    if-nez v0, :cond_0

    return v9

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 565
    :try_start_0
    invoke-interface/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService;->sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 567
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v9
.end method

.method public sveSetHeldInfo(IZZ)I
    .locals 1

    .line 688
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 693
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sveSetHeldInfo(IZZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 695
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveSetMediaConfig(IZIZIII)I
    .locals 9

    const/16 v8, 0x7d0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 637
    invoke-virtual/range {v0 .. v8}, Lcom/sec/sve/SecVideoEngineManager;->sveSetMediaConfig(IZIZIIII)I

    move-result v0

    return v0
.end method

.method public sveSetMediaConfig(IZIZIIII)I
    .locals 14

    move-object v0, p0

    .line 643
    iget-object v1, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 647
    :cond_0
    iget-object v1, v0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sveSetMediaConfig keepAliveInterval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :try_start_0
    iget-object v5, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    move v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-interface/range {v5 .. v13}, Lcom/sec/sve/ISecVideoEngineService;->sveSetMediaConfig(IZIZIIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 652
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public sveSetNetworkQoS(IIII)I
    .locals 1

    .line 744
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 749
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->sveSetNetworkQoS(IIII)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 751
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveSetSRTPParams(IIIICI[BI[BI)I
    .locals 12

    move-object v0, p0

    .line 620
    iget-object v1, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v11, -0x1

    if-nez v1, :cond_0

    .line 621
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SVE service is not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_0
    move-object v0, v1

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    .line 626
    :try_start_0
    invoke-interface/range {v0 .. v10}, Lcom/sec/sve/ISecVideoEngineService;->sveSetGcmSrtpParams(IIIICI[BI[BI)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 629
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v11
.end method

.method public sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I
    .locals 15

    move-object v0, p0

    .line 601
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v14, -0x1

    if-nez v0, :cond_0

    return v14

    :cond_0
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    .line 606
    :try_start_0
    invoke-interface/range {v0 .. v13}, Lcom/sec/sve/ISecVideoEngineService;->sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 611
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v14
.end method

.method public sveSetVideoPlayDelay(II)I
    .locals 1

    .line 730
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 735
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveSetVideoPlayDelay(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 737
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveStartCamera(II)I
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 660
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SVE service is not ready!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 665
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveStartCamera(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 667
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public sveStartChannel(III)I
    .locals 1

    .line 531
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 536
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sveStartChannel(III)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 538
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveStartRecording(II)I
    .locals 1

    .line 1595
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1600
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveStartRecording(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1602
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveStopCamera()I
    .locals 1

    .line 674
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 679
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->sveStopCamera()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 681
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveStopChannel(I)I
    .locals 1

    .line 545
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 550
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveStopChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 552
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveStopRecording(I)I
    .locals 1

    .line 1609
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1614
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveStopRecording(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1616
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public switchCamera()V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 154
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->switchCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 156
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForCmcEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 843
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 845
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForMediaEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 817
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 819
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
