.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;
.super Ljava/lang/Object;
.source "UtServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V
    .registers 2

    .line 1251
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;I)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onDataConnectionStateChanged(IZI)V
    .registers 4

    .line 1256
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getMobileDataRegState(I)I

    move-result p1

    if-nez p1, :cond_19

    .line 1257
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->needToGetSimservDocOnBootup(I)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1258
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->querySimServDoc(I)I

    :cond_19
    return-void
.end method

.method public onDefaultNetworkStateChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onEpdgConnected(I)V
    .registers 4

    .line 1269
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$mperformExemptUtService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    .line 1271
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->needToGetSimservDocOnBootup(I)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "UtServiceModule"

    const-string v1, "onEpdgConnected"

    .line 1272
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1273
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->querySimServDoc(I)I

    :cond_19
    return-void
.end method

.method public onEpdgDeregisterRequested(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onEpdgDisconnected(I)V
    .registers 2

    .line 1279
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$mperformExemptUtService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .registers 3

    .line 0
    return-void
.end method

.method public onEpdgIpsecDisconnected(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onEpdgRegisterRequested(IZ)V
    .registers 3

    .line 0
    return-void
.end method

.method public onIKEAuthFAilure(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onMobileRadioConnected(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onMobileRadioDisconnected(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V
    .registers 4

    if-eqz p2, :cond_27

    .line 1307
    invoke-virtual {p2}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionState()I

    move-result v0

    if-nez v0, :cond_27

    .line 1309
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isDisconnecting()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1310
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fgetsmUtMap(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->handlePdnFail(Landroid/telephony/PreciseDataConnectionState;)V

    :cond_27
    return-void
.end method
