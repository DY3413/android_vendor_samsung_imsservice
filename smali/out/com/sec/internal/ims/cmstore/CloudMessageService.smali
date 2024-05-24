.class public Lcom/sec/internal/ims/cmstore/CloudMessageService;
.super Landroid/app/Service;
.source "CloudMessageService.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/IImsFramework;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mClients:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/cmstore/MessageStoreClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

.field private mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

.field private mImsFramework:Lcom/sec/internal/ims/ImsFramework;

.field private mInitSyncShow:I

.field private serviceHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 86
    const-class v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsFramework:Lcom/sec/internal/ims/ImsFramework;

    .line 91
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 92
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enableGba()V
    .registers 6

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->serviceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->createInstance(Landroid/os/Looper;Landroid/content/Context;)V

    .line 166
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    new-instance v1, Lcom/sec/internal/ims/cmstore/CloudMessageService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/CloudMessageService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 172
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->initInstances()V

    const/4 v0, 0x0

    .line 174
    invoke-static {v0}, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->getInstance(I)Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->setContext(Landroid/content/Context;)V

    .line 175
    new-instance v1, Lcom/sec/internal/ims/gba/GbaServiceModule;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->serviceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsFramework:Lcom/sec/internal/ims/ImsFramework;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/ims/gba/GbaServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    .line 176
    invoke-static {v0}, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->getInstance(I)Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->setGbaServiceModule(Lcom/sec/internal/ims/gba/GbaServiceModule;)V

    .line 177
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "enableGbaModule done"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .registers 2

    if-ltz p0, :cond_18

    .line 96
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lt p0, v0, :cond_b

    goto :goto_18

    .line 99
    :cond_b
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0

    .line 97
    :cond_18
    :goto_18
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method private registerGCMIntentReceiver(Landroid/content/Context;)V
    .registers 4

    .line 535
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.nsds.action.RECEIVED_GCM_EVENT_NOTIFICATION"

    .line 536
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    new-instance v0, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, "Dump of CloudMessageService"

    .line 514
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpController;->queue_sim:Ljava/util/List;

    const/4 p3, 0x0

    .line 517
    :goto_8
    :try_start_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_3e

    .line 518
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/helper/CircularQueue;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/helper/CircularQueue;->size()I

    move-result v0

    if-eqz v0, :cond_37

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sim "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_37} :catch_3a

    :cond_37
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :catch_3a
    move-exception p1

    .line 524
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 526
    :cond_3e
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/sec/internal/log/IMSLog;->prepareDump(Landroid/content/Context;Ljava/io/PrintWriter;)V

    .line 527
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_79

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 528
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Client ID "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->dump(I)V

    goto :goto_4d

    .line 531
    :cond_79
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->postDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableRcsByPhoneId(ZI)V
    .registers 3

    .line 0
    return-void
.end method

