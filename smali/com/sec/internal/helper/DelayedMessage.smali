.class public Lcom/sec/internal/helper/DelayedMessage;
.super Ljava/lang/Object;
.source "DelayedMessage.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sec/internal/helper/DelayedMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final msg:Landroid/os/Message;

.field private final timeout:J


# direct methods
.method public constructor <init>(Landroid/os/Message;J)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    .line 13
    iput-wide p2, p0, Lcom/sec/internal/helper/DelayedMessage;->timeout:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sec/internal/helper/DelayedMessage;)I
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/sec/internal/helper/DelayedMessage;->timeout:J

    iget-wide p0, p1, Lcom/sec/internal/helper/DelayedMessage;->timeout:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Lcom/sec/internal/helper/DelayedMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/DelayedMessage;->compareTo(Lcom/sec/internal/helper/DelayedMessage;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 46
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 49
    :cond_2
    check-cast p1, Lcom/sec/internal/helper/DelayedMessage;

    .line 51
    iget-object v2, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    if-nez v2, :cond_4

    .line 52
    iget-object p0, p1, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 54
    :cond_4
    iget v3, v2, Landroid/os/Message;->what:I

    iget-object v4, p1, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    iget v4, v4, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_5

    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    if-ne v2, v3, :cond_5

    iget-object p0, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    iget p0, p0, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p0, p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0
.end method

.method public getMsg()Landroid/os/Message;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    return-object p0
.end method

.method public getTimeout()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/sec/internal/helper/DelayedMessage;->timeout:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 32
    iget-object p0, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DelayedMessage: [target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/helper/DelayedMessage;->timeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " (will expired in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/helper/DelayedMessage;->timeout:J

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "msec)]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
