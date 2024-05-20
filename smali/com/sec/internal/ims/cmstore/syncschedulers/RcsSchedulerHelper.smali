.class public Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.source "RcsSchedulerHelper.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected final mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

.field protected final mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

.field protected final mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

.field private final mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;Landroid/os/Looper;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p8

    move-object v6, p3

    .line 73
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V

    .line 61
    const-class p2, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "["

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    .line 76
    new-instance p2, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-direct {p2, p1, p5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 p2, 0x1

    .line 77
    iput p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    .line 78
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    .line 79
    iput-object p7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    .line 80
    new-instance p2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    return-void
.end method

.method private getPayloadCV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/content/ContentValues;)V
    .locals 0

    const-string p0, "file_name"

    .line 294
    invoke-virtual {p6, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "file_size"

    invoke-virtual {p6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 296
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "bytes_transf"

    invoke-virtual {p6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "file_path"

    .line 297
    invoke-virtual {p6, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 299
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "syncdirection"

    .line 298
    invoke-virtual {p6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 301
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "syncaction"

    .line 300
    invoke-virtual {p6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private onNewPartcptsInserted(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 464
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertToRCSParticipantsBufferDB(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 463
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    .line 467
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private onNewSessionInserted(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->querySessionUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 486
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertSingleSessionToRcsBuffer(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 485
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    .line 489
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private setInlineTextCV(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1

    .line 283
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 284
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "syncdirection"

    .line 283
    invoke-virtual {p2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 286
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "syncaction"

    .line 285
    invoke-virtual {p2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p0, 0x0

    .line 287
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "is_filetransfer"

    invoke-virtual {p2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "content_type"

    const-string/jumbo v0, "text/plain"

    .line 288
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "body"

    .line 289
    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addRcsDownloadListForUri(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;JLjava/lang/String;Z)V
    .locals 8

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 175
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 176
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRcsDownloadListForUri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p3, "_bufferdbid"

    .line 179
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    .line 178
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string p3, "content_type"

    .line 180
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 181
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    const-string v0, "botmessage"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 182
    iget-object p3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v1, 0x6

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v0, v7

    move v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 174
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 188
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public cleanAllBufferDB()V
    .locals 0

    .line 624
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->cleanAllBufferDB()V

    return-void
.end method

.method public deleteRCSBufferDBwithResUrl(Ljava/lang/String;)I
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteRCSBufferDBwithResUrl(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public insertAllSessionToRCSSessionBufferDB(Landroid/database/Cursor;)V
    .locals 0

    .line 620
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertAllToRCSSessionBufferDB(Landroid/database/Cursor;)V

    return-void
.end method

.method public notifyMsgAppDeleteFail(IJLjava/lang/String;)V
    .locals 3

    .line 653
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMsgAppDeleteFail, dbIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bufferDbId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 653
    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    .line 656
    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 657
    new-instance p4, Lcom/google/gson/JsonObject;

    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 658
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "id"

    invoke-virtual {p4, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1, p4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 660
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 661
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageApp"

    const-string p3, "CHAT"

    .line 660
    invoke-interface {p0, p2, p3, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyMsgAppFetchBuffer(Landroid/content/ContentValues;I)V
    .locals 3

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    const-string p2, "chat_id"

    .line 540
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 541
    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 542
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "chatId"

    .line 544
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 547
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMsgAppFetchBuffer, chatId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", jsonArrayRowIdsSession: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 549
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 550
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageApp"

    const-string v0, "SESSION"

    .line 549
    invoke-interface {p0, p2, v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    .locals 7

    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 494
    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 495
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    :cond_0
    const-string v2, "_bufferdbid"

    .line 497
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "file_path"

    .line 498
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "thumbnail_path"

    .line 500
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 499
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    if-eqz v3, :cond_1

    .line 501
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v0, :cond_2

    :cond_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 502
    :cond_2
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 503
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 506
    :cond_3
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 507
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 512
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonArrayRowIdsCHAT.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",notify message app: CHAT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", jsonArrayRowIdsFT.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "notify message app: FT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 512
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    iget v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mMaxNumMsgsNotifyAppInIntent:I

    const-string v4, "CHAT"

    const-string v5, "MessageApp"

    if-ne v2, v3, :cond_4

    .line 517
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 518
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p2

    .line 517
    invoke-interface {v2, v5, v4, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 521
    :cond_4
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    iget v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mMaxNumMsgsNotifyAppInIntent:I

    const-string v6, "FT"

    if-ne v2, v3, :cond_5

    .line 522
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 523
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-interface {v2, v5, v6, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 526
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 528
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 529
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p2

    .line 528
    invoke-interface {p1, v5, v4, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_6
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 532
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 533
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 532
    invoke-interface {p0, v5, v6, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 2

    .line 646
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;I)V

    return-void
.end method

.method protected onDownloadRequestFromApp(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "syncdirection"

    const-string/jumbo v3, "syncaction"

    .line 397
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDownloadRequestFromApp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget v4, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 399
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    .line 400
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    .line 399
    invoke-virtual {v4, v6, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 401
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "is_filetransfer"

    .line 402
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "file_path"

    .line 403
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "bytes_transf"

    .line 404
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "_bufferdbid"

    .line 405
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 407
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v9}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportAtt72HoursRule()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v6, :cond_1

    .line 408
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    if-lez v8, :cond_1

    .line 409
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file already downloaded, should not have received another download, notify message app directly: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget v2, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getAppTypeString(I)Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    .line 411
    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-virtual {v0, v2, v1, v12, v13}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    .line 417
    :cond_1
    :try_start_1
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 416
    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v5

    .line 419
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 418
    invoke-static {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v6

    .line 421
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v7, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 422
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 423
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v1, "duplicate download request!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    .line 426
    :cond_2
    :try_start_2
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 427
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->getFtRowFromTelephonyDb(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_3

    .line 429
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "para.mImdnId not present in DB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    :cond_3
    :try_start_3
    const-string v8, "content_uri"

    .line 432
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://im/ft_original/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "thumbnail_uri"

    .line 433
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://im/ft_thumbnail/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 435
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 434
    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 437
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 436
    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v5, v12, v13, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 439
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 440
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget v11, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v10, v5

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v16}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 399
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 444
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method public onNmsEventChangedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventChangedObjRCSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    return-void
.end method

.method public onNmsEventChangedObjRCSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "_bufferdbid"

    .line 97
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 96
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v11, v3

    const-string v3, "_id"

    .line 98
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v13, v3

    const-string v3, "is_filetransfer"

    .line 99
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v15, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move v15, v3

    :goto_0
    const-string v3, "linenum"

    .line 101
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 100
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v3, "syncaction"

    .line 103
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 102
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v9

    const-string/jumbo v10, "syncdirection"

    .line 105
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 104
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v8

    .line 106
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 107
    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->lastModSeq:Ljava/lang/Long;

    const-string v5, "lastmodseq"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "res_url"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "parentfolder"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v2

    .line 111
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "status"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ft_status"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    :cond_1
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    move-wide v6, v11

    move/from16 v17, v15

    move-object v15, v10

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    .line 116
    iget-boolean v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v4, :cond_2

    .line 117
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    :cond_2
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v1, v11, v12, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 121
    iget-boolean v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v3, :cond_3

    .line 122
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    long-to-int v4, v13

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v1, v13, v3

    if-lez v1, :cond_4

    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v11

    move/from16 v5, v17

    move/from16 v6, p3

    move-object/from16 v7, v16

    .line 125
    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_4
    return-void
.end method

.method public onNmsEventChangedObjRcsBufferDbAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventChangedObjRCSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    return-void
.end method

.method public onNmsEventDeletedObjBufferDbRcsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "_bufferdbid"

    .line 146
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 145
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v10, v2

    const-string v2, "_id"

    .line 147
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v12, v2

    const-string v2, "is_filetransfer"

    .line 148
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v14, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v14, v2

    :goto_0
    const-string v2, "linenum"

    .line 149
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v2, "syncaction"

    .line 151
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 150
    invoke-static {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v8

    const-string/jumbo v9, "syncdirection"

    .line 153
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 152
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v7

    .line 154
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v3, p2

    .line 155
    iget-wide v3, v3, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->lastModSeq:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "lastmodseq"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    sget-object v16, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-wide v5, v10

    move-object/from16 v17, v15

    move-object v15, v9

    move-object/from16 v9, v16

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v3

    .line 158
    iget-boolean v4, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v4, :cond_1

    .line 159
    iget-object v4, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    iget-object v4, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    :cond_1
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v1, v10, v11, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 163
    iget-boolean v1, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_2

    .line 164
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    long-to-int v2, v12

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteRCSMessageDb(I)I

    :cond_2
    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-lez v1, :cond_3

    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-wide v2, v10

    move v5, v14

    move/from16 v6, p3

    move-object/from16 v7, v17

    .line 168
    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    return-void
.end method

.method public onNmsEventDeletedObjBufferDbRcsAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 0

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventDeletedObjBufferDbRcsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    return-void
.end method

.method public onNmsEventDeletedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 0

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventDeletedObjBufferDbRcsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    return-void
.end method

.method public onRcsAllPayloadsDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 20

    move-object/from16 v8, p0

    const-string v1, ""

    const-string v2, ";"

    const-string v3, "onRcsAllPayloadsDownloaded: "

    const-string v4, "content_type"

    .line 307
    :try_start_0
    iget-object v6, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    .line 308
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v7

    iget v7, v7, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v9

    iget-wide v9, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 307
    invoke-virtual {v6, v7, v9, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v10, :cond_a

    .line 309
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "content_uri"

    .line 310
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_id"

    .line 311
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v7, "linenum"

    .line 312
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v7, "file_name"

    .line 313
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "thumbnail_path"

    .line 314
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 315
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 319
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 321
    :try_start_2
    iget-object v5, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v18, v11

    :try_start_3
    const-string v11, "multipart payloads, size: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v11, 0x1

    if-le v5, v11, :cond_1

    :try_start_4
    const-string v2, "multipart/related"

    .line 323
    invoke-virtual {v14, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v2, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v2}, Ljavax/mail/internet/MimeMultipart;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v3, 0x0

    const-wide/16 v16, 0x0

    .line 325
    :goto_0
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 326
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/BodyPart;

    invoke-virtual {v2, v4}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/BodyPart;

    invoke-interface {v4}, Ljavax/mail/Part;->getSize()I

    move-result v4

    int-to-long v4, v4

    add-long v16, v16, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 330
    iget-object v3, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v7, v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFilePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 331
    iget-object v4, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generated file path: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {v2, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveMimeBodyToPath(Ljavax/mail/internet/MimeMultipart;Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v5, 0x0

    :goto_1
    const/4 v15, 0x0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    const/4 v15, 0x0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object v2, v0

    :goto_2
    const/4 v5, 0x0

    :goto_3
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 333
    :cond_1
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_7

    .line 335
    iget-object v5, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljavax/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v19, v1

    const/4 v1, 0x0

    :try_start_7
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljavax/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    check-cast v11, Ljavax/mail/BodyPart;

    invoke-interface {v11}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v5, 0x0

    :try_start_9
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljavax/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "text/plain"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljavax/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v1, :cond_2

    .line 340
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljavax/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 341
    :try_start_c
    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljavax/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 342
    :try_start_d
    iget-object v2, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "converted inlineTxt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljavax/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/4 v15, 0x1

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v19

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v19

    const/4 v5, 0x0

    :goto_4
    const/4 v15, 0x1

    goto/16 :goto_a

    .line 344
    :cond_2
    :try_start_e
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljavax/mail/MessagingException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-nez v1, :cond_3

    :try_start_f
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-interface {v3}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljavax/mail/MessagingException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_5

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v19

    goto/16 :goto_2

    .line 346
    :cond_3
    :try_start_10
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v5
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljavax/mail/MessagingException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const/4 v11, 0x0

    :try_start_11
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljavax/mail/MessagingException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    check-cast v5, Ljavax/mail/BodyPart;

    invoke-interface {v5}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isContentTypeDefined(Ljava/lang/String;)Z

    move-result v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljavax/mail/MessagingException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v1, :cond_4

    .line 347
    :try_start_13
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-interface {v3}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljavax/mail/MessagingException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_5

    .line 349
    :cond_4
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljavax/mail/MessagingException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    const/4 v5, 0x0

    :try_start_15
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljavax/mail/MessagingException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-eqz v1, :cond_6

    .line 350
    :try_start_16
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v5

    const/4 v11, 0x0

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/BodyPart;

    invoke-interface {v5}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v11

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isContentTypeDefined(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 352
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    const/4 v11, 0x0

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-interface {v3}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v11

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v14, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :goto_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 359
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v2, "onRcsAllPayloadsDownloaded: no file name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Ljavax/mail/MessagingException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 385
    :try_start_17
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    return-void

    .line 362
    :cond_5
    :try_start_18
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljavax/mail/MessagingException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 363
    :try_start_19
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveInputStreamtoAppUri(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Ljavax/mail/MessagingException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    move-wide/from16 v16, v1

    move-object/from16 v1, v19

    goto/16 :goto_1

    :catch_6
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v19

    goto/16 :goto_3

    .line 355
    :cond_6
    :try_start_1a
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRcsAllPayloadsDownloaded invalid file type for RCS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a
    .catch Ljavax/mail/MessagingException; {:try_start_1a .. :try_end_1a} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    const/4 v4, 0x0

    :try_start_1b
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-interface {v3}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljavax/mail/MessagingException; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_7
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 385
    :try_start_1c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    return-void

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    move v4, v11

    goto :goto_6

    :catch_9
    move-exception v0

    move v4, v5

    goto :goto_6

    :catch_a
    move-exception v0

    const/4 v4, 0x0

    goto :goto_6

    :catch_b
    move-exception v0

    move v4, v1

    :goto_6
    move-object v2, v0

    move v15, v4

    move-object/from16 v1, v19

    goto :goto_9

    :cond_7
    move-object/from16 v19, v1

    const/4 v4, 0x0

    move v15, v4

    const/4 v5, 0x0

    :goto_7
    const-wide/16 v16, 0x0

    goto :goto_c

    :catch_c
    move-exception v0

    move-object/from16 v19, v1

    goto :goto_8

    :catch_d
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v18, v11

    :goto_8
    const/4 v4, 0x0

    move-object v2, v0

    move v15, v4

    :goto_9
    const/4 v5, 0x0

    :goto_a
    const-wide/16 v16, 0x0

    .line 367
    :goto_b
    :try_start_1d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :goto_c
    move-object v11, v5

    move-object v2, v7

    if-eqz v15, :cond_8

    .line 371
    :try_start_1e
    invoke-direct {v8, v1, v14}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->setInlineTextCV(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_d

    :cond_8
    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v12

    move-wide/from16 v5, v16

    move-object v7, v14

    .line 373
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->getPayloadCV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/content/ContentValues;)V

    :goto_d
    const-wide/16 v1, 0x1

    .line 376
    iget-object v3, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v8, v14, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    if-lez v9, :cond_9

    .line 378
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v9, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    .line 380
    :cond_9
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 382
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p2

    move-object/from16 v8, v18

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    move-object v5, v11

    goto :goto_10

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v5, v11

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v5, 0x0

    .line 307
    :goto_e
    :try_start_1f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_20
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v1

    :cond_a
    const/4 v5, 0x0

    :goto_10
    if-eqz v10, :cond_b

    .line 385
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    goto :goto_11

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_13

    :cond_b
    :goto_11
    if-eqz v5, :cond_c

    .line 388
    :try_start_21
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    move-object v1, v0

    .line 391
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_12
    return-void

    :catchall_5
    move-exception v0

    move-object v1, v0

    const/4 v5, 0x0

    :goto_13
    if-eqz v5, :cond_d

    .line 388
    :try_start_22
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_f

    goto :goto_14

    :catch_f
    move-exception v0

    move-object v2, v0

    .line 391
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 393
    :cond_d
    :goto_14
    throw v1
.end method

.method public onRcsPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 19

    move-object/from16 v0, p0

    const-string/jumbo v1, "thumbnail_path"

    .line 192
    :try_start_0
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v3

    iget v3, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-wide v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 192
    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_f

    .line 194
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "content_uri"

    .line 195
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "thumbnail_uri"

    .line 196
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content_type"

    .line 197
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_bufferdbid"

    .line 198
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "_id"

    .line 199
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "linenum"

    .line 200
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v7, "payloadencoding"

    .line 201
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 202
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "is_filetransfer"

    .line 203
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    move v11, v12

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 205
    :goto_0
    iget-object v14, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isFileTransfer: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", contentType: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v14

    iget-boolean v14, v14, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsFTThumbnail:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v15, " size:"

    const-string v13, " encoding method: "

    move-object/from16 v18, v10

    const/4 v10, 0x0

    if-eqz v14, :cond_3

    :try_start_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 214
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "app generated thumbnail uri: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v13

    array-length v13, v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->getId()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v2

    .line 217
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFileToAppUri(Landroid/content/Context;[BLjava/lang/String;)Z

    goto :goto_1

    .line 218
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->getId()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v2, v7}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    .line 220
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFileToAppUri(Landroid/content/Context;[BLjava/lang/String;)Z

    goto :goto_1

    .line 222
    :cond_2
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v7, "no decoding defined: "

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v10

    .line 225
    :goto_1
    invoke-virtual {v12, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsFTThumbnail:Z

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iput-object v10, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mFTThumbnailFileName:Ljava/lang/String;

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iput-object v10, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mPayloadThumbnailUrl:Ljava/lang/String;

    move-object v10, v2

    :goto_2
    const/16 v16, 0x1

    goto/16 :goto_8

    :cond_3
    const-string v1, "json"

    .line 231
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "xml"

    .line 232
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_6

    .line 237
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->getId()I

    move-result v1

    if-ne v1, v7, :cond_6

    .line 238
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFileToAppUri(Landroid/content/Context;[BLjava/lang/String;)Z

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v1

    array-length v1, v1

    move/from16 v17, v1

    goto :goto_3

    :cond_5
    const/16 v17, 0x0

    .line 240
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v10

    move/from16 v1, v17

    goto :goto_5

    .line 241
    :cond_6
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->getId()I

    move-result v1

    if-ne v1, v7, :cond_8

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v10

    if-eqz v10, :cond_7

    .line 243
    array-length v1, v10

    goto :goto_4

    :cond_7
    move v1, v3

    .line 244
    :goto_4
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-static {v3, v10, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFileToAppUri(Landroid/content/Context;[BLjava/lang/String;)Z

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    move v1, v3

    .line 246
    :goto_5
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "app generated file uri: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "file_size"

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "bytes_transf"

    .line 249
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "file_path"

    .line 250
    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    :goto_6
    const/4 v3, 0x0

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_7

    :cond_a
    const-string v1, ""

    :goto_7
    const-string v2, "body"

    .line 234
    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v16, v3

    :goto_8
    const-string/jumbo v1, "syncaction"

    const-string/jumbo v2, "syncdirection"

    if-nez v16, :cond_b

    .line 254
    :try_start_3
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 255
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 254
    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 257
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 256
    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9

    .line 259
    :cond_b
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 260
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 259
    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->UpdatePayload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 262
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 261
    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_9
    if-eqz v4, :cond_c

    const-string v1, "application/vnd.gsma.rcspushlocation+xml"

    .line 264
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v10, :cond_c

    const-string v1, "ext_info"

    .line 265
    new-instance v2, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    int-to-long v1, v5

    .line 267
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    if-lez v6, :cond_d

    .line 269
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v6, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    .line 271
    :cond_d
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    if-nez v16, :cond_e

    .line 272
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_a

    :cond_e
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->UpdatePayload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    :goto_a
    invoke-direct {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move v6, v11

    move/from16 v7, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v18, v10

    :goto_b
    move-object v1, v0

    .line 192
    :try_start_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v1

    :cond_f
    move-object/from16 v18, v10

    :goto_d
    if-eqz v18, :cond_10

    .line 277
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_e
    return-void
.end method

.method public onUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V
    .locals 3

    .line 638
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mBufferRowId:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateAppFetchingFailed(IJ)V

    return-void
.end method

.method public onUpdateFromDeviceSession(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateFromDeviceSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag:[I

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mUpdateType:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNewSessionInserted(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V

    :goto_0
    return-void
.end method

.method public onUpdateFromDeviceSessionPartcpts(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateFromDeviceSessionPartcpts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag:[I

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mUpdateType:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNewPartcptsInserted(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V

    :goto_0
    return-void
.end method

.method public queryAllSession()Landroid/database/Cursor;
    .locals 0

    .line 612
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryAllSession()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllSessionWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 616
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryAllSessionWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryImdnMessagesToUpload()Landroid/database/Cursor;
    .locals 0

    .line 596
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryImdnMessagesToUpload()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryPendingUrlFetch()I
    .locals 2

    .line 564
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 565
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    const/4 v1, 0x1

    .line 564
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryMessageBySyncAction(II)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 567
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    .line 564
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    if-eqz p0, :cond_1

    .line 569
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 608
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryMessageBySyncDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSMessagesToUpload()Landroid/database/Cursor;
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRCSMessagesToUpload()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSPDUActionStatus(J)I
    .locals 1

    .line 575
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 576
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "syncaction"

    .line 577
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 575
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p0, :cond_1

    .line 579
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p1
.end method

.method public queryToCloudUnsyncedRcs()Landroid/database/Cursor;
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryToCloudUnsyncedRcs()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnDownloadedRcs(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 0

    .line 560
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryToDeviceUnDownloadedRcs(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnsyncedRcs()Landroid/database/Cursor;
    .locals 0

    .line 588
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryToDeviceUnsyncedRcs()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public resetImsi()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v1, "resetImsi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->resetImsi()V

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->resetImsi()V

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->resetImsi()V

    return-void
.end method

.method public searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public wipeOutData(ILjava/lang/String;)V
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->wipeOutData(ILjava/lang/String;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method
