.class Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;
.super Ljava/lang/Object;
.source "RegistrationManagerHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationManagerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;I)V"
        }
    .end annotation

    .line 460
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x18

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDataConnectionStateChanged(IZI)V
    .locals 5

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConnectionStateChanged(): networkType ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], isWifiConnected ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "networkType"

    .line 441
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "isWifiConnected"

    .line 442
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "phoneId"

    .line 443
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0xd

    if-eq p1, p2, :cond_0

    const/16 p2, 0x14

    if-ne p1, p2, :cond_1

    .line 445
    :cond_0
    invoke-static {p3}, Lcom/sec/internal/log/IMSLogTimer;->setLatchEndTime(I)V

    const/4 p2, 0x0

    .line 446
    invoke-static {p3, p2}, Lcom/sec/internal/log/IMSLogTimer;->setPdnStartTime(IZ)V

    .line 447
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 449
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 450
    sget-object v1, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;->REGI:Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") ["

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-static {p1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] LATCH(DataConnect changed) : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-static {p3}, Lcom/sec/internal/log/IMSLogTimer;->getLatchEndTime(I)J

    move-result-wide p1

    invoke-static {p3}, Lcom/sec/internal/log/IMSLogTimer;->getLatchStartTime(I)J

    move-result-wide v3

    sub-long/2addr p1, v3

    long-to-double p1, p1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 450
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/log/IMSLog$LAZER_TYPE;Ljava/lang/String;)V

    .line 455
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDefaultNetworkStateChanged(I)V
    .locals 2

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onDefaultNetworkStateChanged: EVENT_TRY_REGISTER delayed"

    .line 504
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 505
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x2c2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEpdgConnected(I)V
    .locals 2

    .line 471
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x1a

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEpdgDeregisterRequested(I)V
    .locals 2

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onEpdgDeregister: epdg deregister requested"

    .line 492
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 493
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x7c

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEpdgDisconnected(I)V
    .locals 2

    .line 476
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x1b

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .locals 1

    .line 528
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x9a

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEpdgIpsecDisconnected(I)V
    .locals 2

    .line 487
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x36

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEpdgRegisterRequested(IZ)V
    .locals 2

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEpdgRegister: cdmaAvailability : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 499
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x7b

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onIKEAuthFAilure(I)V
    .locals 2

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onIKEAuthFAilure:"

    .line 481
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 482
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x34

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMobileRadioConnected(I)V
    .locals 2

    .line 533
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x3d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMobileRadioDisconnected(I)V
    .locals 2

    .line 538
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x3e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V
    .locals 3

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onPreciseDataConnectionStateChanged"

    .line 510
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 511
    new-instance v0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;

    invoke-direct {v0, p2}, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;-><init>(Landroid/telephony/PreciseDataConnectionState;)V

    .line 512
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->getDataConnectionApnTypeBitMask()I

    move-result v1

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    return-void

    .line 515
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->getDataConnectionFailCause()I

    move-result v1

    if-nez v1, :cond_2

    .line 516
    invoke-virtual {p2}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionState()I

    move-result p2

    if-nez p2, :cond_1

    .line 518
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p2, 0x9d

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    .line 522
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x81

    .line 523
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->getDataConnectionFailCause()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/PreciseDataConnectionState;->getTransportType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 522
    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
