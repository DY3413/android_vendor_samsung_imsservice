.class Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState;
.super Lcom/sec/internal/helper/State;
.source "ChannelScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LargePollingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V
    .registers 2

    .line 799
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 802
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v0, "LargePollingState, enter"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .registers 2

    .line 829
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v0, "LargePollingState, exit"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 808
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 809
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_3c

    const/16 p1, 0x1f

    if-eq v1, p1, :cond_34

    const/4 p1, 0x0

    goto :goto_42

    .line 812
    :cond_34
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSubscribedState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_41

    .line 815
    :cond_3c
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    :goto_41
    const/4 p1, 0x1

    :goto_42
    if-eqz p1, :cond_5a

    .line 822
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LargePollingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LargePollingState, Handled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_5a
    return p1
.end method
