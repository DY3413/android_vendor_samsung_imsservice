.class Lcom/sec/sve/SecVideoEngineManager$1;
.super Ljava/lang/Object;
.source "SecVideoEngineManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sve/SecVideoEngineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/sve/SecVideoEngineManager;


# direct methods
.method constructor <init>(Lcom/sec/sve/SecVideoEngineManager;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/sec/sve/SecVideoEngineManager$1;->this$0:Lcom/sec/sve/SecVideoEngineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 36
    iget-object p1, p0, Lcom/sec/sve/SecVideoEngineManager$1;->this$0:Lcom/sec/sve/SecVideoEngineManager;

    invoke-static {p1}, Lcom/sec/sve/SecVideoEngineManager;->-$$Nest$fgetLOG_TAG(Lcom/sec/sve/SecVideoEngineManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p1, p0, Lcom/sec/sve/SecVideoEngineManager$1;->this$0:Lcom/sec/sve/SecVideoEngineManager;

    invoke-static {p2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sve/ISecVideoEngineService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->-$$Nest$fputmService(Lcom/sec/sve/SecVideoEngineManager;Lcom/sec/sve/ISecVideoEngineService;)V

    .line 38
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager$1;->this$0:Lcom/sec/sve/SecVideoEngineManager;

    invoke-static {p0}, Lcom/sec/sve/SecVideoEngineManager;->-$$Nest$fgetmListener(Lcom/sec/sve/SecVideoEngineManager;)Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;->onConnected()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 44
    iget-object p1, p0, Lcom/sec/sve/SecVideoEngineManager$1;->this$0:Lcom/sec/sve/SecVideoEngineManager;

    invoke-static {p1}, Lcom/sec/sve/SecVideoEngineManager;->-$$Nest$fgetLOG_TAG(Lcom/sec/sve/SecVideoEngineManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/sec/sve/SecVideoEngineManager$1;->this$0:Lcom/sec/sve/SecVideoEngineManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/sve/SecVideoEngineManager;->-$$Nest$fputmService(Lcom/sec/sve/SecVideoEngineManager;Lcom/sec/sve/ISecVideoEngineService;)V

    .line 46
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager$1;->this$0:Lcom/sec/sve/SecVideoEngineManager;

    invoke-static {p0}, Lcom/sec/sve/SecVideoEngineManager;->-$$Nest$fgetmListener(Lcom/sec/sve/SecVideoEngineManager;)Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;->onDisconnected()V

    return-void
.end method
