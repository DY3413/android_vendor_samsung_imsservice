.class public Lcom/sec/internal/helper/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Lcom/sec/internal/helper/IState;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 1

    .line 0
    return-void
.end method

.method public exit()V
    .registers 1

    .line 0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x24

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method