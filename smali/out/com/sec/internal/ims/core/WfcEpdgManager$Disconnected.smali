.class Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;
.super Lcom/sec/internal/helper/State;
.source "WfcEpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/WfcEpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .registers 2

    .line 606
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 609
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enter [Disconnected]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$misReadyForEpdgConnect(Lcom/sec/internal/ims/core/WfcEpdgManager;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mReasonIntent:Landroid/content/Intent;

    if-eqz v0, :cond_24

    .line 612
    :cond_17
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 613
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :cond_24
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 619
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Disconnected] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$meventAsString(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_106

    :pswitch_25
    goto/16 :goto_103

    .line 647
    :pswitch_27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 648
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$monSimReady(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result p1

    if-eqz p1, :cond_103

    .line 649
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_103

    .line 664
    :pswitch_40
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    iput-object p1, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mReasonIntent:Landroid/content/Intent;

    const-string v0, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    const/4 v1, 0x0

    .line 665
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 666
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$misSimAvailable(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Z

    move-result p1

    if-eqz p1, :cond_103

    .line 667
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_103

    .line 673
    :pswitch_60
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    iput-object p1, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mReasonIntent:Landroid/content/Intent;

    goto :goto_86

    .line 689
    :pswitch_69
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ON_EPDG_DISCONNECTED IN ReadyToConnect INVALID EVENT "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_103

    .line 683
    :pswitch_74
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EPDG CONNECTED in disconnected state, STRANGE, please check..."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_103

    .line 678
    :goto_86
    :pswitch_86
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_103

    .line 656
    :pswitch_8f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 657
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$monSimRemoved(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result p1

    if-eqz p1, :cond_103

    .line 658
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_103

    .line 633
    :pswitch_a7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$misEnableVoWiFiFromMnoInfo(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 635
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disable VoWiFi, delay for update ImsSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 637
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 p1, 0x12

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_103

    .line 640
    :cond_e0
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$monSimReady(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result p1

    if-eqz p1, :cond_103

    .line 641
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_103

    .line 626
    :pswitch_f4
    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$misReadyForEpdgConnect(Lcom/sec/internal/ims/core/WfcEpdgManager;)Z

    move-result p1

    if-eqz p1, :cond_103

    .line 627
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :cond_103
    :goto_103
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_106
    .packed-switch 0x3
        :pswitch_f4
        :pswitch_f4
        :pswitch_a7
        :pswitch_8f
        :pswitch_86
        :pswitch_74
        :pswitch_69
        :pswitch_25
        :pswitch_60
        :pswitch_86
        :pswitch_60
        :pswitch_40
        :pswitch_f4
        :pswitch_f4
        :pswitch_86
        :pswitch_27
    .end packed-switch
.end method
