.class Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;
.super Lcom/sec/internal/helper/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HaltingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/helper/StateMachine$SmHandler;)V
    .registers 2

    .line 737
    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;->this$0:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;-><init>(Lcom/sec/internal/helper/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 2

    .line 740
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;->this$0:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->-$$Nest$fgetmSm(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->haltedProcessMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method
