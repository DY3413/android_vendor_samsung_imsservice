.class public abstract Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
.super Landroid/os/Handler;
.source "BaseSyncHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;
    }
.end annotation


# instance fields
.field private final NO_RETRY_AFTER_VALUE:I

.field private TAG:Ljava/lang/String;

.field protected final mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

.field protected mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

.field protected final mBulkUploadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

.field protected mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field protected final mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

.field protected mIsFTThumbnailDownload:Z

.field protected mIsFullSync:Z

.field protected mIsHandlerRunning:Z

.field protected mIsSearchFinished:Z

.field protected final mLine:Ljava/lang/String;

.field private mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

.field protected mSearchCursor:Ljava/lang/String;

.field protected mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field protected final mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field protected final mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

.field protected final mWorkingDownloadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWorkingDownloadSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mWorkingUploadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Z)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    const-class p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    .line 45
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    .line 47
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    .line 50
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    .line 52
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 63
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    const/4 p1, -0x1

    .line 67
    iput p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->NO_RETRY_AFTER_VALUE:I

    .line 68
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFTThumbnailDownload:Z

    .line 69
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    .line 83
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 86
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {p1, p2, p7}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 87
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 88
    iput-object p7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 89
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 90
    iput-boolean p8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    .line 91
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableFolderIdInSearch()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 92
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    goto :goto_0

    .line 94
    :cond_0
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 96
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p1, p5, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getSearchCursorByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 97
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p1, p5, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getInitialSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 98
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    :cond_2
    return-void
.end method