.method public getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAMBSPhaseVersion(I)I
    .registers 9

    .line 483
    sget-object v0, Lcom/sec/ims/settings/ImsSettings;->GLOBAL_CONTENT_URI:Landroid/net/Uri;

    .line 484
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 p1, 0x3

    .line 485
    :try_start_21
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    const-string/jumbo p0, "rcs_phase_version"

    const/4 v6, 0x0

    aput-object p0, v2, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_41

    if-eqz p0, :cond_40

    .line 498
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_40} :catch_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_40} :catch_6c

    :cond_40
    return p1

    .line 489
    :cond_41
    :try_start_41
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_62

    if-nez v0, :cond_4b

    .line 498
    :try_start_47
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_47 .. :try_end_4a} :catch_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_4a} :catch_6c

    return p1

    .line 493
    :cond_4b
    :try_start_4b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "RCS_ATT_PHASE2"

    .line 494
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_62

    if-eqz v0, :cond_5e

    const/4 p1, 0x4

    .line 498
    :cond_5e
    :try_start_5e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5e .. :try_end_61} :catch_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_61} :catch_6c

    goto :goto_87

    :catchall_62
    move-exception v0

    .line 485
    :try_start_63
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_6b

    :catchall_67
    move-exception p0

    :try_start_68
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6b
    throw v0
    :try_end_6c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_68 .. :try_end_6c} :catch_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_68 .. :try_end_6c} :catch_6c

    :catch_6c
    move-exception p0

    .line 499
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!Could not get RCS_PHASE_VERSION from db "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_87
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get RCS_PHASE_VERSION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public getAllServiceModules()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .registers 3

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .registers 4

    .line 377
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getBooleanGlobalSettings(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCallCount(I)[I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .registers 3

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 462
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
    .registers 1

    .line 300
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    return-object p0
.end method

.method public getInt(ILjava/lang/String;I)I
    .registers 4

    .line 372
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getIntGlobalSettings(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNetworkType(I)I
    .registers 2

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRawSipSender()Lcom/sec/internal/interfaces/ims/core/IRawSipSender;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRcsProfileType(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 541
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsFramework:Lcom/sec/internal/ims/ImsFramework;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->getInstance(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    return-object p0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 382
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getStringGlobalSettings(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 472
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.imsservice.sip.signalling.READ_PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isCrossSimCallingSupportedByPhoneId(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isDefaultDmValue(Ljava/lang/String;I)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isRcsEnabledByPhoneId(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isServiceAvailable(Ljava/lang/String;II)Z
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyImsReady(ZI)V
    .registers 3

    .line 0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 7

    const-string/jumbo v0, "sim_slot"

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 105
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 106
    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBind() simSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_35

    :cond_33
    const-string p1, "null"

    :goto_35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {v2, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    sget-object p1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_4e

    const-string p0, "do not bind for DEFAULT mno"

    .line 109
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 111
    :cond_4e
    sget-object p1, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d8

    .line 112
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 113
    new-instance p1, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v0, v1, p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;-><init>(ILandroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageService;)V

    .line 114
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsFramework:Lcom/sec/internal/ims/ImsFramework;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-virtual {p1, v1, p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->onCreate(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V

    .line 115
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d8

    .line 116
    :cond_7c
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOnlyOmcCode()Z

    move-result p1

    if-nez p1, :cond_d2

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result p1

    if-eqz p1, :cond_89

    goto :goto_d2

    .line 120
    :cond_89
    sget-object p1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 121
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getAMBSPhaseVersion(I)I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setAmbsPhaseVersion(I)V

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Carrier: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " phase:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ambsPhaseVersion:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_b6
    new-instance p1, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsFramework:Lcom/sec/internal/ims/ImsFramework;

    invoke-direct {p1, v0, v1, p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;-><init>(ILandroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageService;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 125
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsFramework:Lcom/sec/internal/ims/ImsFramework;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-virtual {p1, v1, p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->onCreate(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V

    .line 126
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d8

    :cond_d2
    :goto_d2
    const-string p0, "MCS not enabled for this KOR model"

    .line 117
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 129
    :cond_d8
    :goto_d8
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getBinder()Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .registers 5

    .line 134
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 135
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 136
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getAMBSPhaseVersion(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setAmbsPhaseVersion(I)V

    .line 137
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    .line 138
    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->serviceHandlerThread:Landroid/os/HandlerThread;

    .line 139
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->serviceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->createInstance(Landroid/os/Looper;Landroid/content/Context;)V

    .line 141
    new-instance v0, Lcom/sec/internal/ims/ImsFramework;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/ImsFramework;-><init>(Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsFramework:Lcom/sec/internal/ims/ImsFramework;

    .line 142
    new-instance v0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->serviceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 143
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->enableGba()V

    :goto_48
    const/4 v0, 0x2

    if-ge v1, v0, :cond_6d

    .line 145
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v0, v2, v3, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->initialise(Landroid/content/Context;Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 157
    :cond_6d
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->registerGCMIntentReceiver(Landroid/content/Context;)V

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.cloudmessage.RESTART"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, v0, v1}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 507
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    .line 184
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartCommand(): Received start id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;
    .registers 4

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public sendDeregister(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public setDefaultDmValue(Ljava/lang/String;I)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setIsimLoaded()V
    .registers 1

    .line 0
    return-void
.end method

.method public setRttMode(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public showInitsyncIndicator(ZI)V
    .registers 14

    .line 545
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showInitsyncIndicator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_2b

    const-string p0, "notifyManager is null"

    .line 557
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 560
    :cond_2b
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "ambs_channel_ni"

    const/4 v4, 0x2

    const-string v5, "ambs_channel"

    invoke-direct {v2, v5, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x0

    .line 562
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 563
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 564
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v4, "stat_notify_ambs_sync_sim1"

    const-string/jumbo v5, "stat_notify_ambs_sync_esim"

    const-string v6, "Messages syncing..."

    const-string v7, "Messages Backup & Sync"

    const/4 v8, 0x3

    const-string v9, "drawable"

    const/4 v10, 0x1

    if-eqz p1, :cond_b2

    const-string p1, "init sync will be displayed"

    .line 568
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 570
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 571
    invoke-virtual {p1, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 572
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    add-int/2addr p2, v10

    .line 575
    iget p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    or-int/2addr p1, p2

    if-ne p1, v8, :cond_82

    const-string/jumbo p1, "slot1&2 sync at same time."

    .line 576
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "stat_notify_ambs_sync_both_sims"

    .line 577
    invoke-virtual {p0, v9, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 578
    iput v8, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    goto :goto_aa

    .line 580
    :cond_82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show indicator for slot "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v10, :cond_a1

    .line 583
    invoke-virtual {p0, v9, v4}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_a8

    .line 585
    :cond_a1
    invoke-virtual {p0, v9, v5}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 587
    :goto_a8
    iput p2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    .line 589
    :goto_aa
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v1, v10, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_100

    :cond_b2
    add-int/2addr p2, v10

    .line 592
    iget p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    and-int/2addr p1, p2

    if-nez p1, :cond_cd

    .line 593
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "already cancelled indicator for slot "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 597
    :cond_cd
    invoke-virtual {v1, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 599
    iget p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    if-ne p1, v8, :cond_fb

    .line 600
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 601
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 602
    invoke-virtual {p1, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 603
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    if-ne p2, v10, :cond_ed

    .line 605
    invoke-virtual {p0, v9, v5}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_f4

    .line 607
    :cond_ed
    invoke-virtual {p0, v9, v4}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 609
    :goto_f4
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v1, v10, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 611
    :cond_fb
    iget p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    xor-int/2addr p1, p2

    iput p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    :goto_100
    return-void
.end method

.method public startAutoConfig(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public suspendRegister(ZI)V
    .registers 3

    .line 0
    return-void
.end method

.method public triggerAutoConfigurationForApp(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .registers 2

    .line 0
    return-void
.end method
