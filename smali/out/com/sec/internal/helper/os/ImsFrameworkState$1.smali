.class Lcom/sec/internal/helper/os/ImsFrameworkState$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsFrameworkState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/helper/os/ImsFrameworkState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/os/ImsFrameworkState;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/os/ImsFrameworkState;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/sec/internal/helper/os/ImsFrameworkState$1;->this$0:Lcom/sec/internal/helper/os/ImsFrameworkState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "com.sec.ims.imsmanager.RESTART"

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const-string p1, "ImsFrameworkState"

    const-string p2, "ImsService is ready."

    .line 43
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lcom/sec/internal/helper/os/ImsFrameworkState;->-$$Nest$sfgetMUTEX()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 p2, 0x1

    .line 46
    :try_start_19
    invoke-static {p2}, Lcom/sec/internal/helper/os/ImsFrameworkState;->-$$Nest$sfputsIsFwReady(Z)V

    .line 47
    iget-object p2, p0, Lcom/sec/internal/helper/os/ImsFrameworkState$1;->this$0:Lcom/sec/internal/helper/os/ImsFrameworkState;

    invoke-static {p2}, Lcom/sec/internal/helper/os/ImsFrameworkState;->-$$Nest$fgetmContext(Lcom/sec/internal/helper/os/ImsFrameworkState;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState$1;->this$0:Lcom/sec/internal/helper/os/ImsFrameworkState;

    invoke-static {v0}, Lcom/sec/internal/helper/os/ImsFrameworkState;->-$$Nest$fgetmFwStatusReceiver(Lcom/sec/internal/helper/os/ImsFrameworkState;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    iget-object p2, p0, Lcom/sec/internal/helper/os/ImsFrameworkState$1;->this$0:Lcom/sec/internal/helper/os/ImsFrameworkState;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/sec/internal/helper/os/ImsFrameworkState;->-$$Nest$fputmContext(Lcom/sec/internal/helper/os/ImsFrameworkState;Landroid/content/Context;)V

    .line 50
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState$1;->this$0:Lcom/sec/internal/helper/os/ImsFrameworkState;

    invoke-static {p0}, Lcom/sec/internal/helper/os/ImsFrameworkState;->-$$Nest$mnotifyFrameworkState(Lcom/sec/internal/helper/os/ImsFrameworkState;)V

    .line 51
    monitor-exit p1

    goto :goto_3b

    :catchall_38
    move-exception p0

    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_19 .. :try_end_3a} :catchall_38

    throw p0

    :cond_3b
    :goto_3b
    return-void
.end method
