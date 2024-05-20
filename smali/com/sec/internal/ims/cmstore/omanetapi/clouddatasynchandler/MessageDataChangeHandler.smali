.class public Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;
.super Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
.source "MessageDataChangeHandler.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 23
    const-class p1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;->TAG:Ljava/lang/String;

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;->TAG:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 6

    .line 34
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWorkingQueue: message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getSmsObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getObjectIdPartIdFromMmsBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getPayloadPartUrlFromMmsBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/util/List;

    move-result-object v1

    .line 42
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWorkingQueue payloadUrls size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 54
    invoke-static {p0, v1, p1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    move-result-object v1

    .line 53
    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 57
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getPayloadPartUrlFromMmsPartUsingPartBufferId(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 64
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p0, v0, p1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getObjectIdPartIdFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 70
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getPayloadPartandAllPayloadUrlFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v1

    .line 71
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 72
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 73
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 81
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "payloadpartUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " payloadUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " objId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 84
    invoke-static {p0, v2, p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    move-result-object p1

    .line 83
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 87
    invoke-static {p0, v1, p1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    move-result-object p1

    .line 86
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 89
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getSummaryObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 96
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMsgDownloadQueue size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
