.class public Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;
.super Landroid/os/Handler;
.source "VvmHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# instance fields
.field private TAG:Ljava/lang/String;

.field private iRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

.field private final mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

.field private final mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private final mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field private final mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mbIsSyncing:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    const-class p1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mbIsSyncing:Z

    .line 56
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 67
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    .line 69
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {p1, p2, p4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 70
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 71
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    return-void
.end method

.method private deleteGreeting(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 9

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteGreeting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getObjectList()Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 182
    iget-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->object:[Lcom/sec/internal/omanetapi/nms/data/Object;

    if-eqz v1, :cond_3

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 187
    :cond_1
    new-instance v4, Lcom/sec/internal/omanetapi/nms/data/BulkDelete;

    invoke-direct {v4}, Lcom/sec/internal/omanetapi/nms/data/BulkDelete;-><init>()V

    .line 188
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;-><init>()V

    iput-object v1, v4, Lcom/sec/internal/omanetapi/nms/data/BulkDelete;->objects:Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->object:[Lcom/sec/internal/omanetapi/nms/data/Object;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    .line 191
    new-instance v6, Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-direct {v6}, Lcom/sec/internal/omanetapi/nms/data/Reference;-><init>()V

    .line 192
    iget-object v5, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->resourceURL:Ljava/net/URL;

    iput-object v5, v6, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    .line 193
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, v4, Lcom/sec/internal/omanetapi/nms/data/BulkDelete;->objects:Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;

    .line 196
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/internal/omanetapi/nms/data/Reference;

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;->objectReference:[Lcom/sec/internal/omanetapi/nms/data/Reference;

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;

    .line 198
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v6

    .line 199
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/omanetapi/nms/data/BulkDelete;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 197
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_2

    .line 183
    :cond_3
    :goto_1
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPLOAD_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 184
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 185
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void
.end method

.method private deleteGreetingAndSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 8

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteGreetingAndSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->deleteGreeting(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 169
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v6

    .line 170
    iget-object v5, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v4

    .line 172
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 173
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    return-void
.end method

.method private gotoHandlerEvent(ILjava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 236
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 2

    if-nez p1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    const-string v1, "notifyBufferDB ParamOMAresponseforBufDB is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 404
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private sendNormalSyncRequest()V
    .locals 8

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    const-string v1, "sendNormalSyncRequest "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v4

    .line 470
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "line is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getInitialSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 474
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    const-string v0, "full sync is not complete yet mEventType is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 477
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    const-string v0, "full sync is not complete yet, do normal sync until initial sync is finished"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGbaSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNmsHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 485
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 487
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    const/4 v0, 0x1

    .line 488
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mbIsSyncing:Z

    goto :goto_0

    .line 490
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    const-string v0, "NMS host is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    const-string v0, "Gba not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setUpVvmDataUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 6

    .line 409
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUpVvmDataUpdate param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    if-nez v0, :cond_1

    goto :goto_0

    .line 415
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;-><init>()V

    .line 416
    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 430
    :pswitch_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 431
    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getVVMServiceProfileFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 435
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUpVvmDataUpdate :VvmTypeChange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 437
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v3, p0, v1, v0, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_0

    .line 439
    :cond_3
    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTOFF:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTON:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 441
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2TLANGUAGE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 446
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v2, p0, v0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_0

    .line 444
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v3, p0, v1, v0, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_0

    .line 418
    :pswitch_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getVVMServiceProfileFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 420
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v3, p0, v1, v0, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_0

    .line 424
    :pswitch_2
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEARCH_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 425
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 424
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 426
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 427
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private uploadGreeting(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 209
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getVVMGreetingObjectPairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getVVMGreetingTypeFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    move-result-object v2

    .line 212
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uploadGreeting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " greetingtype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    .line 214
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_1

    check-cast v2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 215
    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 216
    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 217
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;

    new-instance v3, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;

    invoke-direct {v3, v1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;-><init>(Landroid/util/Pair;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v2, p0, v3, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_0

    .line 220
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_ERROR:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    .line 221
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p1

    .line 220
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 222
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 225
    :cond_2
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->ONE_MESSAGE_UPLOADED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 226
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 227
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 228
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 229
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getSyncState()Z
    .locals 0

    .line 502
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mbIsSyncing:Z

    return p0
.end method

.method public getVvmQuota(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 249
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_GET_QUOTA_INFO:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 254
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 255
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 250
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    const-string p1, "Empty Buffer List"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 155
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_0

    .line 151
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 152
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendNormalSyncRequest()V

    goto/16 :goto_0

    .line 144
    :pswitch_2
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mbIsSyncing:Z

    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->normalSyncRequest()V

    goto/16 :goto_0

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendNormalSyncRequest()V

    goto/16 :goto_0

    .line 141
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_0

    .line 137
    :pswitch_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    goto/16 :goto_0

    .line 132
    :pswitch_5
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_NOTIFY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 133
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 122
    :pswitch_6
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->VVM_FAX_ERROR_WITH_NO_RETRY:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 123
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 125
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 126
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_NOTIFY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 118
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 119
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->uploadGreeting(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 111
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 112
    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 114
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->deleteGreetingAndSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 107
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 108
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->deleteGreeting(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 101
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 102
    iget-object v3, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 103
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    const-string v2, ""

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_0

    .line 97
    :pswitch_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/internal/omanetapi/nms/CloudMessageGetVVMQuotaInfo;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_0

    .line 93
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->setUpVvmDataUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 89
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->retryApi(Landroid/util/Pair;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Z

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public normalSyncRequest()V
    .locals 3

    .line 463
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_NORMAL_SYNC_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 328
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_ERROR:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 0

    .line 323
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_ERROR:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailedCall, SyncMsgType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    if-ne p3, v0, :cond_3

    .line 293
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    move-result-object p1

    invoke-virtual {p1, v0, p4}, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->searchAndPush(Landroid/util/Pair;I)Z

    move-result p1

    .line 296
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1, p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getTimerValue(I)J

    move-result-wide v1

    .line 297
    iget-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timer Value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", isRetryAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    .line 299
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_FALLBACK_TO_LAST_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 301
    :cond_1
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 302
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mbIsSyncing:Z

    .line 303
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 305
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 306
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->VVM_NORMAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 307
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 310
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 311
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 312
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_NORMAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, p2, Landroid/os/Message;->what:I

    .line 313
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->onFixedFlowWithMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 315
    :cond_2
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_ERROR:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0

    .line 286
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_ERROR:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 0

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onFixedFlow(I)V
    .locals 0

    .line 345
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 350
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFixedFlowWithMessage message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 0

    .line 340
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SELF_RETRY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 281
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public sendVvmUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    .line 243
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->EVENT_VVM_DATA_UPDATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 244
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0

    return-void
.end method

.method public setSyncState(Z)V
    .locals 0

    .line 498
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mbIsSyncing:Z

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public update(I)Z
    .locals 0

    .line 378
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public updateDelay(IJ)Z
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDelay: eventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

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

    .line 383
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
