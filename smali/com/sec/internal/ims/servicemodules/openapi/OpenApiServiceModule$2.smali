.class Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;
.super Ljava/lang/Object;
.source "OpenApiServiceModule.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->connectVoLteService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "OpenApiServiceModule"

    const-string v0, "Connected to VolteService."

    .line 257
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {p2}, Lcom/sec/ims/volte2/IVolteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVolteService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fputmVolteService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/volte2/IVolteService;)V

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fgetmVolteService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/ims/volte2/IVolteService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get IVolteService with "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 264
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fgetmImsCallEventListener(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/volte2/IImsCallEventListener;

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fgetmVolteService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/ims/volte2/IVolteService;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/ims/volte2/IVolteService;->registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fgetmImsCallEventListener(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 269
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "OpenApiServiceModule"

    const-string v0, "Disconnected from VolteService."

    .line 275
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fputmVolteService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/volte2/IVolteService;)V

    return-void
.end method
