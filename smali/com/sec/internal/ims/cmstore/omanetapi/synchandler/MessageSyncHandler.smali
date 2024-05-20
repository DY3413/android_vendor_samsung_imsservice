.class public Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;
.super Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
.source "MessageSyncHandler.java"


# static fields
.field public static final MAX_PAYLOAD_SIZE:I = 0x6400000


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Z)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p8}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Z)V

    .line 33
    const-class p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private getPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPairFromCursor param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 155
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getSmsObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 157
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getMmsObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 159
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getRCSObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 161
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getImdnObjectPair(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private setDownloadQueueInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 4

    .line 188
    new-instance v0, Landroid/util/Pair;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDownloadQueueInternal : Already downloading dbId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rowId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWorkingQueue :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Setsize:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    .line 197
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 196
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setUploadQueueInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUploadQueueInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " size : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected makeBulkUploadBody(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeBulkUploadBody: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 173
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->getPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 176
    iget p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    if-eq p1, v1, :cond_3

    .line 179
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p1, :cond_3

    :cond_2
    return-object v0

    :cond_3
    return-object p0
.end method

.method protected makeBulkUploadparameter()V
    .locals 17

    move-object/from16 v0, p0

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v3

    .line 223
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMaxBulkDeleteEntry()I

    move-result v4

    .line 224
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxEntryBulkUpload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " listsize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    .line 225
    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 224
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    const/16 v4, 0x64

    .line 231
    :cond_0
    new-instance v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v5}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    const/4 v6, 0x0

    .line 232
    :cond_1
    :goto_0
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 233
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    if-nez v7, :cond_2

    .line 235
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->makeBulkUploadBody(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v8

    if-nez v8, :cond_3

    .line 242
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 246
    :cond_3
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/sec/internal/omanetapi/nms/data/Object;

    .line 247
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    if-eqz v9, :cond_6

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    int-to-long v11, v6

    .line 254
    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBodySize()J

    move-result-wide v13

    add-long/2addr v13, v11

    const-wide/32 v15, 0x6400000

    cmp-long v6, v13, v15

    if-lez v6, :cond_5

    goto :goto_2

    .line 257
    :cond_5
    invoke-virtual {v10}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBodySize()J

    move-result-wide v9

    add-long/2addr v11, v9

    long-to-int v6, v11

    .line 258
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "postBodySize is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v9, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v7, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v7, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 263
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v4, :cond_1

    goto :goto_2

    .line 250
    :cond_6
    :goto_1
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 268
    :cond_7
    :goto_2
    iget-object v4, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 269
    new-instance v4, Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    invoke-direct {v4}, Lcom/sec/internal/omanetapi/nms/data/ObjectList;-><init>()V

    .line 270
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sec/internal/omanetapi/nms/data/Object;

    iput-object v6, v4, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->object:[Lcom/sec/internal/omanetapi/nms/data/Object;

    .line 271
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 274
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    invoke-direct {v2, v6, v5, v3}, Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;-><init>(Landroid/util/Pair;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    .line 275
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bulk upload count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V
    .locals 0

    return-void
.end method

.method protected peekBulkUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 283
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    return-object v0
.end method

.method protected peekDownloadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 8

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 57
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "peekDownloadQueue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 61
    :cond_0
    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 62
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 63
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getObjectIdPartIdFromMmsBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 65
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getPayloadPartUrlFromMmsBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/util/List;

    move-result-object v3

    .line 66
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 68
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "peekDownloadQueue PDU Payload Part partUrl: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 76
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    const-string v3, "peekDownloadQueue PDU Object"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    return-object v1

    :cond_2
    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 80
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getPayloadPartUrlFromMmsPartUsingPartBufferId(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peekDownloadQueue part: payloadUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 84
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p0, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 87
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 88
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getObjectIdPartIdFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v2

    .line 90
    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFTThumbnailDownload:Z

    if-eqz v4, :cond_4

    .line 91
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 92
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getPayloadPartandAllPayloadUrlFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    .line 93
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFTThumbnailDownload:Z

    goto :goto_1

    .line 95
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getAllPayloadUrlFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v4

    .line 97
    iget-boolean v5, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsFTThumbnail:Z

    if-eqz v5, :cond_5

    .line 98
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFTThumbnailDownload:Z

    .line 100
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "param.mPayloadThumbnailUrl : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mPayloadThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mIsFTThumbnailDownload = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFTThumbnailDownload:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 103
    :goto_1
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 104
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 105
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 106
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "payloadpartUrl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " payloadUrl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " objId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFTThumbnailDownload:Z

    if-eqz v5, :cond_6

    .line 108
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mPayloadThumbnailUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p0, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    move-result-object p0

    return-object p0

    .line 109
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 110
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p0, v4, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    move-result-object p0

    return-object p0

    .line 111
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 112
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p0, v3, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    move-result-object p0

    return-object p0

    .line 113
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 114
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    return-object v1

    :cond_9
    const/16 v3, 0x11

    if-ne v2, v3, :cond_a

    .line 117
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 118
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getVVMpayLoadUrlFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p0, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v1
.end method

.method protected peekUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 128
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "peekUploadQueue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 133
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->getPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 136
    iget v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v5, :cond_1

    return-object v1

    :cond_1
    if-eq v3, v4, :cond_3

    .line 139
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_3

    :cond_2
    return-object v1

    .line 144
    :cond_3
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;-><init>(Landroid/util/Pair;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 145
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    return-object v0

    :cond_4
    return-object v1
.end method

.method protected setBulkUploadQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBulkUploadQueue param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
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

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->setDownloadQueueInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_0

    .line 49
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 50
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->setUploadQueueInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    :cond_1
    :goto_0
    return-void
.end method
