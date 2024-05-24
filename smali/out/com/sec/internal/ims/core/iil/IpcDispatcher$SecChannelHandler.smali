.class public Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;
.super Landroid/os/Handler;
.source "IpcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/iil/IpcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SecChannelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/iil/IpcDispatcher;Landroid/os/Looper;)V
    .registers 3

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 64
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_13

    .line 72
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->handleChannelProxyDead(J)V

    :goto_13
    return-void
.end method
