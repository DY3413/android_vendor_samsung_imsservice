.class Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;
.super Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;
.source "CmcCallSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/cmc/CmcCallSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolteEventListener"
.end annotation


# instance fields
.field private mSession:Lcom/sec/ims/volte2/IImsCallSession;

.field final synthetic this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void
.end method


# virtual methods
.method public notifyReadyToHandleImsCallbacks()V
    .locals 0

    return-void
.end method

.method public onCalling()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CmcCallSessionManager"

    const-string v1, "onCalling()"

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onCalling()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfParticipantHeld(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 478
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConfParticipantHeld(IZ)V

    return-void
.end method

.method public onConfParticipantResumed(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 486
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConfParticipantResumed(IZ)V

    return-void
.end method

.method public onConferenceEstablished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 445
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConferenceEstablished()V

    return-void
.end method

.method public onEPdgUnavailable(I)V
    .locals 0

    return-void
.end method

.method public onEarlyMediaStarted(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CmcCallSessionManager"

    const-string v1, "onEarlyMediaStarted()"

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEarlyMediaStarted(I)V

    return-void
.end method

.method public onEnded(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnded(), error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    const-string p0, "already ended!!"

    .line 343
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fputmIsReplacedSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Z)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainSession: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v3}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cmcType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v4}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSession: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v3}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v3, :cond_2

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMainSession callState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v3}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubSessionList size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v2

    aget-object v0, v0, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v2, :cond_1

    .line 356
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v2

    aget-object v0, v0, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v2, :cond_1

    const-string v0, "CMC session ended, switch mainSession to p2p session."

    .line 357
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-static {v0, v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fputmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 361
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0, v4}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fputmIsReplacedSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Z)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "SUB(WIFI or WIFI-DIRECT) session ended, ignore onEnded"

    .line 363
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iput-object v5, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string p0, "Ignore onEnded as there are other call sessions waiting"

    .line 368
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0, v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fputmReplacedSessionId(Lcom/sec/internal/google/cmc/CmcCallSessionManager;I)V

    .line 372
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmCC(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/internal/google/cmc/CmcConnectivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 377
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 378
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 379
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmVolteServiceModule(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 381
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmVolteServiceModule(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasActiveCall(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 382
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmCC(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/internal/google/cmc/CmcConnectivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "There are no calls, releaseP2pNetwork!"

    .line 383
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEnded(I)V

    .line 394
    iput-object v5, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void
.end method

.method public onEpdgStateChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 514
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEpdgStateChanged()V

    return-void
.end method

.method public onError(ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError(), error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    const-string p0, "already ended!!"

    .line 410
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onError(ILjava/lang/String;I)V

    const/16 p2, 0x451

    if-eq p1, p2, :cond_1

    const/16 p2, 0x452

    if-eq p1, p2, :cond_1

    const/16 p2, 0x45e

    if-eq p1, p2, :cond_1

    const/16 p2, 0x45f

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    .line 427
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    goto :goto_0

    :cond_1
    :pswitch_0
    const-string p0, "Do not set mSession to null"

    .line 424
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x455
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onEstablished(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEstablished(), established on session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 251
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    .line 250
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    const/4 v3, 0x5

    if-eq v0, v2, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fputmReplacedSessionId(Lcom/sec/internal/google/cmc/CmcCallSessionManager;I)V

    .line 259
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prev main session terminate, replaced mainSessionId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmReplacedSessionId(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "main terminate failed.."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v0, "switch main session to p2p session."

    .line 265
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-static {v0, v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fputmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 267
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEstablished(I)V

    .line 273
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSubSessionList size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/IImsCallSession;

    .line 277
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 279
    :try_start_1
    invoke-interface {v0, v3}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2p terminate failed.."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onFailure(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure() : reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    const-string p0, "already ended!!"

    .line 291
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 295
    :cond_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    if-eq v0, v2, :cond_1

    const-string p1, "remove session from mSubSessionList"

    .line 296
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSubSessionList size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onFailure(I)V

    const/4 p1, 0x0

    .line 302
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void
.end method

.method public onForwarded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 336
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onForwarded()V

    return-void
.end method

.method public onHeld(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onHeld(ZZ)V

    return-void
.end method

.method public onImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onParticipantAdded(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 462
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantAdded(I)V

    return-void
.end method

.method public onParticipantRemoved(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 470
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantRemoved(I)V

    return-void
.end method

.method public onParticipantUpdated(I[Ljava/lang/String;[I[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 454
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantUpdated(I[Ljava/lang/String;[I[I)V

    return-void
.end method

.method public onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 437
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V

    return-void
.end method

.method public onResumed(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onResumed(Z)V

    return-void
.end method

.method public onRingingBack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CmcCallSessionManager"

    const-string v1, "onRingingBack()"

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 227
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onRingingBack()V

    return-void
.end method

.method public onSessionChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSessionChanged(I)V

    return-void
.end method

.method public onSessionProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CmcCallSessionManager"

    const-string v1, "onSessionProgress()"

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSessionProgress(I)V

    return-void
.end method

.method public onSessionUpdateRequested(I[B)V
    .locals 0

    return-void
.end method

.method public onStopAlertTone()V
    .locals 0

    return-void
.end method

.method public onSwitched(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CmcCallSessionManager"

    const-string v1, "onSwitched()"

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 311
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSwitched(I)V

    return-void
.end method

.method public onTrying()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CmcCallSessionManager"

    const-string v1, "onTrying()"

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onTrying()V

    return-void
.end method

.method public onTtyTextRequest(I[B)V
    .locals 0

    return-void
.end method

.method public onUssdReceived(II[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 502
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onUssdReceived(II[B)V

    return-void
.end method

.method public onUssdResponse(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
