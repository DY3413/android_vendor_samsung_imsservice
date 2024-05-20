.class Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;
.super Ljava/lang/Object;
.source "CmcSAManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/cmc/CmcSAManager;->connectToSamsungAccountService(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 85
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISAService;)V

    .line 86
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    const-string p2, "CmcSAManager"

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback-IA;)V

    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmSACallback(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISACallback;)V

    .line 89
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    const-string v0, "8f9l37bswj"

    const-string v1, "5AC671E87C25F004543DEC42D8982E02"

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Landroid/content/Context;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v3}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmSACallback(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISACallback;

    move-result-object v3

    .line 89
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected to SA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmRegistrationCode(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    sget-object p2, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->SERVICE_CONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmState(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;)V

    .line 94
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$mgetAccessTokenInternal(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 97
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    sget-object p2, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmState(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;)V

    .line 98
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string p2, "onServiceConnected: remote exception"

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    goto :goto_1

    :cond_1
    const-string p1, "onServiceConnected: service is null"

    .line 101
    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    invoke-static {p2, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmState(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;)V

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    move-result-object p0

    sget-object p2, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "CmcSAManager"

    const-string v0, "onServiceDisconnected to SA"

    .line 109
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmRegistrationCode(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 116
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISAService;)V

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    .line 120
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmState(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;)V

    return-void
.end method
