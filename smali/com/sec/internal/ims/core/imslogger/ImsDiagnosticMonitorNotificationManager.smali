.class public Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;
.super Landroid/os/Handler;
.source "ImsDiagnosticMonitorNotificationManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;
.implements Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;
.implements Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;


# static fields
.field private static final DATEFORMAT:Ljava/lang/String; = "MM.dd HH:mm:ss"

.field private static final DM_EVENT_READY:Ljava/lang/String; = "com.samsung.imslogger.action.DM_EVENT_READY"

.field private static final DM_PACKAGE:Ljava/lang/String; = "com.sec.imslogger"

.field private static final EVENT_CHECK_PACKAGE_STATUS:I = 0x3

.field private static final EVENT_VOPS_CHANGED:I = 0x1

.field public static final IMS_DEBUG_INFO_TIMESTAMP:Ljava/lang/String; = "Timestamp"

.field public static final IMS_DEBUG_INFO_TYPE:Ljava/lang/String; = "DebugInfoType"

.field public static final IMS_LOCAL_ADDRESS:Ljava/lang/String; = "LocalAddr"

.field public static final IMS_REMOTE_ADDRESS:Ljava/lang/String; = "RemoteAddr"

.field public static final IMS_SETTINGS_EVENT_CALL:I = 0x12

.field public static final IMS_SETTINGS_EVENT_DBR:I = 0xb

.field public static final IMS_SETTINGS_EVENT_REGI:I = 0x11

.field public static final IMS_SETTINGS_EVENT_SIP:I = 0x1

.field public static final IMS_SETTINGS_EVENT_VPOS:I = 0x5

.field public static final IMS_SIP_DIRECTION:Ljava/lang/String; = "Direction"

.field public static final IMS_SIP_MESSAGE:Ljava/lang/String; = "SipMsg"

.field public static final IMS_SIP_TYPE:Ljava/lang/String; = "SipType"

.field public static final IMS_VOLTE_VOPS_INDICATION:Ljava/lang/String; = "VoPSIndication"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsDiagMonitorNotiMgr"

.field private static final VOLTE_DEDICATED_BEARER_NOTIFY_EVENT:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mDmEventReadyReceiver:Landroid/content/BroadcastReceiver;

.field private mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

.field private mPackageCheckCount:I

.field private mPdnStateMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmExternalSupporter(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;)Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 85
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    .line 91
    new-instance p2, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;-><init>(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mDmEventReadyReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mContext:Landroid/content/Context;

    .line 87
    new-instance p2, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    .line 88
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mDmEventReadyReceiver:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.imslogger.action.DM_EVENT_READY"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    move-result-object p0

    return-object p0
.end method

.method private handleDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V
    .locals 3

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerState()I

    move-result v1

    const-string v2, "DedicatedBearerQosStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getQci()I

    move-result p1

    const-string v1, "DedicatedBearerQosQCI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0xb

    .line 225
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(ILandroid/content/Intent;)V

    return-void
.end method

.method private handleUpdateVoPSIndication(Z)V
    .locals 2

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "VoPSIndication"

    .line 211
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x5

    .line 213
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(ILandroid/content/Intent;)V

    return-void
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 200
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 201
    rem-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 203
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 204
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private send(ILandroid/content/Intent;)V
    .locals 2

    const-string v0, "DebugInfoType"

    .line 256
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "MM.dd HH:mm:ss"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Timestamp"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 123
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    .line 137
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v0, v1, :cond_1

    .line 138
    iget v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package was not installed, check again #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsDiagMonitorNotiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    .line 140
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.imslogger"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/os/PackageUtils;->isProcessRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 144
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->initializeDmEvent()V

    goto :goto_0

    .line 131
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->handleDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->handleUpdateVoPSIndication(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public handleRegistrationEvent(Lcom/sec/ims/ImsRegistration;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "regState"

    .line 232
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "profileName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "services"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    const-string p2, "cmcType"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x11

    .line 237
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p0, "ImsDiagMonitorNotiMgr"

    const-string p1, "regInfo is null"

    .line 239
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initSequentially()V
    .locals 4

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "APN_ALREADY_ACTIVE"

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "APN_REQUEST_STARTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "APN_TYPE_NOT_AVAILABLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "APN_REQUEST_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    const/4 v2, 0x4

    const-string v3, "APN_ALREADY_INACTIVE"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyCallStatus(ILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "sessionId"

    .line 247
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "callState"

    .line 248
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "callType"

    .line 249
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "audioCodec"

    .line 250
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x12

    .line 252
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(ILandroid/content/Intent;)V

    return-void
.end method

.method public onIndication(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 167
    new-instance v11, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, p2

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;-><init>(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onIndication(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 159
    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->onIndication(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/Object;)Z
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->send(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method
