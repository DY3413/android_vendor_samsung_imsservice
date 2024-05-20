.class Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;
.super Lcom/sec/internal/helper/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuittingState"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 748
    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
