.class public Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;
.super Landroid/os/Handler;
.source "CmcServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p2pCallbackHandler"
.end annotation


# static fields
.field public static final P2P_DISCOVERY_RESULT:I = 0x1


# instance fields
.field private mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;Landroid/os/Looper;)V
    .registers 3

    .line 357
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    .line 358
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 355
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 367
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    .line 411
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P Discovery invalid callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_128

    .line 370
    :cond_21
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P2P Discovery result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->-$$Nest$mprintP2pList(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)V

    .line 372
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->-$$Nest$fputmIsP2pDiscoveryDone(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;Z)V

    .line 373
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

    const/4 v0, 0x0

    if-eqz p1, :cond_123

    .line 374
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isInP2pArea(Lcom/sec/ims/ImsRegistration;)Z

    move-result p1

    if-eqz p1, :cond_100

    .line 375
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->-$$Nest$fgetmNeedToNotifyAfterP2pDiscovery(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)Z

    move-result p1

    if-eqz p1, :cond_123

    .line 376
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Notify pending DIALOG event after P2P discovery done"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->-$$Nest$fgetmLastCmcDialogEvent(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)[Lcom/sec/ims/DialogEvent;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    aget-object p1, p1, v2

    if-eqz p1, :cond_123

    .line 379
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/internal/google/SecImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 381
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/Dialog;

    if-eqz v3, :cond_82

    .line 382
    invoke-virtual {v3}, Lcom/sec/ims/Dialog;->getState()I

    move-result v3

    if-ne v3, v1, :cond_82

    goto :goto_98

    :cond_97
    move v1, v0

    :goto_98
    if-eqz v1, :cond_e6

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@samsungims.com;gr=urn:duid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 390
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->-$$Nest$fgetmIsCmcPdCheckRespReceived(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v4

    const-wide/16 v5, 0x4e20

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v7

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcPdCheckTimer(IJILjava/lang/String;Z)V

    goto :goto_123

    .line 393
    :cond_e6
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No cofirmed Dilaog in nofity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 395
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    const/16 v1, 0xc8

    invoke-static {p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->-$$Nest$fputmLastCmcEndCallReason(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;I)V

    goto :goto_123

    .line 400
    :cond_100
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Notify empty DIALOG event after P2P discovery done"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->-$$Nest$fgetmLastCmcDialogEvent(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)[Lcom/sec/ims/DialogEvent;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    aget-object p1, p1, v1

    if-eqz p1, :cond_123

    .line 403
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    .line 404
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/google/SecImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 408
    :cond_123
    :goto_123
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-static {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->-$$Nest$fputmNeedToNotifyAfterP2pDiscovery(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;Z)V

    :goto_128
    return-void
.end method

.method public setP2pRegiInfo(Lcom/sec/ims/ImsRegistration;)V
    .registers 2

    .line 362
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

    return-void
.end method
