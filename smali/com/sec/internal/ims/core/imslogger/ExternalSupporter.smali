.class public Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;
.super Ljava/lang/Object;
.source "ExternalSupporter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mImsLogger:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mPackages:Ljava/util/ArrayList;

    .line 17
    const-class v0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mImsLogger:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    .line 21
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 24
    invoke-static {p0}, Lcom/sec/internal/helper/os/SystemUtil;->checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    sget-object p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->LOG_TAG:Ljava/lang/String;

    const-string p1, "UPSM mode skip package add"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 27
    sget-object p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->LOG_TAG:Ljava/lang/String;

    const-string p1, "EMERGENCY mode skip package add"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 31
    :cond_1
    sget-boolean v0, Lcom/sec/internal/helper/os/Debug;->ALLOW_DIAGNOSTICS:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isOtpAuthorized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "package add"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mPackages:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    const-string v2, "com.hugeland.cdsplus"

    invoke-direct {v1, p1, v2}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    const-string v2, "com.sec.imslogger"

    invoke-direct {v1, p1, v2}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mImsLogger:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mImsLogger:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    move-result-object p0

    return-object p0

    .line 51
    :cond_0
    sget-object p0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object p0
.end method

.method public initializeDmEvent()V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mImsLogger:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->initializeDmEvent()V

    :cond_0
    return-void
.end method

.method public send(Ljava/lang/Object;)Z
    .locals 1

    .line 41
    sget-object p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;

    .line 42
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;->send(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
