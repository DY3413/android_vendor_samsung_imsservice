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
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .line 83
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISAService;)V

    .line 84
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    const-string p2, "CmcSAManager"

    if-eqz p1, :cond_87

    .line 85
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback-IA;)V

    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmSACallback(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISACallback;)V

    .line 87
    :try_start_20
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    const-string v0, "8f9l37bswj"

    const-string v1, ""

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Landroid/content/Context;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v3}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmSACallback(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISACallback;

    move-result-object v3

    .line 87
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected to SA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4d

    const-string v1, "null"

    goto :goto_4e

    :cond_4d
    move-object v1, p1

    :goto_4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmRegistrationCode(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    sget-object p2, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->SERVICE_CONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmState(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;)V

    .line 92
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$mgetAccessTokenInternal(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_69} :catch_6a

    goto :goto_a2

    :catch_6a
    move-exception p1

    .line 94
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 95
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    sget-object p2, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmState(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;)V

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string p2, "onServiceConnected: remote exception"

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    goto :goto_a2

    :cond_87
    const-string p1, "onServiceConnected: service is null"

    .line 99
    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    invoke-static {p2, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmState(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;)V

    .line 101
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    move-result-object p0

    sget-object p2, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    :goto_a2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string p1, "CmcSAManager"

    const-string v0, "onServiceDisconnected to SA"

    .line 107
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 110
    :try_start_f
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmRegistrationCode(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p1

    .line 112
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 114
    :goto_23
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmISaService(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISAService;)V

    .line 117
    :cond_29
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->setDescription(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->-$$Nest$fputmState(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAState;)V

    return-void
.end method
