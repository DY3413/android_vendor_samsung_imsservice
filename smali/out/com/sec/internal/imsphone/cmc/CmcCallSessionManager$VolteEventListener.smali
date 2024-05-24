.class Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;
.super Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;
.source "CmcCallSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolteEventListener"
.end annotation


# instance fields
.field private mSession:Lcom/sec/ims/volte2/IImsCallSession;

.field final synthetic this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V
    .registers 3

    .line 191
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;-><init>()V

    .line 192
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void
.end method


# virtual methods
.method public notifyReadyToHandleImsCallbacks()V
    .registers 1

    .line 0
    return-void
.end method

.method public onCalling()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CmcCallSessionManager"

    const-string v1, "onCalling()"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_1c

    goto :goto_25

    .line 206
    :cond_1c
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onCalling()V

    :cond_25
    :goto_25
    return-void
.end method

.method public onConfParticipantHeld(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_13

    return-void

    .line 456
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConfParticipantHeld(IZ)V

    return-void
.end method

.method public onConfParticipantResumed(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_13

    return-void

    .line 464
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConfParticipantResumed(IZ)V

    return-void
.end method

.method public onConferenceEstablished()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_13

    return-void

    .line 423
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConferenceEstablished()V

    return-void
.end method

.method public onEPdgUnavailable(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onEarlyMediaStarted(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CmcCallSessionManager"

    const-string v1, "onEarlyMediaStarted()"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_1a

    return-void

    .line 242
    :cond_1a
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEarlyMediaStarted(I)V

    return-void
.end method

.method public onEnded(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnded(), error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_20

    const-string p0, "already ended!!"

    .line 340
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 343
    :cond_20
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fputmIsReplacedSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Z)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainSession: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v3}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cmcType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v4}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSession: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v3}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v3

    const/4 v4, 0x0

    if-eq v0, v3, :cond_123

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMainSession callState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v3}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubSessionList size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v2

    aget-object v0, v0, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v2, :cond_11b

    .line 353
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v2

    aget-object v0, v0, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v2, :cond_11b

    const-string v0, "CMC session ended, switch mainSession to p2p session."

    .line 354
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-static {v0, v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fputmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 358
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fputmIsReplacedSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Z)V

    goto :goto_14d

    :cond_11b
    const-string p1, "SUB(WIFI or WIFI-DIRECT) session ended, ignore onEnded"

    .line 360
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void

    .line 364
    :cond_123
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_135

    const-string p0, "Ignore onEnded as there are other call sessions waiting"

    .line 365
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 368
    :cond_135
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fputmReplacedSessionId(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;I)V

    .line 369
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :goto_14d
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEnded(I)V

    .line 372
    iput-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void
.end method

.method public onEpdgStateChanged()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_13

    return-void

    .line 492
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEpdgStateChanged()V

    return-void
.end method

.method public onError(ILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError(), error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_20

    const-string p0, "already ended!!"

    .line 388
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 392
    :cond_20
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onError(ILjava/lang/String;I)V

    const/16 p2, 0x451

    if-eq p1, p2, :cond_40

    const/16 p2, 0x452

    if-eq p1, p2, :cond_40

    const/16 p2, 0x45e

    if-eq p1, p2, :cond_40

    const/16 p2, 0x45f

    if-eq p1, p2, :cond_40

    packed-switch p1, :pswitch_data_46

    const/4 p1, 0x0

    .line 405
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    goto :goto_45

    :cond_40
    :pswitch_40
    const-string p0, "Do not set mSession to null"

    .line 402
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x455
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
    .end packed-switch
.end method

.method public onEstablished(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEstablished(), established on session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 248
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    .line 247
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    const/4 v3, 0x5

    if-eq v0, v2, :cond_a3

    .line 253
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fputmReplacedSessionId(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;I)V

    .line 256
    :try_start_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prev main session terminate, replaced mainSessionId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmReplacedSessionId(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_6d} :catch_6e

    goto :goto_83

    :catch_6e
    move-exception v0

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "main terminate failed.."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_83
    const-string/jumbo v0, "switch main session to p2p session."

    .line 262
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-static {v0, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fputmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 264
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_a3
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEstablished(I)V

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSubSessionList size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d4
    :goto_d4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/IImsCallSession;

    .line 274
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v4

    if-eq v2, v4, :cond_d4

    .line 276
    :try_start_f2
    invoke-interface {v0, v3}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_f5} :catch_f6

    goto :goto_d4

    :catch_f6
    move-exception v0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2p terminate failed.."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    :cond_10c
    return-void
.end method

.method public onFailure(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure() : reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_20

    const-string p0, "already ended!!"

    .line 288
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 292
    :cond_20
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    if-eq v0, v2, :cond_64

    const-string/jumbo p1, "remove session from mSubSessionList"

    .line 293
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSubSessionList size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 298
    :cond_64
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onFailure(I)V

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void
.end method

.method public onForwarded()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_13

    return-void

    .line 333
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onForwarded()V

    return-void
.end method

.method public onHeld(ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_13

    return-void

    .line 317
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onHeld(ZZ)V

    return-void
.end method

.method public onImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onParticipantAdded(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_13

    return-void

    .line 440
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantAdded(I)V

    return-void
.end method

.method public onParticipantRemoved(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_13

    return-void

    .line 448
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantRemoved(I)V

    return-void
.end method

.method public onParticipantUpdated(I[Ljava/lang/String;[I[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_13

    return-void

    .line 432
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantUpdated(I[Ljava/lang/String;[I[I)V

    return-void
.end method

.method public onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_13

    return-void

    .line 415
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V

    return-void
.end method

.method public onResumed(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_13

    return-void

    .line 325
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onResumed(Z)V

    return-void
.end method

.method public onRetryingVoLteOrCsCall(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onRingingBack()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CmcCallSessionManager"

    const-string v1, "onRingingBack()"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_1a

    return-void

    .line 224
    :cond_1a
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onRingingBack()V

    return-void
.end method

.method public onSessionChanged(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSessionChanged(I)V

    return-void
.end method

.method public onSessionProgress(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CmcCallSessionManager"

    const-string v1, "onSessionProgress()"

    .line 229
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_1a

    return-void

    .line 233
    :cond_1a
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSessionProgress(I)V

    return-void
.end method

.method public onSessionUpdateRequested(I[B)V
    .registers 3

    .line 0
    return-void
.end method

.method public onStopAlertTone()V
    .registers 1

    .line 0
    return-void
.end method

.method public onSwitched(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CmcCallSessionManager"

    const-string v1, "onSwitched()"

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_1a

    return-void

    .line 308
    :cond_1a
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSwitched(I)V

    return-void
.end method

.method public onTrying()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CmcCallSessionManager"

    const-string v1, "onTrying()"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_1a

    return-void

    .line 215
    :cond_1a
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onTrying()V

    return-void
.end method

.method public onTtyTextRequest(I[B)V
    .registers 3

    .line 0
    return-void
.end method

.method public onUssdReceived(II[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_13

    return-void

    .line 480
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onUssdReceived(II[B)V

    return-void
.end method

.method public onUssdResponse(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method
