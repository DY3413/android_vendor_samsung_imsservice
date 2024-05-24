.class public abstract Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;
.super Ljava/lang/Object;
.source "ImsDiagnosticMonitorNotifier.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;


# static fields
.field private static final MAX_PENDING_QUEUE:I = 0xa


# instance fields
.field protected LOG_TAG:Ljava/lang/String;

.field protected mAllowPending:Z

.field protected final mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field protected mDmBinder:Landroid/os/IBinder;

.field protected mDmSreviceName:Ljava/lang/String;

.field protected mIsBound:Z

.field protected mPackageName:Ljava/lang/String;

.field protected mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

.field private mPendingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmPendingQueue(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendPendingObject(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->sendPendingObject()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mIsBound:Z

    .line 34
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 35
    new-instance v0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;-><init>(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mConnection:Landroid/content/ServiceConnection;

    .line 55
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageName:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmSreviceName:Ljava/lang/String;

    .line 58
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mAllowPending:Z

    return-void
.end method

.method private addPendingObject(Ljava/lang/Object;)V
    .registers 5

    .line 122
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mAllowPending:Z

    if-eqz v0, :cond_34

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPendingObject size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2f

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 127
    :cond_2f
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_34
    return-void
.end method

.method private sendDmNotification(Ljava/lang/Object;)Z
    .registers 7

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 149
    :try_start_6
    instance-of v3, p1, Landroid/os/Bundle;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 154
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_22

    .line 155
    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_1a
    .catchall {:try_start_6 .. :try_end_14} :catchall_18

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_18
    move-exception p0

    goto :goto_26

    :catch_1a
    move-exception p1

    .line 159
    :try_start_1b
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 160
    iput-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmBinder:Landroid/os/IBinder;

    .line 161
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mIsBound:Z
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    .line 163
    :cond_22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :goto_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    throw p0
.end method

.method private sendPendingObject()V
    .registers 3

    .line 132
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mAllowPending:Z

    if-eqz v0, :cond_28

    .line 133
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 136
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->send(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "succeed send pending requests"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_28
    return-void
.end method


# virtual methods
.method protected allowedDmEvent()Z
    .registers 2

    .line 89
    sget-boolean v0, Lcom/sec/internal/helper/os/Debug;->ALLOW_DIAGNOSTICS:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isOtpAuthorized()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_10

    .line 92
    :cond_b
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->disconnectService()V

    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method protected checkBinderAvailable()Z
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mIsBound:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .registers 5

    .line 62
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_43

    .line 66
    :try_start_8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmSreviceName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1a} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_1a} :catch_29

    .line 73
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 75
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->checkBinderAvailable()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 76
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_CONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    goto :goto_43

    :catch_29
    move-exception v0

    .line 69
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPackageStatus() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object p0

    .line 80
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPackageStatus(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object p0
.end method

.method protected connectService()V
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v0, v1, :cond_1f

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mIsBound:Z

    if-nez v0, :cond_1f

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmSreviceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1f
    return-void
.end method

.method protected disconnectService()V
    .registers 3

    .line 111
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->checkBinderAvailable()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 113
    :try_start_6
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_d} :catch_d

    :catch_d
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mIsBound:Z

    :cond_13
    return-void
.end method

.method public initializeDmEvent()V
    .registers 3

    .line 98
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->allowedDmEvent()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connectService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->connectService()V

    :cond_10
    return-void
.end method

.method public send(Ljava/lang/Object;)Z
    .registers 6

    .line 171
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->allowedDmEvent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-eq v0, v2, :cond_4d

    sget-object v2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->EMERGENCY_MODE:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v0, v2, :cond_12

    goto :goto_4d

    .line 177
    :cond_12
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send() with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_CONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v0, v2, :cond_46

    .line 180
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->sendDmNotification(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4d

    .line 181
    :cond_46
    sget-object v2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v0, v2, :cond_4d

    .line 182
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->addPendingObject(Ljava/lang/Object;)V

    :cond_4d
    :goto_4d
    return v1
.end method
