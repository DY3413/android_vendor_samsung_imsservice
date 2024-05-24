.class Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;
.super Lcom/sec/internal/helper/State;
.source "WfcEpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/WfcEpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .registers 2

    .line 697
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 700
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enter [Connecting] connecting epdg service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v1, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgConnection:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    if-nez v1, :cond_16

    .line 702
    new-instance v1, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting$1;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;)V

    iput-object v1, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgConnection:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    .line 723
    :cond_16
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$mgetEpdgManager(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v1, v1, Lcom/sec/internal/ims/core/WfcEpdgManager;->mReasonIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgManager;->startService(Landroid/content/Intent;)V

    .line 724
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$mgetEpdgManager(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManager;->connectService()V

    .line 725
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 v0, 0xa

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public exit()V
    .registers 2

    .line 776
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 730
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Connecting] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$meventAsString(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_70

    packed-switch v0, :pswitch_data_7a

    goto :goto_77

    .line 767
    :pswitch_29
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_77

    .line 761
    :pswitch_31
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EPDG disconnect in [Connecting] state, may be crash has happenened, need to recover.."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_77

    .line 756
    :pswitch_42
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_77

    .line 751
    :pswitch_4a
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[Connecting] TRY_EPDG_CONNECT already in progress "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 745
    :pswitch_54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 746
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$monSimRemoved(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    goto :goto_77

    .line 739
    :pswitch_62
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 740
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$monSimReady(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    goto :goto_77

    .line 734
    :cond_70
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_77
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_7a
    .packed-switch 0x5
        :pswitch_62
        :pswitch_54
        :pswitch_4a
        :pswitch_42
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method
