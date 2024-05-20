.class Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsDiagnosticMonitorNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "ImsDiagMonitorNotiMgr"

    const-string p2, "DM EVENT READY"

    .line 94
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->-$$Nest$fgetmExternalSupporter(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;)Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->initializeDmEvent()V

    return-void
.end method
