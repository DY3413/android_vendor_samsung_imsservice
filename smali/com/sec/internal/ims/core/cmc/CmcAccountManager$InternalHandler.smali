.class Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;
.super Landroid/os/Handler;
.source "CmcAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/cmc/CmcAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Landroid/os/Looper;)V
    .locals 0

    .line 1014
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 1015
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1042
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->handleSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    goto :goto_0

    .line 1039
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->REQUEST_TIMER_EXPIRED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->handleSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    goto :goto_0

    .line 1036
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onCmcDeviceChanged()V

    goto :goto_0

    .line 1032
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->-$$Nest$monStopCmcRegistration(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    goto :goto_0

    .line 1029
    :pswitch_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->-$$Nest$monStartCmcRegistration(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    goto :goto_0

    .line 1023
    :pswitch_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->-$$Nest$monSaUpdated(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    goto :goto_0

    .line 1026
    :pswitch_6
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->-$$Nest$mstartSAServiceInternal(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
