.class public Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;
.super Landroid/os/Handler;
.source "OMANetAPIHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.implements Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;
    }
.end annotation


# static fields
.field private static final EVENT_APP_DATA_SYNC:I = 0x6

.field private static final EVENT_DEVICE_DATA_UPDATE:I = 0x5

.field private static final EVENT_INITSYNC_DATA_DOWNLOAD:I = 0x7

.field private static final EVENT_INITSYNC_DATA_UPLOAD:I = 0x8

.field private static final EVENT_NORMALSYNC_DATA_DOWNLOAD:I = 0x9

.field private static final EVENT_PAUSE_CMN_NETAPI:I = 0x3

.field private static final EVENT_PAUSE_CMN_NETAPI_WITH_CONTROLPARAM:I = 0xb

.field private static final EVENT_RESETBOX_START_CMN_NETAPI:I = 0xa

.field private static final EVENT_RESUME_CMN_NETAPI:I = 0x2

.field private static final EVENT_RESUME_CMN_NETAPI_WITH_CONTROLPARAM:I = 0xc

.field private static final EVENT_START_CMN_NETAPI:I = 0x1

.field private static final EVENT_STOP_CMN_NETAPI:I = 0x4

.field private static final EVENT_STOP_INITSYNC_AS_COMPLETE:I = 0xd


# instance fields
.field public TAG:Ljava/lang/String;

.field private mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private final mContext:Landroid/content/Context;

.field private final mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

.field private mIsFallbackProvisionInProcess:Z

.field private mIsRunning:Z

.field private final mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

.field private mLooper:Landroid/os/Looper;

.field private mLowStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field private final mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

