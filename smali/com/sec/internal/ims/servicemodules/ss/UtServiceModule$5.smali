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
    .locals 0

    .line 1295
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public onDataConnectionStateChanged(IZI)V
    .locals 0

    .line 1300
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getMobileDataRegState(I)I

    move-result p1

    if-nez p1, :cond_0

    .line 1301
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->needToGetSimservDocOnBootup(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1302
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->querySimServDoc(I)I

    :cond_0
    return-void
.end method

.method public onDefaultNetworkStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onEpdgConnected(I)V
    .locals 2

    .line 1316
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$mperformExemptUtService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    .line 1318
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->needToGetSimservDocOnBootup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UtServiceModule"

    const-string v1, "onEpdgConnected"

    .line 1319
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1320
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->querySimServDoc(I)I

    :cond_0
    return-void
.end method

.method public onEpdgDeregisterRequested(I)V
    .locals 0

    return-void
.end method

.method public onEpdgDisconnected(I)V
    .locals 0

    .line 1326
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$mperformExemptUtService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onEpdgIpsecDisconnected(I)V
    .locals 0

    return-void
.end method

.method public onEpdgRegisterRequested(IZ)V
    .locals 0

    return-void
.end method

.method public onIKEAuthFAilure(I)V
    .locals 0

    return-void
.end method

.method public onMobileRadioConnected(I)V
    .locals 0

    return-void
.end method

.method public onMobileRadioDisconnected(I)V
    .locals 0

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1349
    invoke-virtual {p2}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1351
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fgetsmUtMap(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->handlePdnFail(Landroid/telephony/PreciseDataConnectionState;)V

    :cond_0
    return-void
.end method
