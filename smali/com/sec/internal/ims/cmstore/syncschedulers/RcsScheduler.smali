.class public Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;
.source "RcsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;Landroid/os/Looper;)V
    .locals 0

    .line 60
    invoke-direct/range {p0 .. p8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;Landroid/os/Looper;)V

    .line 51
    const-class p2, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 52
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    .line 63
    invoke-direct {p0, p8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->registerRcsDbSessionObserver(Landroid/os/Looper;)V

    return-void
.end method

.method private crossObjectSearchLegacy(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I
    .locals 1

    .line 743
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->updateCorrelationTagObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V

    .line 746
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleCrossSearchObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 750
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 751
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    .line 752
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleCrossSearchObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private handleExistingBufferForDeviceIMDNUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    .locals 0

    return-void
.end method

.method private handleNonExistingBufferForDeviceIMDNUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    .locals 0

    return-void
.end method

.method private handleObjectDownloadCrossSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleObjectDownloadCrossSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->requiresInterworkingCrossSearch()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->crossObjectSearchLegacy(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I

    move-result p2

    if-eq p2, v1, :cond_0

    .line 184
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    return p2

    :cond_0
    return v1
.end method

.method private onUpdateFromDeviceIMFT(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateFromDeviceIMFT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    .line 501
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 531
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingRowId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    return-void

    .line 517
    :pswitch_2
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mChatId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 518
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 519
    :cond_0
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 520
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    .line 523
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingRowId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 509
    :pswitch_3
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 510
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    .line 513
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingRowId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 506
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 503
    :pswitch_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 536
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 538
    :cond_3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleExistingBufferForDeviceRCSUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 539
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 540
    :cond_4
    iget-wide p2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-lez p2, :cond_5

    .line 541
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleNonExistingBufferForDeviceRCSUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    if-eqz v0, :cond_a

    .line 545
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_6
    throw p0

    :cond_7
    const/16 p2, 0xd

    if-ne v0, p2, :cond_a

    .line 549
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object p3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchBufferNotificationUsingImdn(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 550
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 551
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleExistingBufferForDeviceIMDNUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V

    goto :goto_2

    .line 553
    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleNonExistingBufferForDeviceIMDNUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz p2, :cond_a

    .line 555
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception p0

    if-eqz p2, :cond_9

    .line 549
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    throw p0

    :cond_a
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerRcsDbSessionObserver(Landroid/os/Looper;)V
    .locals 2

    .line 785
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    if-eqz p1, :cond_0

    return-void

    .line 788
    :cond_0
    new-instance p1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    invoke-direct {p1, p0, p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;-><init>(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    const-string p1, "content://com.samsung.rcs.cmstore/chat/"

    .line 789
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 790
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->mRcsDbSessionObserver:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private updateSyncDirection(Landroid/content/ContentValues;Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string/jumbo v0, "syncaction"

    const-string/jumbo v1, "syncdirection"

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 84
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p4

    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportAtt72HoursRule()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 85
    invoke-static {p3, p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->isOver72Hours(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 86
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-boolean p0, p2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz p0, :cond_1

    .line 89
    iget-object p0, p2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    iget-object p0, p2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSyncFlag(IZLjava/lang/String;JLcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;Landroid/content/ContentValues;Z)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move-object v2, p6

    if-lez v1, :cond_3

    .line 69
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    :cond_0
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    move-object/from16 v4, p7

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    goto :goto_0

    .line 73
    :cond_1
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteRCSMessageDb(I)I

    :cond_2
    :goto_0
    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p6

    move-wide v2, p4

    move/from16 v5, p8

    move v6, p2

    move-object v7, p3

    .line 77
    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public handleCloudNotifyGSOChangedObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Lcom/sec/internal/omanetapi/nms/data/Object;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 603
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCloudNotifyGSOChangedObj(), objt is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    array-length v2, v1

    const/4 v4, 0x0

    move v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_15

    aget-object v7, v1, v5

    .line 606
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v9, v8

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_0

    aget-object v11, v8, v10

    .line 607
    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Attribute key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", value: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 609
    :cond_0
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string/jumbo v9, "subject"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 610
    iget-object v6, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v6, v6, v4

    .line 612
    :cond_1
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v10, "TextContent"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 614
    iget-object v7, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v8, v7

    move v10, v4

    :goto_2
    if-ge v10, v8, :cond_14

    aget-object v11, v7, v10

    .line 615
    invoke-static {v11}, Lcom/sec/internal/omanetapi/nms/XmlParser;->parseGroupState(Ljava/lang/String;)Lcom/sec/internal/omanetapi/nms/data/GroupState;

    move-result-object v11

    .line 616
    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GroupState after xmlParser: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/internal/omanetapi/nms/data/GroupState;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iput-object v6, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->subject:Ljava/lang/String;

    .line 619
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 620
    iget-object v13, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->group_type:Ljava/lang/String;

    const-string v14, "open"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x2

    const-string v15, "chat_type"

    const/16 v16, 0x1

    if-eqz v13, :cond_2

    .line 621
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 623
    :cond_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    :goto_3
    iget-object v13, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->subject:Ljava/lang/String;

    invoke-virtual {v12, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v13, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->lastfocussessionid:Ljava/lang/String;

    const-string v15, "session_uri"

    invoke-virtual {v12, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v13}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryAllSession()Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_4

    if-eqz v13, :cond_3

    .line 654
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v25, v5

    move-object/from16 v20, v6

    :goto_4
    move-object/from16 v21, v7

    move/from16 v24, v8

    move-object/from16 v26, v9

    move/from16 v23, v10

    goto/16 :goto_10

    :cond_4
    const/16 v17, -0x1

    .line 635
    :try_start_0
    iget-object v3, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->lastfocussessionid:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v14, "@"

    .line 636
    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    :cond_5
    move/from16 v3, v17

    if-lez v3, :cond_12

    .line 640
    iget-object v14, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->lastfocussessionid:Ljava/lang/String;

    invoke-virtual {v14, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 645
    :goto_5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v4, "chat_id"

    if-eqz v14, :cond_7

    .line 646
    :try_start_1
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v1

    .line 647
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    move/from16 v19, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v6

    const-string v6, "session uri: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_6

    if-eqz v3, :cond_6

    .line 648
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 649
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_6

    :cond_6
    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v6, v20

    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    move-object/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v6

    const/4 v1, 0x0

    .line 654
    :goto_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 655
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chat id: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_11

    .line 659
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v1, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateSessionBufferDb(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 660
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v1, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSSessionDb(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 661
    invoke-virtual {v12, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    .line 662
    invoke-virtual {v0, v12, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->notifyMsgAppFetchBuffer(Landroid/content/ContentValues;I)V

    .line 667
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string/jumbo v3, "uri"

    const-string v6, "Administrator"

    const-string v12, "alias"

    const-string/jumbo v13, "type"

    if-eqz v2, :cond_e

    .line 669
    :goto_7
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 670
    new-instance v14, Lcom/sec/internal/omanetapi/nms/data/Part;

    invoke-direct {v14}, Lcom/sec/internal/omanetapi/nms/data/Part;-><init>()V

    .line 671
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/sec/internal/omanetapi/nms/data/Part;->name:Ljava/lang/String;

    .line 672
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    .line 673
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    .line 674
    iget-object v15, v14, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    invoke-static {v15}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v7

    .line 675
    invoke-static {v15}, Lcom/sec/internal/ims/cmstore/utils/Util;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v22, 0x0

    move/from16 v24, v8

    .line 679
    iget-object v8, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->participantList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v26, v9

    const-string v9, "_id"

    if-eqz v25, :cond_9

    :try_start_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v27, v8

    move-object/from16 v8, v25

    check-cast v8, Lcom/sec/internal/omanetapi/nms/data/Part;

    move/from16 v25, v5

    .line 680
    iget-object v5, v8, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 681
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 683
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 685
    iget-object v5, v11, Lcom/sec/internal/omanetapi/nms/data/GroupState;->participantList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v27, v4

    move-wide/from16 v30, v22

    move-object/from16 v22, v3

    move/from16 v23, v10

    move/from16 v10, v16

    move-wide/from16 v3, v30

    goto :goto_9

    :cond_8
    move/from16 v5, v25

    move-object/from16 v9, v26

    move-object/from16 v8, v27

    goto :goto_8

    :cond_9
    move/from16 v25, v5

    move-object/from16 v27, v4

    const/4 v8, 0x0

    move-wide/from16 v30, v22

    move-object/from16 v22, v3

    move/from16 v23, v10

    move-wide/from16 v3, v30

    const/4 v10, 0x0

    .line 690
    :goto_9
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    move-object/from16 v28, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v11

    const-string v11, "Participant: "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/sec/internal/omanetapi/nms/data/Part;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", telLine = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", line = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-static {v7}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "isExist: "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", tempPart: "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_a

    .line 692
    invoke-virtual {v8}, Lcom/sec/internal/omanetapi/nms/data/Part;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_a
    const-string v7, ""

    :goto_a
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 690
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_b

    .line 695
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 696
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v5, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteParticipantsUsingRowId(J)I

    .line 698
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v4, v14, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteParticipantsFromBufferDb(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_b
    if-eqz v8, :cond_d

    .line 702
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 703
    iget-object v7, v8, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    if-eqz v7, :cond_c

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v8, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 704
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 703
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 705
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_b

    .line 707
    :cond_c
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 710
    :goto_b
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v7, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSParticipantsDb(JLandroid/content/ContentValues;)I

    .line 712
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v4, v14, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateParticipantsBufferDb(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_d
    :goto_c
    move-object/from16 v7, v21

    move-object/from16 v3, v22

    move/from16 v10, v23

    move/from16 v8, v24

    move/from16 v5, v25

    move-object/from16 v9, v26

    move-object/from16 v4, v27

    move-object/from16 v12, v28

    move-object/from16 v11, v29

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 667
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v1

    :cond_e
    move-object/from16 v22, v3

    move-object/from16 v27, v4

    move/from16 v25, v5

    move-object/from16 v21, v7

    move/from16 v24, v8

    move-object/from16 v26, v9

    move/from16 v23, v10

    move-object/from16 v29, v11

    move-object/from16 v28, v12

    if-eqz v2, :cond_f

    .line 717
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f
    move-object/from16 v2, v29

    .line 718
    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/GroupState;->participantList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/omanetapi/nms/data/Part;

    .line 720
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insert participant : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/omanetapi/nms/data/Part;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 722
    iget-object v5, v3, Lcom/sec/internal/omanetapi/nms/data/Part;->role:Ljava/lang/String;

    const-string/jumbo v7, "status"

    if-eqz v5, :cond_10

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 723
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 724
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_f

    .line 726
    :cond_10
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 727
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    :goto_f
    iget-object v5, v3, Lcom/sec/internal/omanetapi/nms/data/Part;->name:Ljava/lang/String;

    move-object/from16 v7, v28

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v27

    .line 730
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Part;->comm_addr:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v8, v22

    .line 732
    invoke-virtual {v4, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSParticipantsDb(Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 735
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v9, 0x2

    invoke-virtual {v3, v9, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    goto/16 :goto_e

    :cond_11
    move/from16 v25, v5

    goto/16 :goto_4

    :cond_12
    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v25, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move/from16 v24, v8

    move-object/from16 v26, v9

    move/from16 v23, v10

    .line 654
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_13
    :goto_10
    add-int/lit8 v10, v23, 0x1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v24

    move/from16 v5, v25

    move-object/from16 v9, v26

    const/4 v4, 0x0

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 630
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_11

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11
    throw v1

    :cond_14
    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v25, v5

    move-object/from16 v20, v6

    add-int/lit8 v5, v25, 0x1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v6, v20

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method public handleDownLoadMessageResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 489
    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->OBJECT_NOT_FOUND:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 490
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p2

    iget p2, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p1

    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->setMsgDeleted(IJ)V

    :cond_0
    return-void
.end method

.method public handleExistingBufferForDeviceRCSUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 424
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleExistingBufferForDeviceRCSUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "syncaction"

    .line 426
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v11

    const-string/jumbo v5, "syncdirection"

    .line 427
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v10

    const-string v6, "linenum"

    .line 428
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v6, "_bufferdbid"

    .line 429
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 430
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    iget-object v12, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    move-wide v8, v14

    invoke-virtual/range {v6 .. v12}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForMsgOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v6

    .line 431
    iget-object v7, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    iget-object v5, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    iget-wide v4, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_0

    .line 434
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string v4, "is_filetransfer"

    .line 436
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v5

    .line 437
    :goto_0
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isFt: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " , action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mUpdateType:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "thumbnail_path"

    if-eqz v8, :cond_3

    .line 438
    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v10, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mUpdateType:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v9, v10}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "file_path"

    .line 439
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 440
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 441
    iget-object v10, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "filepath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " , thumbpath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 443
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 445
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 448
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 449
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 451
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 455
    :cond_3
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportAtt72HoursRule()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Received:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v9, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    .line 456
    invoke-virtual {v1, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v8, :cond_5

    .line 458
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v9, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    invoke-virtual {v1, v9, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryIMFTUsingRowId(J)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 459
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 460
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 458
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 462
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    new-array v1, v7, [Ljava/lang/String;

    .line 465
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    .line 466
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    const-string v7, "_bufferdbid=?"

    invoke-virtual {v4, v5, v3, v7, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 467
    iget-boolean v1, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_6

    .line 468
    iget v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    move-object/from16 v1, p0

    move-object v2, v6

    move-wide v3, v14

    move v6, v8

    move/from16 v7, p3

    move-object v8, v13

    move-object/from16 v9, p4

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_6
    return-void
.end method

.method public handleNonExistingBufferForDeviceRCSUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    .locals 5

    .line 473
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNonExistingBufferForDeviceRCSUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mRowId:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryIMFTUsingRowId(J)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "syncdirection"

    .line 477
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "syncaction"

    .line 478
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 479
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertToRCSMessagesBufferDB(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    .line 481
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string p1, "handleNonExistingBufferForDeviceRCSUpdate: insert RCS Buffer DB error or meet blocked number!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 474
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
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
    if-eqz v0, :cond_1

    .line 484
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method public handleNormalSyncObjectRcsImdnDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 7

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNormalSyncObjectRcsImdnDownload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchBufferNotificationUsingImdnAndTelUri(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_bufferdbid"

    .line 197
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    const-string v3, "_bufferdbid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 199
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 200
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "lastmodseq"

    .line 201
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "res_url"

    .line 202
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "parentfolder"

    .line 203
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "path"

    .line 204
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "imdn_id"

    .line 205
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "syncaction"

    .line 206
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "syncdirection"

    .line 207
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "timestamp"

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "displayed"

    .line 209
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v2, "status"

    if-eqz p1, :cond_0

    .line 210
    :try_start_1
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 212
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 216
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSimdnToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_2

    .line 218
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const-wide/16 p0, -0x1

    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    .line 195
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
.end method

.method public handleNormalSyncObjectRcsMessageDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J
    .locals 24

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    .line 96
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNormalSyncObjectRcsMessageDownload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v11, v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 100
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 101
    :try_start_0
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz v15, :cond_4

    .line 103
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "_bufferdbid"

    .line 104
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v5, v1

    const-string v1, "_id"

    .line 105
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string/jumbo v1, "syncaction"

    .line 106
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v1

    const-string/jumbo v3, "syncdirection"

    .line 107
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v3

    const-string v4, "_bufferdbid=?"

    new-array v7, v8, [Ljava/lang/String;

    .line 109
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v9

    .line 110
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "lastmodseq"

    .line 111
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v8, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "res_url"

    .line 112
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "parentfolder"

    .line 113
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "path"

    .line 114
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v13}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "content_type"

    .line 115
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v8, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "status"

    .line 117
    invoke-interface {v15, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 116
    invoke-interface {v15, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    sget-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 118
    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v14

    if-eq v9, v14, :cond_0

    const-string v9, "ft_status"

    .line 119
    invoke-interface {v15, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 120
    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v13

    if-ne v9, v13, :cond_1

    .line 121
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 122
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    :cond_1
    move-object/from16 v21, v1

    move-object/from16 v20, v3

    .line 124
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 v16, v1

    move/from16 v17, v3

    move-wide/from16 v18, v5

    move-object/from16 v22, v9

    invoke-virtual/range {v16 .. v22}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v9

    .line 126
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-direct {v10, v8, v9, v1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->updateSyncDirection(Landroid/content/ContentValues;Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v0, v8, v4, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageInBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    if-eqz v1, :cond_2

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    :goto_0
    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object v4, v12

    move-wide/from16 v16, v5

    move-object v7, v9

    const/4 v14, 0x1

    move v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->updateSyncFlag(IZLjava/lang/String;JLcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;Landroid/content/ContentValues;Z)V

    .line 130
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 131
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportAtt72HoursRule()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 132
    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->isOver72Hours(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    iput-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 137
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iput-object v1, v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move v9, v14

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    move/from16 v7, p2

    move v13, v9

    move-wide/from16 v8, v16

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    move v14, v8

    move/from16 v7, p2

    .line 140
    invoke-direct {v10, v0, v12, v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleObjectDownloadCrossSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I

    move-result v1

    .line 141
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNormalSyncObjectRcsMessageDownload: RCS not foundcontractTypeFromLegacy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, v14, :cond_6

    if-eqz v15, :cond_5

    .line 171
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    const-wide/16 v1, -0x1

    return-wide v1

    .line 145
    :cond_6
    :try_start_3
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchOrCreateSession(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_8

    if-eqz v15, :cond_7

    .line 171
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    const-wide/16 v1, -0x1

    return-wide v1

    .line 149
    :cond_8
    :try_start_5
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSMessageToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v1

    .line 150
    iget-wide v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    .line 151
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v2, v0, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    move-object v11, v1

    move v13, v3

    move-wide v8, v4

    .line 153
    :goto_2
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportAtt72HoursRule()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 154
    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->isOver72Hours(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 155
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 156
    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    invoke-virtual {v10, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getAppTypeString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v10, v14, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {v10, v0, v1, v8, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    .line 159
    :cond_9
    new-instance v14, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v14}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 160
    iget-object v6, v14, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v1, 0x1

    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v0, v5

    move-object/from16 v16, v2

    move-wide v2, v8

    move-object/from16 v17, v4

    move/from16 v4, p2

    move-object/from16 v23, v5

    move-object/from16 v5, v17

    move-object v7, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v13, :cond_a

    .line 164
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v14}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_3

    :cond_a
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move-wide v3, v8

    move/from16 v7, p2

    move-object v8, v12

    move-object v9, v14

    .line 166
    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_b
    :goto_3
    if-eqz v15, :cond_d

    .line 171
    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_c

    .line 101
    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_4
    throw v1
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 172
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nullpointer or ArrayIndexOutOfBounds Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_5
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public handleObjectRCSIMDNCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 11

    .line 351
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleObjectRCSIMDNCloudSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchBufferNotificationUsingImdnAndTelUri(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/16 v2, 0xd

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_3

    .line 370
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "delivered"

    .line 371
    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string/jumbo v6, "status"

    if-eqz v5, :cond_0

    .line 372
    :try_start_1
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v7

    if-ne v5, v7, :cond_0

    .line 373
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string p1, "delivered comes after displayed, shouldn\'t update"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 418
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide v3

    :cond_0
    :try_start_2
    const-string v5, "_bufferdbid"

    .line 376
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v7, v5

    const-string v5, "_bufferdbid=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 378
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v10

    .line 379
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "lastmodseq"

    .line 380
    iget-object v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "res_url"

    .line 381
    iget-object v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "parentfolder"

    .line 382
    iget-object v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "path"

    .line 383
    iget-object v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "syncaction"

    .line 384
    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "syncdirection"

    .line 385
    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v8}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isStoreImdnEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "displayed"

    .line 388
    iget-object v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 389
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 391
    :cond_1
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 393
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v6, v2, v7, v5, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 394
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSNotificationUsingImsdId(Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_1

    .line 396
    :cond_2
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v6, v2, v7, v5, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 398
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v5, p1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    goto :goto_2

    .line 400
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSimdnToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    .line 401
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v5, p1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 403
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v0, :cond_4

    .line 404
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "not_displayed_counter"

    .line 405
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v5, "disposition_notification_status"

    .line 406
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 407
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v6, v7, v2, v5, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRcsMessageBufferDbIfNewIMDNReceived(Ljava/lang/String;IILcom/sec/internal/ims/cmstore/params/ParamOMAObject;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 403
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :cond_4
    :goto_4
    if-eqz v0, :cond_5

    .line 410
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isStoreImdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 412
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRcsDBMessageUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_6

    .line 413
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 414
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryBufferDbandUpdateRcsMessageDb(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p0

    .line 412
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0

    :cond_6
    :goto_6
    if-eqz v0, :cond_7

    .line 416
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_7
    if-eqz v1, :cond_8

    .line 418
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    return-wide v3

    :catchall_4
    move-exception p0

    if-eqz v1, :cond_9

    .line 369
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_7
    throw p0
.end method

.method public handleObjectRCSMessageCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const-string/jumbo v1, "status"

    const-string/jumbo v2, "syncdirection"

    const-string/jumbo v3, "syncaction"

    .line 224
    iget-object v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleObjectRCSMessageCloudSearch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 255
    :try_start_0
    iget-object v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v13, :cond_4

    .line 256
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "_bufferdbid"

    .line 257
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    .line 258
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v19

    .line 259
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v18

    const-string v8, "_id"

    .line 260
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "_bufferdbid=?"

    new-array v15, v5, [Ljava/lang/String;

    .line 262
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v4

    .line 263
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 264
    new-instance v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v11, v12, v5}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 265
    iput-boolean v4, v11, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    .line 268
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    const/4 v4, 0x1

    invoke-virtual {v11, v4, v5, v1}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->setIsChangedActionAndDirection(ZLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;)V

    .line 270
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteRCSMessageDb(I)I

    move-object v4, v11

    move-object v8, v14

    move-object v1, v15

    goto :goto_0

    .line 271
    :cond_0
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 272
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v12

    if-eq v4, v12, :cond_1

    .line 274
    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "disposition_notification_status"

    .line 275
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v8, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    .line 284
    :cond_1
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    move-object v8, v14

    move-object v14, v1

    move-object v1, v15

    move v15, v4

    move-wide/from16 v16, v6

    move-object/from16 v20, v5

    invoke-virtual/range {v14 .. v20}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v8, v14

    move-object v1, v15

    .line 287
    iget-object v14, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v15, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    sget-object v20, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-wide/from16 v16, v6

    invoke-virtual/range {v14 .. v20}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v4

    :goto_0
    const-string v5, "lastmodseq"

    .line 291
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v8, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "res_url"

    .line 292
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "parentfolder"

    .line 293
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "path"

    .line 294
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v5, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v11, 0x1

    invoke-virtual {v5, v0, v11}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 297
    iget-boolean v5, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v5, :cond_3

    .line 298
    iget-object v5, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    iget-object v3, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v8, v9, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 301
    iget-boolean v9, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object v2, v4

    move-wide v3, v6

    move v6, v8

    move v7, v9

    move-object v8, v0

    move-object v9, v11

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 304
    :cond_3
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    const-string v2, "flagsetresult.mIsChanged: false - don\'t update sync action or direction"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v8, v9, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const-wide/16 v11, -0x1

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    const-wide/16 v11, -0x1

    goto/16 :goto_8

    :cond_4
    move/from16 v7, p2

    .line 309
    :try_start_2
    invoke-direct {v10, v0, v8, v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleObjectDownloadCrossSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)I

    move-result v1

    .line 310
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleObjectRCSCloudSearch: RCS not found: contractTypeFromLegacy: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    if-eqz v13, :cond_5

    .line 344
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-wide/16 v11, -0x1

    goto/16 :goto_a

    :cond_5
    :goto_2
    const-wide/16 v1, -0x1

    return-wide v1

    .line 314
    :cond_6
    :try_start_4
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchOrCreateSession(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v1, :cond_8

    if-eqz v13, :cond_7

    .line 344
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_7
    const-wide/16 v2, -0x1

    return-wide v2

    :cond_8
    const-wide/16 v2, -0x1

    .line 318
    :try_start_6
    iget-object v5, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v1, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSMessageToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v5

    .line 319
    iget-wide v11, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 320
    :try_start_7
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v1, v0, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 321
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v2, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 322
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " fetchuri:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_9

    move v4, v6

    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " text:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v2, v11, v2

    if-lez v2, :cond_c

    .line 324
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    iget-object v3, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    iget-object v3, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    if-nez v1, :cond_c

    .line 326
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object v2, v5

    move-wide v3, v11

    move v5, v6

    move v6, v9

    move/from16 v7, p2

    move-object v9, v14

    .line 327
    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_3

    :cond_b
    const/4 v6, 0x1

    const/4 v9, 0x1

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object v2, v5

    move-wide v3, v11

    move v5, v6

    move v6, v9

    move/from16 v7, p2

    move-object v9, v14

    .line 330
    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 334
    :cond_c
    :goto_3
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryImdnBufferDBandUpdateRcsMessageBufferDb(Ljava/lang/String;I)I

    .line 336
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isStoreImdnEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 337
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRcsDBMessageUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v1, :cond_d

    .line 338
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 339
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryBufferDbandUpdateRcsMessageDb(Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 337
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_a
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2

    :cond_d
    :goto_5
    if-eqz v1, :cond_e

    .line 341
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_e
    :goto_6
    if-eqz v13, :cond_10

    .line 344
    :try_start_b
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v0

    const-wide/16 v2, -0x1

    :goto_7
    move-object v1, v0

    move-wide v11, v2

    :goto_8
    if-eqz v13, :cond_f

    .line 255
    :try_start_c
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_9
    throw v1
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_1

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    const-wide/16 v2, -0x1

    move-wide v11, v2

    .line 345
    :goto_a
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nullpointer or ArrayIndexOutOfBoundsException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_b
    return-wide v11
.end method

.method public onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 10

    .line 569
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 571
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 585
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 582
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 579
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 576
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 573
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_0

    .line 590
    :goto_1
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;

    iget v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v5, v1

    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mChatId:Ljava/lang/String;

    iget-object v8, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationId:Ljava/lang/String;

    iget-object v9, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Download:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 595
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onDownloadRequestFromApp(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 597
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onUpdateFromDeviceIMFT(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :goto_2
    return-void
.end method