.field private final mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private muiCallBack:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsRunning(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresumeHandlers(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeHandlers(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/LineManager;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 7

    .line 81
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    .line 82
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    .line 84
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mContext:Landroid/content/Context;

    .line 85
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    .line 86
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->muiCallBack:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 87
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLooper:Landroid/os/Looper;

    .line 88
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelScheduler()V

    .line 89
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v0, p2

    move-object v1, p1

    move-object v3, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/LineManager;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 90
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    return-void
.end method

.method private isHandleAppendToWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Z
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isBulkCreationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 533
    invoke-virtual {p0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 534
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 2

    if-nez p1, :cond_0

    .line 614
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "notifyBufferDB ParamOMAresponseforBufDB is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 617
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOperationsComplete operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MESSAGE_DOWNLOAD_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 554
    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object p2, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    .line 552
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 555
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 556
    new-instance p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object p3, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    .line 557
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 558
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 559
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p2

    .line 556
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onInitSyncCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    if-eqz p1, :cond_1

    .line 561
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setInitSyncComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method private pauseAllSyncHandler()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 350
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 351
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pause()V

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 355
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 356
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 357
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->pause()V

    goto :goto_1

    .line 360
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 361
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object p0

    .line 362
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 363
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->pause()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private registerLowStorageReceiver()V
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "registerLowStorageReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLowStorageReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 853
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 855
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLowStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 861
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private resumeAllSyncHandler()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 310
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resume()V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 314
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 316
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->resume()V

    goto :goto_1

    .line 319
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 320
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object p0

    .line 321
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 322
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->resume()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private resumeAllSyncHandlerByLine(Ljava/lang/String;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 272
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resume()V

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 276
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 278
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->resume()V

    goto :goto_1

    .line 281
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 282
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 283
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 284
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->resume()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private resumeControllerOfLastFailedApi(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 1

    .line 239
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V

    .line 246
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->resume()V

    return-void
.end method

.method private resumeHandlers(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeHandlers mIsMsgAppForeground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isPollingAllowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 251
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsNetworkValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->resume()V

    .line 256
    :cond_0
    iget-boolean p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-eqz p1, :cond_1

    .line 257
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeAllSyncHandler()V

    :cond_1
    return-void
.end method

.method private resumeSingleHandler(Landroid/os/Handler;)V
    .locals 3

    .line 538
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeSingleHandler , isRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 539
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 540
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    .line 541
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldStopSendingAPIwhenNetworklost()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    if-eqz p0, :cond_1

    .line 542
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    .line 543
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_RESUME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->what:I

    .line 544
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private sendDeviceUpdateToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 7

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDeviceUpdateToHandlers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 372
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 373
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 374
    iget v3, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x11

    if-eq v3, v4, :cond_0

    const/16 v4, 0x12

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    :cond_2
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string v2, "sendDeviceUpdateToHandlers get handler : "

    const/4 v3, 0x0

    if-lez p1, :cond_3

    .line 390
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 391
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " type = msg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v5, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v5, p1, v6}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDeviceDataUpdateHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 395
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 396
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    .line 399
    :cond_3
    iget-object p1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 400
    iget-object p1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type = vvm"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v2, p1, v3}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDeviceDataUpdateHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 405
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 406
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    :cond_4
    return-void
.end method

.method private sendDownloadToDataChangeHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 5

    .line 412
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDownloadToDataChangeHandlers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 416
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 417
    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_1

    const/16 v3, 0x12

    if-eq v2, v3, :cond_0

    .line 443
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v3, v1, v4}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 446
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v3, v1, v4}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 439
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    .line 429
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v3, v1, v4}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 432
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    .line 422
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v3, v1, v4}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 425
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    :cond_3
    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 451
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private sendDownloadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    .line 456
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendToHandlerInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void
.end method

.method private sendToHandlerInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 10

    .line 460
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendToHandlerInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 465
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 466
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 468
    iget v4, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-eqz v4, :cond_8

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_4

    const/16 v5, 0x11

    if-eq v4, v5, :cond_2

    const/16 v5, 0x12

    if-eq v4, v5, :cond_0

    .line 518
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v5, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v5, v3, v6}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v3

    .line 520
    invoke-virtual {v3, v2, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    :goto_2
    move-object v2, v3

    goto :goto_1

    .line 502
    :cond_0
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 503
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v8, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    invoke-direct {v8, v3, v4}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 504
    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v3

    .line 506
    iget-wide v8, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_1

    .line 507
    invoke-direct {p0, v3, p2, v2, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {v3, v2, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_2

    .line 492
    :cond_2
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 493
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v8, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    invoke-direct {v8, v3, v4}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v3

    .line 494
    iget-wide v8, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_3

    .line 495
    invoke-direct {p0, v3, p2, v2, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    goto :goto_0

    .line 498
    :cond_3
    invoke-virtual {v3, v2, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_2

    .line 473
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableFolderIdInSearch()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 474
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    goto :goto_3

    .line 476
    :cond_5
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 478
    :goto_3
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v8, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v8, v3, v9}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v3

    .line 479
    iget-wide v8, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_6

    .line 480
    invoke-direct {p0, v3, p2, v2, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    goto/16 :goto_0

    .line 483
    :cond_6
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isBulkCreationEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 484
    invoke-virtual {v4, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 485
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 487
    :cond_7
    invoke-virtual {v3, v2, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_2

    .line 515
    :cond_8
    invoke-direct {p0, v1, p2, v2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    return-void

    .line 524
    :cond_9
    invoke-direct {p0, v2, p2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->isHandleAppendToWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 525
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->BULK_UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v2, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 527
    :cond_a
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private sendUploadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    .line 567
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendToHandlerInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void
.end method

.method private startAllSyncHandler()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 291
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start()V

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 295
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 296
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 297
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->start()V

    goto :goto_1

    .line 300
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 301
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object p0

    .line 302
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 303
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->start()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private stopAllSyncHandler()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 329
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->stop()V

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->clearAllSyncHandlerInstances()V

    .line 333
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 334
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 336
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->stop()V

    goto :goto_1

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->clearAllDataChangeHandlerInstances()V

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 341
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 343
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->stop()V

    goto :goto_2

    .line 345
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->clearAllDeviceDataUpdateHandlerInstances()V

    return-void
.end method

.method private stopInitSyncAsComplete()V
    .locals 4

    .line 873
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    .line 874
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 875
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 876
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 877
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v1

    .line 874
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onInitSyncCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 879
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setInitSyncComplete()V

    :cond_0
    return-void
.end method

.method private unregisterLowStorageReceiver()V
    .locals 2

    .line 866
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLowStorageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 867
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 868
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLowStorageReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public deleteNotificationSubscriptionResource()V
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_NOTIFICATION_SUBSCRIPTION_RESOURCE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    :cond_0
    return-void
.end method

.method public handleLargeDataPolling()V
    .locals 4

    .line 843
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelURL()Ljava/lang/String;

    move-result-object v0

    .line 844
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLargeDataPolling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 846
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 845
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 847
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 104
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->logWorkingStatus()V

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 230
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stopInitSyncAsComplete()V

    goto/16 :goto_1

    .line 167
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    .line 168
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 169
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 171
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 173
    instance-of v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-boolean v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-eqz v1, :cond_b

    .line 180
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeControllerOfLastFailedApi(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    goto/16 :goto_1

    .line 174
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    if-eqz v1, :cond_b

    .line 176
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeControllerOfLastFailedApi(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    goto/16 :goto_1

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "no failed API before, resume all handlers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeHandlers(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    goto/16 :goto_1

    .line 147
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    if-nez v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "Pause polling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->pause()V

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isTokenRequestedFromProvision()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 154
    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsProvisionSuccess:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsUserDeleteAccount:Z

    if-nez v0, :cond_4

    iget-boolean p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsServicePaused:Z

    if-nez p1, :cond_4

    .line 156
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string p1, "Should only disable polling"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 158
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseAllSyncHandler()V

    goto/16 :goto_1

    .line 161
    :cond_5
    iget-boolean p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-nez p1, :cond_b

    .line 162
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseAllSyncHandler()V

    goto/16 :goto_1

    .line 196
    :pswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 197
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->start()V

    .line 199
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 200
    new-instance p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendAppSyncResetBox(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    goto/16 :goto_1

    .line 222
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    if-eqz p1, :cond_b

    .line 224
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendDownloadToDataChangeHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_1

    .line 216
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    if-eqz p1, :cond_b

    .line 218
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendUploadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_1

    .line 210
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    if-eqz p1, :cond_b

    .line 212
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendDownloadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_1

    .line 204
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    if-eqz p1, :cond_b

    .line 206
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendDeviceUpdateToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_1

    .line 189
    :pswitch_9
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 190
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 191
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->stop()V

    .line 193
    :cond_7
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stopAllSyncHandler()V

    goto/16 :goto_1

    .line 140
    :pswitch_a
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 141
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 142
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->pause()V

    .line 144
    :cond_8
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseAllSyncHandler()V

    goto :goto_1

    .line 130
    :pswitch_b
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    if-nez p1, :cond_b

    .line 131
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v0, "Resume all handlers"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 133
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 134
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->resume()V

    .line 136
    :cond_9
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeAllSyncHandler()V

    goto :goto_1

    .line 110
    :pswitch_c
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 111
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 112
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)V

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V

    .line 123
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->start()V

    .line 125
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 126
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->startAllSyncHandler()V

    :cond_b
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected logWorkingStatus()V
    .locals 3

    .line 816
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logWorkingStatus: [mIsRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFallbackProvisionInProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCloudObjectNotificationUpdated(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 725
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onCloudSyncStopped(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 689
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onDeviceFlagUpdateCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 750
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onDeviceFlagUpdateSchedulerStarted()V
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onDeviceFlagUpdateSchedulerStarted()V

    return-void
.end method

.method public onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 3

    .line 796
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check fallback to provision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    if-eqz v2, :cond_0

    const-string v2, "provision is in process, wait until next resume"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onPauseCMNNetApi()V

    .line 798
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 799
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    .line 800
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2, p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->onOmaApiCredentialFailed(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    :cond_1
    return-void
.end method

.method public onInitSyncCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitSyncCompleted getUserTbs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTbs()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTbs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onInitialDBSyncCompleted()V

    .line 675
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 677
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldStopInitSyncUponLowMemory()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 678
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->unregisterLowStorageReceiver()V

    :cond_1
    return-void
.end method

.method public onInitSyncSummaryCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 684
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onInitialSyncStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 657
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldStopInitSyncUponLowMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->registerLowStorageReceiver()V

    :cond_0
    return-void
.end method

.method public onLineSITRefreshed(Ljava/lang/String;)V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLineSITRefreshed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeAllSyncHandlerByLine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 705
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onMessageUploadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 710
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onNormalSyncComplete(Z)V
    .locals 0

    .line 891
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onVVMNormalSyncComplete(Z)V

    return-void
.end method

.method public onNotificationObjectDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 735
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V
    .locals 0

    .line 740
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onOmaProvisionFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    return-void
.end method

.method public onOmaFailExceedMaxCount()V
    .locals 0

    .line 812
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onOmaFailExceedMaxCount()V

    return-void
.end method

.method public onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 807
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onOneDeviceFlagUpdated(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 745
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onOneMessageDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 715
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onOneMessageUploaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 720
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onPartialSyncSummaryCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 730
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onPauseCMNNetApi()V
    .locals 1

    const/4 v0, 0x3

    .line 782
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPauseCMNNetApiWithResumeDelay(I)V
    .locals 5

    .line 787
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause all net API, resume all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seconds later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 788
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x3

    .line 789
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 790
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSyncFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 1

    .line 694
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 697
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldStopInitSyncUponLowMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CANCEL_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    if-ne p1, v0, :cond_0

    .line 699
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->unregisterLowStorageReceiver()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public pausewithStatusParam(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pausewithStatusParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    .line 634
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 635
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 636
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 76
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public removeUpdateSubscriptionChannelEvent()V
    .locals 1

    .line 839
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->REMOVE_UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    return-void
.end method

.method public resetChannelScheduler()V
    .locals 4

    .line 95
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->muiCallBack:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->muiCallBack:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    :goto_0
    return-void
.end method

.method public resetChannelState()V
    .locals 1

    .line 886
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public resumewithStatusParam(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumewithStatusParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    .line 641
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 642
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 643
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)V
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object p0

    .line 572
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setIsFullSyncParam(Z)V

    .line 573
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start()V

    return-void
.end method

.method public sendAppSyncResetBox(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V
    .locals 0

    .line 577
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object p0

    .line 578
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resetSearchParam()V

    .line 579
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start()V

    return-void
.end method

.method public sendInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    const/4 v0, 0x7

    .line 594
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 595
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 596
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    const/16 v0, 0x9

    .line 600
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 601
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 602
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    const/4 v0, 0x5

    .line 588
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 589
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 590
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    const/16 v0, 0x8

    .line 606
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 607
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 608
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 622
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public start_resetBox()V
    .locals 1

    const/16 v0, 0xa

    .line 626
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x4

    .line 651
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object p0

    .line 584
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->stop()V

    return-void
.end method

.method public update(I)Z
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public updateDelay(IJ)Z
    .locals 0

    .line 760
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p0

    return p0
.end method

.method public updateDelayRetry(IJ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateDelayedSubscriptionChannel()V
    .locals 3

    .line 831
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL_DELAY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    const-wide/32 v1, 0xea60

    invoke-interface {p0, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    return-void
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateSubscriptionChannel()V
    .locals 3

    .line 835
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    const-wide/32 v1, 0xea60

    invoke-interface {p0, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    return-void
.end method
