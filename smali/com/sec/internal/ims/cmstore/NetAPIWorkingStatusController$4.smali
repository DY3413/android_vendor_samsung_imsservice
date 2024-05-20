.class Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetAPIWorkingStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V
    .locals 0

    .line 1164
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$4;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1167
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$4;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$4;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 1173
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$4;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLost + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$4;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
