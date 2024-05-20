.class Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;
.super Ljava/lang/Object;
.source "ImsLoggerPlus.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 38
    invoke-static {}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->-$$Nest$fputmDmBinder(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Landroid/os/IBinder;)V

    .line 40
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    sget-object p2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_CONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->-$$Nest$fputmPackageStatus(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;)V

    .line 41
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->-$$Nest$fputmIsBound(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Z)V

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    invoke-static {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->-$$Nest$msendPendingObject(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 48
    invoke-static {}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->-$$Nest$fputmPackageStatus(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;)V

    .line 50
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    invoke-static {p1}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->-$$Nest$fgetmPendingQueue(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 51
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    invoke-static {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->-$$Nest$mdisconnectService(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;)V

    return-void
.end method
