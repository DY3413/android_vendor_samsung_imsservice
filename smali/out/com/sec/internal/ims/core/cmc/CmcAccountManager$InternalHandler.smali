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
    .registers 3

    .line 1032
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 1033
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1038
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

    .line 1039
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5c

    goto :goto_5b

    .line 1060
    :pswitch_1e
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->handleSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    goto :goto_5b

    .line 1057
    :pswitch_28
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->REQUEST_TIMER_EXPIRED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->handleSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    goto :goto_5b

    .line 1054
    :pswitch_36
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onCmcDeviceChanged()V

    goto :goto_5b

    .line 1050
    :pswitch_3c
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->-$$Nest$monStopCmcRegistration(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    goto :goto_5b

    .line 1047
    :pswitch_42
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->-$$Nest$monStartCmcRegistration(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    goto :goto_5b

    .line 1041
    :pswitch_48
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->-$$Nest$monSaUpdated(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    goto :goto_5b

    .line 1044
    :pswitch_4e
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->-$$Nest$mstartSAServiceInternal(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Z)V

    :goto_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_48
        :pswitch_42
        :pswitch_3c
        :pswitch_36
        :pswitch_36
        :pswitch_28
        :pswitch_1e
    .end packed-switch
.end method
