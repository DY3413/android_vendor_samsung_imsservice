.class Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;
.super Ljava/lang/Object;
.source "ImsDiagnosticMonitorNotifier.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 38
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;

    iget-object p1, p1, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onServiceConnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;

    iput-object p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmBinder:Landroid/os/IBinder;

    .line 40
    sget-object p1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_CONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mIsBound:Z

    .line 42
    invoke-static {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->-$$Nest$msendPendingObject(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 47
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;

    iget-object p1, p1, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;

    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p1, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 49
    invoke-static {p1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->-$$Nest$fgetmPendingQueue(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 50
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->disconnectService()V

    return-void
.end method
