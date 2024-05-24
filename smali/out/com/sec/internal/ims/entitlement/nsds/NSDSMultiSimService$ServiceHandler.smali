.class public final Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;
.super Landroid/os/Handler;
.source "NSDSMultiSimService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Looper;)V
    .registers 3

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    .line 64
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 69
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_98

    const/4 v1, 0x5

    if-eq v0, v1, :cond_92

    const/16 v1, 0x13

    if-eq v0, v1, :cond_88

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7e

    const/16 v1, 0x64

    if-eq v0, v1, :cond_74

    const/16 v1, 0xd4

    if-eq v0, v1, :cond_6a

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_60

    const/16 v1, 0xdd

    if-eq v0, v1, :cond_56

    const/16 v1, 0xdf

    if-eq v0, v1, :cond_4e

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_46

    goto :goto_ab

    .line 99
    :cond_46
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$munregisterNsdsEventMessenger(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Messenger;)V

    goto :goto_ab

    .line 96
    :cond_4e
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$mregisterNsdsEventMessenger(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Messenger;)V

    goto :goto_ab

    .line 90
    :cond_56
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$mhandleVoWifToggleOffEvent(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    goto :goto_ab

    .line 87
    :cond_60
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$mhandleVoWifToggleOnEvent(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    goto :goto_ab

    .line 93
    :cond_6a
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$mupdateEntitlementUrl(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    goto :goto_ab

    .line 72
    :cond_74
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$monEventSimReady(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    goto :goto_ab

    .line 102
    :cond_7e
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$mretrieveAkaToken(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    goto :goto_ab

    .line 84
    :cond_88
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$mupdateE911Address(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    goto :goto_ab

    .line 75
    :cond_92
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$mbindNSDSMultiSimService(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)V

    goto :goto_ab

    .line 81
    :cond_98
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$mdeactivateSimDevice(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    goto :goto_ab

    .line 78
    :cond_a2
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$mactivateSimDevice(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    :goto_ab
    return-void
.end method
