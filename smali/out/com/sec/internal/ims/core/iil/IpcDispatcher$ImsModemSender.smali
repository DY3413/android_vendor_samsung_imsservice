.class Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;
.super Landroid/os/Handler;
.source "IpcDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/iil/IpcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsModemSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/iil/IpcDispatcher;Landroid/os/Looper;)V
    .registers 3

    .line 79
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 80
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 87
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 89
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_a

    goto :goto_f

    .line 91
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->handleSendIpc([B)V

    :goto_f
    return-void
.end method

.method public run()V
    .registers 1

    .line 0
    return-void
.end method