.method private checkIndividualResponseCodeUpload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 5

    .line 776
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string v1, "checkIndividualResponseCodeUpload: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 777
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 778
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 783
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 784
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v2, v2, v0

    .line 785
    iget-short v3, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->code:S

    const/16 v4, 0x193

    if-eq v3, v4, :cond_1

    const/16 v4, 0x1f7

    if-ne v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 787
    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    iget-short v2, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->code:S

    .line 788
    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->bulkOpTreatSuccessIndividualResponse(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 790
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    .line 797
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private fallbackOneMessageUplaod(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 766
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 767
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 771
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void

    .line 768
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string p1, "DBchange list is empty: do nothting "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private gotoHandlerEvent(ILjava/lang/Object;)V
    .locals 3

    if-eqz p2, :cond_3

    .line 426
    instance-of v0, p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    if-eqz v0, :cond_2

    .line 427
    move-object v0, p2

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 428
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldClearCursorUponInitSyncDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 431
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 433
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 434
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update cursor: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], and event type: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 439
    :cond_3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method private gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoHandlerEventOnFailure isRetryEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    const/4 v1, -0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    goto :goto_0

    .line 448
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->PAUSE_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 518
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 519
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    if-eqz p1, :cond_0

    .line 521
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;->onMoveOn()V

    const/4 p1, 0x0

    .line 522
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 2

    .line 142
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 143
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 146
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ADD_TO_WORKINGQUEUE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    iput p2, p1, Landroid/os/Message;->what:I

    .line 148
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 149
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 151
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ADD_TO_UPLOADWORKINGQUEUE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    iput p2, p1, Landroid/os/Message;->what:I

    .line 153
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendToWorkingQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->BULK_UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 134
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 135
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ADD_TO_QUEUE_BULKUPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, p2, Landroid/os/Message;->what:I

    .line 137
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected checkNextBulkUploadWorkingQueue()V
    .locals 3

    .line 708
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNextBulkUploadWorkingQueue: mBulkUploadQueue is empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->makeBulkUploadparameter()V

    .line 711
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->retryBulkUploadRequest()V

    goto :goto_0

    .line 713
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method protected checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 4

    .line 641
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNextMsgFromDownloadWorkingQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 643
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->peekDownloadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pollFromDownloadSet()V

    .line 647
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 648
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void

    .line 652
    :cond_0
    instance-of v1, v0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz v1, :cond_1

    .line 653
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->updateToken()Z

    .line 654
    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->replaceUrlPrefix()V

    .line 656
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 663
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_1

    .line 659
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pollFromDownloadSet()V

    .line 660
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 661
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_1

    .line 666
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 667
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_DOWNLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 668
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 669
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_1
    return-void
.end method

.method protected checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 4

    .line 675
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNextMsgFromUploadWorkingQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 677
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->peekUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 681
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void

    .line 685
    :cond_0
    instance-of v1, v0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz v1, :cond_1

    .line 686
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->updateToken()Z

    .line 687
    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->replaceUrlPrefix()V

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 695
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_1

    .line 692
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 693
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_1

    .line 699
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 700
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_DOWNLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 701
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 702
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 159
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 161
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->logWorkingStatus()V

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 168
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "empty queue: "

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 393
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_13

    .line 395
    check-cast p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    .line 396
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mApi:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 399
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mApi:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    instance-of v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;

    if-eqz v1, :cond_1

    .line 400
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_ONE_UPLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    goto :goto_0

    .line 401
    :cond_1
    instance-of v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    if-eqz v1, :cond_2

    .line 402
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    goto :goto_0

    .line 403
    :cond_2
    instance-of v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;

    if-eqz v0, :cond_4

    .line 405
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mBufDbParams:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    if-eqz v0, :cond_3

    .line 407
    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->FALLBACK_MESSAGES_UPLOADED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 408
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v0

    if-ne v1, v0, :cond_3

    .line 409
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->FALLBACK_ONE_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    goto :goto_0

    .line 411
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_BULK_UPLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    goto :goto_0

    .line 414
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_ONE_DOWNLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    .line 416
    :goto_0
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mBufDbParams:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 387
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_13

    .line 388
    check-cast p1, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 389
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    goto/16 :goto_1

    .line 378
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_5

    move v4, v5

    .line 379
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 380
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setBulkUploadQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 381
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz p1, :cond_13

    if-eqz v4, :cond_13

    .line 382
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    .line 383
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_1

    .line 369
    :pswitch_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_6

    move v4, v5

    .line 370
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 371
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 372
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz p1, :cond_13

    if-eqz v4, :cond_13

    .line 373
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 374
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_1

    .line 360
    :pswitch_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_7

    move v4, v5

    .line 361
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 362
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 363
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz p1, :cond_13

    if-eqz v4, :cond_13

    .line 364
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 365
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_1

    .line 357
    :pswitch_6
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onPauseCMNNetApiWithResumeDelay(I)V

    goto/16 :goto_1

    .line 351
    :pswitch_7
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    const-string v0, "pop_up"

    invoke-interface {p0, p1, v0, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 342
    :pswitch_8
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 343
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 345
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_8

    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_8

    .line 346
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 348
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p0, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    goto/16 :goto_1

    .line 336
    :pswitch_9
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz p1, :cond_13

    .line 337
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pause()V

    .line 338
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resume()V

    goto/16 :goto_1

    .line 328
    :pswitch_a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MESSAGE_DOWNLOAD_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 329
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 331
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 332
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p0

    .line 328
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 317
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_13

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 319
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOneMessageDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 320
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFTThumbnailDownload:Z

    if-nez p1, :cond_9

    .line 321
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pollFromDownloadSet()V

    .line 322
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 324
    :cond_9
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_1

    .line 309
    :pswitch_c
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 311
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_DOWNLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 313
    :cond_a
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_1

    .line 294
    :pswitch_d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MESSAGE_UPLOAD_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 296
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 298
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 294
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onMessageUploadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 300
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isBulkCreationEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    .line 301
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 302
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_BULK_UPLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    .line 303
    invoke-direct {p0, p1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void

    .line 306
    :cond_b
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 289
    :pswitch_e
    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    .line 290
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->fallbackOneMessageUplaod(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 291
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_1

    .line 283
    :pswitch_f
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOneMessageUploaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 284
    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    .line 285
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkIndividualResponseCodeUpload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 286
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    goto/16 :goto_1

    .line 278
    :pswitch_10
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOneMessageUploaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 279
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 280
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_1

    .line 270
    :pswitch_11
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 272
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 274
    :cond_c
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_1

    .line 264
    :pswitch_12
    iput-boolean v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 265
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onInitSyncSummaryCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 251
    :pswitch_13
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 253
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    .line 255
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 256
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 257
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 258
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 252
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onInitSyncCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 260
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ONE_LINE_INIT_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 231
    :pswitch_14
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 232
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 233
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 234
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 235
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldClearCursorUponInitSyncDone()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, ""

    .line 236
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 238
    :cond_d
    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 239
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CANCEL_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 241
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 242
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 243
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 244
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->SYNC_FAILED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 245
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    .line 248
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onSyncFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 227
    :pswitch_15
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    goto/16 :goto_1

    .line 203
    :pswitch_16
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-nez p1, :cond_13

    .line 204
    iput-boolean v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 205
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    if-eqz p1, :cond_11

    .line 206
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_e

    .line 207
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 208
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_1

    .line 209
    :cond_e
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 210
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_1

    .line 212
    :cond_f
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    if-eqz p1, :cond_10

    .line 213
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->retryBulkUploadRequest()V

    .line 214
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_1

    .line 215
    :cond_10
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_13

    .line 216
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    .line 217
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_1

    .line 220
    :cond_11
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v13, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 222
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_1

    .line 194
    :pswitch_17
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 195
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->PAUSE_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 196
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 197
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->SYNC_FAILED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 198
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    .line 200
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onSyncFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 188
    :pswitch_18
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v13, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 190
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 191
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto :goto_1

    .line 178
    :pswitch_19
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz v0, :cond_12

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onPartialSyncSummaryCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 181
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v13, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 183
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    .line 185
    :cond_12
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    goto :goto_1

    .line 170
    :pswitch_1a
    iput-boolean v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 171
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onInitialSyncStarted()V

    .line 172
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v13, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 174
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 175
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    :cond_13
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
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

    .line 748
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 749
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "logWorkingStatus: [mSyncMsgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsHandlerRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mEventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsSearchFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mWorkingDownloadQueue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    .line 754
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWorkingDownloadSet size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    .line 755
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWorkingUploadQueue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    .line 756
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBulkUploadQueue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    .line 757
    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 748
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract makeBulkUploadparameter()V
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 564
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 0

    .line 559
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailedCall code :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 0

    .line 569
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onFixedFlow(I)V
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFixedFlow event is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 594
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    .line 597
    :cond_0
    instance-of v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    if-nez v0, :cond_1

    .line 598
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string p1, "onFixedFlowWithMessage message not ParamOMAresponseforBufDB"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFixedFlowWithMessage message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 602
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 605
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldClearCursorUponInitSyncDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    goto :goto_0

    .line 608
    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 609
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 612
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 613
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 595
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string p1, "onFixedFlowWithMessage message is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 1

    .line 529
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 530
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 2

    .line 575
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 429, retry after isRetryEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 576
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 579
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p2, p0, p1, p3}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    goto :goto_0

    .line 581
    :cond_0
    new-instance p2, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 582
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 1

    .line 547
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 548
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 481
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_PAUSE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected abstract peekBulkUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.end method

.method protected abstract peekDownloadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.end method

.method protected abstract peekUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.end method

.method protected pollFromDownloadSet()V
    .locals 5

    .line 629
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    if-nez v0, :cond_0

    return-void

    .line 633
    :cond_0
    new-instance v1, Landroid/util/Pair;

    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 635
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public resetSearchParam()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getSearchCursorByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getInitialSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetSearchParam, cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resume()V
    .locals 1

    .line 486
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_RESUME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected retryBulkUploadRequest()V
    .locals 4

    .line 718
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->peekBulkUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    return-void

    .line 724
    :cond_0
    instance-of v1, v0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz v1, :cond_1

    .line 725
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->updateToken()Z

    .line 726
    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->replaceUrlPrefix()V

    .line 728
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryBulkUploadRequest url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 733
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_1

    .line 731
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    :goto_1
    return-void
.end method

.method protected abstract setBulkUploadQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
.end method

.method public setInitSyncComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldClearCursorUponInitSyncDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 124
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 127
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->logWorkingStatus()V

    return-void
.end method

.method public setIsFullSyncParam(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    return-void
.end method

.method protected abstract setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
.end method

.method protected setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 1

    .line 739
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    if-nez v0, :cond_0

    goto :goto_0

    .line 743
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public start()V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start(Ljava/lang/String;)V

    return-void
.end method

.method protected start(Ljava/lang/String;)V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mEventType: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    if-nez p1, :cond_0

    .line 460
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->START_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 464
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    .line 475
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->START_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 472
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ONE_LINE_INIT_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 466
    :cond_2
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_CONTINUE_SEARCH:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 490
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CANCEL_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public update(I)Z
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public updateDelay(IJ)Z
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " delayed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p0

    return p0
.end method

.method public updateDelayRetry(IJ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 0

    .line 513
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
