.class public Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.source "MultiLineScheduler.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p3

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V

    .line 18
    const-class p2, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

    .line 29
    new-instance p2, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-direct {p2, p1, p5}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    return-void
.end method


# virtual methods
.method public deleteLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->deleteLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    return-void
.end method

.method public getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I
    .locals 2

    .line 52
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 53
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->queryUsingLineAndSyncMsgType(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "initsync_status"

    .line 55
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 56
    invoke-static {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 53
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
    move-object p2, v0

    :goto_1
    if-eqz p1, :cond_1

    .line 58
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLineInitSyncStatus(): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    .line 60
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p0

    :goto_2
    return p0
.end method

.method public insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->queryUsingLineAndSyncMsgType(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    const-string v1, ""

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 36
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    .line 35
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->updateLineInitsyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;I)I

    goto :goto_0

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 40
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    .line 33
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
.end method

.method public updateLineInitsyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;I)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/querybuilders/MultiLineStatusBuilder;->updateLineInitsyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;I)I

    return-void
.end method
