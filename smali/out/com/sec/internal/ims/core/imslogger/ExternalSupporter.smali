.class public Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;
.super Ljava/lang/Object;
.source "ExternalSupporter.java"


# static fields
.field private static final DM_PACKAGE:Ljava/lang/String; = "com.sec.imslogger"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final STTS_PACKAGE:Ljava/lang/String; = "com.googlecode.android_scripting"

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

.field private mSttsSipChecker:Lcom/sec/internal/ims/core/imslogger/SttsSipChecker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

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
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mImsLogger:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    .line 21
    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mSttsSipChecker:Lcom/sec/internal/ims/core/imslogger/SttsSipChecker;

    .line 24
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 25
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object p0

    if-eqz p0, :cond_6b

    .line 27
    invoke-static {p0}, Lcom/sec/internal/helper/os/SystemUtil;->checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 28
    sget-object p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->LOG_TAG:Ljava/lang/String;

    const-string p1, "UPSM mode skip package add"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_22
    const/16 p1, 0x10

    .line 29
    invoke-virtual {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 30
    sget-object p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->LOG_TAG:Ljava/lang/String;

    const-string p1, "EMERGENCY mode skip package add"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 34
    :cond_32
    sget-boolean v0, Lcom/sec/internal/helper/os/Debug;->ALLOW_DIAGNOSTICS:Z

    if-nez v0, :cond_3c

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isOtpAuthorized()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 35
    :cond_3c
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "package add"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mPackages:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    const-string v2, "com.hugeland.cdsplus"

    invoke-direct {v1, p1, v2}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    const-string v2, "com.sec.imslogger"

    const-string v3, "com.sec.imslogger.services.ImsDmService"

    invoke-direct {v1, p1, v2, v3}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mImsLogger:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/sec/internal/ims/core/imslogger/SttsSipChecker;

    const-string v2, "com.googlecode.android_scripting"

    const-string v3, "com.googlecode.android_scripting.facade.imslogger.ImsLoggerService"

    invoke-direct {v1, p1, v2, v3}, Lcom/sec/internal/ims/core/imslogger/SttsSipChecker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mSttsSipChecker:Lcom/sec/internal/ims/core/imslogger/SttsSipChecker;

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    :goto_6b
    return-void
.end method


# virtual methods
.method public checkPackageStatus(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .registers 3

    const-string v0, "com.sec.imslogger"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mImsLogger:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    if-eqz v0, :cond_11

    .line 54
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    move-result-object p0

    return-object p0

    :cond_11
    const-string v0, "com.googlecode.android_scripting"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mSttsSipChecker:Lcom/sec/internal/ims/core/imslogger/SttsSipChecker;

    if-eqz p0, :cond_22

    .line 56
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    move-result-object p0

    return-object p0

    .line 58
    :cond_22
    sget-object p0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object p0
.end method

.method public initializeDmEvent(Ljava/lang/String;)V
    .registers 3

    const-string v0, "com.sec.imslogger"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mImsLogger:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    if-eqz v0, :cond_10

    .line 63
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->initializeDmEvent()V

    goto :goto_1f

    :cond_10
    const-string v0, "com.googlecode.android_scripting"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mSttsSipChecker:Lcom/sec/internal/ims/core/imslogger/SttsSipChecker;

    if-eqz p0, :cond_1f

    .line 65
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->initializeDmEvent()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public send(Ljava/lang/Object;)Z
    .registers 3

    .line 46
    sget-object p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;

    .line 47
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;->send(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_16
    const/4 p0, 0x1

    return p0
.end method
