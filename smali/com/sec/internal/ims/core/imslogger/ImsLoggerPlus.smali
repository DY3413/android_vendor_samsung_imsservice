.class public Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;
.super Ljava/lang/Object;
.source "ImsLoggerPlus.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;


# static fields
.field private static final CLS_SERVICE_NAME:Ljava/lang/String; = "com.sec.imslogger.services.IntentServiceForEvents"

.field private static final DM_SERVICE_NAME:Ljava/lang/String; = "com.sec.imslogger.services.ImsDmService"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsLoggerPlus"

.field private static final MAX_PENDING_QUEUE:I = 0xa


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mDmBinder:Landroid/os/IBinder;

.field private mIsBound:Z

.field private final mPackageName:Ljava/lang/String;

.field private mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

.field private final mPendingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3PqGK2-Oa_e5PDWL2pRbrWU0ZqM(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->lambda$sendViaIntentService$0(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPendingQueue(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDmBinder(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mDmBinder:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsBound(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mIsBound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPackageStatus(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisconnectService(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->disconnectService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendPendingObject(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->sendPendingObject()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mIsBound:Z

    .line 33
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 34
    new-instance v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;-><init>(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mConnection:Landroid/content/ServiceConnection;

    .line 56
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private addPendingObject(Ljava/lang/Object;)V
    .locals 3

    .line 125
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPendingObject size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private allowedDmEvent()Z
    .locals 1

    .line 88
    sget-boolean v0, Lcom/sec/internal/helper/os/Debug;->ALLOW_DIAGNOSTICS:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isOtpAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->disconnectService()V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private checkBinderAvailable()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mDmBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mIsBound:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private connect()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mIsBound:Z

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->connectService()V

    :cond_0
    return-void
.end method

.method private connectService()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageName:Ljava/lang/String;

    const-string v3, "com.sec.imslogger.services.ImsDmService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private disconnectService()V
    .locals 2

    .line 114
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->checkBinderAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mDmBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mIsBound:Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendViaIntentService$0(Landroid/content/Intent;)V
    .locals 3

    .line 151
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageName:Ljava/lang/String;

    const-string v2, "com.sec.imslogger.services.IntentServiceForEvents"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private sendPendingObject()V
    .locals 2

    .line 133
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->send(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "succeed send pending requests"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendViaIntentService(Landroid/content/Intent;)V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .locals 4

    .line 61
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageName:Ljava/lang/String;

    const-string v3, "com.sec.imslogger.services.ImsDmService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 74
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->checkBinderAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_CONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPackageStatus() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object p0

    .line 79
    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPackageStatus(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object p0
.end method

.method public initializeDmEvent()V
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->allowedDmEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initialize DmEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->connect()V

    :cond_0
    return-void
.end method

.method public send(Ljava/lang/Object;)Z
    .locals 6

    .line 160
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->allowedDmEvent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-eq v0, v2, :cond_7

    sget-object v2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->EMERGENCY_MODE:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v0, v2, :cond_0

    goto/16 :goto_3

    .line 166
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send() with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v3, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_CONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v2, 0x0

    .line 172
    :try_start_0
    const-class v3, Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    .line 176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 177
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mDmBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_1

    .line 178
    invoke-interface {p1, v3, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 182
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 183
    iput-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mDmBinder:Landroid/os/IBinder;

    .line 184
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mIsBound:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_3

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    throw p0

    .line 188
    :cond_2
    sget-object v3, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v2, v3, :cond_3

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding request to PendingQueue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->addPendingObject(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 192
    :cond_3
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    check-cast p1, Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->sendViaIntentService(Landroid/content/Intent;)V

    goto :goto_2

    .line 195
    :cond_4
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "notifyType"

    .line 196
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    if-ne v0, v4, :cond_6

    .line 198
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "DebugInfoType"

    .line 199
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "msgType"

    .line 201
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "SipType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "direction"

    .line 202
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Direction"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "timestamp"

    .line 203
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "localIp"

    .line 204
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalAddr"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "remoteIp"

    .line 205
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteAddr"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message"

    .line 206
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SipMsg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->sendViaIntentService(Landroid/content/Intent;)V

    :cond_6
    :goto_2
    move v1, v4

    :cond_7
    :goto_3
    return v1
.end method
