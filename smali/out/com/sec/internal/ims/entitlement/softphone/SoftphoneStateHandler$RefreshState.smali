.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RefreshState;
.super Lcom/sec/internal/helper/State;
.source "SoftphoneStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V
    .registers 2

    .line 673
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RefreshState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 13

    .line 677
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RefreshState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RefreshState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v2}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 678
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/16 v2, 0x69

    if-eq v0, v1, :cond_6b

    const/16 v1, 0x12

    const/4 v3, 0x0

    if-eq v0, v1, :cond_54

    if-eq v0, v2, :cond_3c

    goto :goto_7d

    .line 684
    :cond_3c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 685
    const-class v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;

    const/16 v2, 0xcc

    .line 686
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;

    .line 687
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RefreshState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processReleaseImsNetworkIdentitiesResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;I)V

    goto :goto_7c

    .line 690
    :cond_54
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RefreshState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v4, p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v8, p1, v3

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    .line 691
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RefreshState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_7c

    .line 680
    :cond_6b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 681
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RefreshState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v2, v1, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    :goto_7c
    const/4 v3, 0x1

    :goto_7d
    return v3
.end method
