.class Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatingState;
.super Lcom/sec/internal/helper/State;
.source "ChannelScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelCreatingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V
    .registers 2

    .line 549
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatingState-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatingState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 552
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v0, "ChannelCreatingState, enter"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .registers 2

    .line 576
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v0, "ChannelCreatingState, exit"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 558
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p1

    .line 560
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_14

    const/4 v0, 0x0

    goto :goto_1c

    .line 562
    :cond_14
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mChannelCreatedState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/4 v0, 0x1

    :goto_1c
    if-eqz v0, :cond_34

    .line 569
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$ChannelCreatingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChannelCreatingState, Handled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_34
    return v0
.end method
