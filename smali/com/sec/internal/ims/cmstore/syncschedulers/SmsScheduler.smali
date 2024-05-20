.class public Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.source "SmsScheduler.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected final mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

.field private final mMultiLineScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p3

    .line 48
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V

    .line 38
    const-class p2, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

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

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    .line 50
    new-instance p2, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-direct {p2, p1, p6}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    .line 51
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mMultiLineScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    const/4 p1, 0x3

    .line 52
    iput p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    return-void
.end method

.method private handleDeviceLegacyUpdateParam(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 4

    .line 455
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeviceLegacyUpdateParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 458
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mCorrelationTag:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 462
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 483
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchSMSBufferUsingRowId(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 480
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchSMSBufferUsingRowId(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 477
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchSMSBufferUsingRowId(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    return-void

    .line 471
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mCorrelationTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchSMSBufferUsingCorrelationTagForEarlierNmsEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 468
    :pswitch_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchSMSBufferUsingRowId(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 464
    :pswitch_6
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mCorrelationTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchSMSBufferUsingCorrelationTagForEarlierNmsEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 488
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleExistingBufferForDeviceLegacyUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 492
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleNonExistingBufferForDeviceLegacyUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    .line 496
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 498
    :cond_2
    throw p0

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleObjectSMSCloudSearchFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 66
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "_bufferdbid"

    .line 67
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v13, v5

    const-string v5, "date"

    .line 68
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string/jumbo v15, "syncaction"

    .line 70
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 69
    invoke-static {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v11

    const-string/jumbo v12, "syncdirection"

    .line 72
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 71
    invoke-static {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v10

    const-string v7, "body"

    .line 73
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 74
    iget-object v8, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleObjectSMSCloudSearch find bufferDB: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " time: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " body:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 78
    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    const-string v6, "lastmodseq"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 80
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "res_url"

    .line 79
    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 82
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "parentfolder"

    .line 81
    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "path"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v5, v6, v7}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 86
    iput-boolean v4, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    .line 87
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    .line 88
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v5, v7, v6, v1}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->setIsChangedActionAndDirection(ZLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;)V

    move-object v4, v5

    move-object v1, v12

    goto :goto_0

    .line 90
    :cond_0
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "read"

    .line 91
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    :cond_1
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    move-wide v8, v13

    move-object v1, v12

    move-object v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v1, v12

    .line 98
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-wide v8, v13

    invoke-virtual/range {v6 .. v12}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v4

    .line 101
    :goto_0
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v6, 0x3

    invoke-virtual {v5, v2, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 103
    iget-boolean v5, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v5, :cond_3

    .line 104
    iget-object v5, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    iget-object v5, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0, v3, v13, v14, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 107
    iget-boolean v7, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    iget-object v8, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v13

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 111
    :cond_3
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0, v3, v13, v14, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    goto :goto_1

    .line 114
    :cond_4
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->insertSMSUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;ZJ)J

    move-result-wide v3

    .line 115
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 117
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldSkipMessage(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    .line 118
    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    move-object/from16 v0, p0

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->deleteMessageFromCloud(IJLjava/lang/String;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    goto :goto_1

    .line 121
    :cond_5
    iget-object v1, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 122
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v1, v5, v6}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-boolean v8, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-wide v2, v3

    move v4, v5

    move v5, v6

    move v6, v8

    move-object v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :goto_1
    return-void
.end method

.method private onCrossObjectSearchSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "_bufferdbid"

    .line 560
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v11, v3

    const-string v3, "_id"

    .line 561
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v13, v3

    const-string/jumbo v3, "syncaction"

    .line 563
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 562
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v4

    const-string/jumbo v15, "syncdirection"

    .line 565
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 564
    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v5

    const-string v6, "date"

    .line 566
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "body"

    .line 567
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 568
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    const-string v4, "handleCrossSearchObj find bufferDB: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " id: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " time: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " body:"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 572
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    const-string v6, "lastmodseq"

    invoke-virtual {v10, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v4, 0x1

    const-string v6, "read"

    if-eqz p5, :cond_2

    .line 575
    iget-object v7, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 576
    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "res_url"

    .line 575
    invoke-virtual {v10, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v7, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    if-eqz v7, :cond_0

    .line 579
    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "parentfolder"

    .line 578
    invoke-virtual {v10, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_0
    iget-object v7, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 582
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "path"

    invoke-virtual {v10, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_1
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 586
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 587
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-object v9, v1

    move-object v8, v5

    goto :goto_0

    :cond_2
    move-object v8, v5

    move-object/from16 v9, v16

    .line 591
    :goto_0
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v1

    .line 592
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 593
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    :cond_3
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    move-wide v6, v11

    move-object v2, v10

    move-object v10, v1

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v1

    .line 597
    iget-boolean v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v4, :cond_4

    .line 598
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    :cond_4
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0, v2, v11, v12, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-lez v2, :cond_5

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-wide v2, v11

    move/from16 v6, p4

    move-object/from16 v7, p3

    .line 603
    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_5
    return-void
.end method

.method private onCrossObjectSearchSmsAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 556
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCrossObjectSearchSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private onCrossObjectSearchSmsAvailableUsingResUrl(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 552
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCrossObjectSearchSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public cleanAllBufferDB()V
    .locals 0

    .line 522
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->cleanAllBufferDB()V

    return-void
.end method

.method public deleteSMSBufferDBwithResUrl(Ljava/lang/String;)I
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->deleteSMSBufferDBwithResUrl(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public handleCrossSearchObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Z
    .locals 3

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCrossSearchObj():  line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " objt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 537
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCrossObjectSearchSmsAvailableUsingResUrl(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception p0

    .line 536
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
    if-eqz v0, :cond_1

    .line 541
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 543
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 544
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCrossObjectSearchSmsAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 547
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_2
    move-exception p0

    .line 542
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    if-eqz v0, :cond_3

    .line 547
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public handleExistingBufferForDeviceLegacyUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 303
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleExistingBufferForDeviceLegacyUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mIsGoforwardSync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", changelist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "syncaction"

    .line 307
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 306
    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v14

    const-string/jumbo v5, "syncdirection"

    .line 309
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 308
    invoke-static {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v13

    const-string v7, "_bufferdbid"

    .line 310
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v7, "linenum"

    .line 311
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 312
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v10, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    iget-object v15, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    move-wide/from16 v11, v16

    invoke-virtual/range {v9 .. v15}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForMsgOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v9

    .line 314
    iget-boolean v10, v9, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v10, :cond_0

    .line 315
    iget-object v10, v9, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    iget-object v5, v9, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    :cond_0
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Read:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 319
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v10, "read"

    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    :cond_1
    iget v4, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const/4 v10, 0x3

    if-ne v4, v10, :cond_3

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 323
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const-string v5, "_id"

    .line 324
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 325
    iget-wide v10, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    int-to-long v12, v1

    cmp-long v1, v10, v12

    if-eqz v1, :cond_2

    .line 326
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 328
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const-string v10, "_bufferdbid=?"

    invoke-virtual {v1, v5, v3, v10, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 330
    :cond_3
    iget-boolean v1, v9, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_4

    .line 331
    iget v4, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-wide/from16 v2, v16

    move/from16 v6, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_4
    return-void
.end method

.method public handleNonExistingBufferForDeviceLegacyUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;)V
    .locals 4

    .line 337
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 338
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mLine:Ljava/lang/String;

    const-string v2, "linenum"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 342
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->querySMSUseRowId(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 343
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;ZZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 342
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

    .line 346
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method public handleNormalSyncObjectSmsDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "read"

    const-string/jumbo v3, "syncdirection"

    const-string/jumbo v4, "syncaction"

    .line 131
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleNormalSyncObjectSmsDownload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_0
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v12, :cond_4

    .line 135
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "_bufferdbid"

    .line 137
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 136
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v7, v7

    const-string v9, "date"

    .line 138
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-string v9, "_id"

    .line 139
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    int-to-long v10, v9

    const-string v9, "linenum"

    .line 141
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 140
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 143
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 142
    invoke-static {v15}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v15

    .line 145
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 144
    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v5

    const-string v6, "body"

    .line 146
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v5

    .line 147
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    move-object/from16 v17, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v9

    const-string v9, "handleObjectSMSCloudSearch find bufferDB: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " id: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " time: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " body:"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "lastmodseq"

    .line 151
    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "res_url"

    .line 152
    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 153
    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 152
    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "parentfolder"

    .line 154
    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 155
    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 154
    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "path"

    .line 156
    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_0

    .line 159
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 160
    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-object/from16 v18, v6

    move-object/from16 v17, v13

    goto :goto_0

    :cond_0
    move-object/from16 v18, v17

    move-object/from16 v17, v16

    .line 162
    :goto_0
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    :cond_1
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v14, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-wide v15, v7

    move-object/from16 v19, v2

    invoke-virtual/range {v13 .. v19}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    .line 167
    iget-boolean v6, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v6, :cond_2

    .line 168
    iget-object v6, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    :cond_2
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v0, v5, v7, v8, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-lez v3, :cond_3

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 173
    iget-boolean v9, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-wide v3, v7

    move v7, v9

    move-object/from16 v8, v20

    move-object v9, v10

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    const-wide/16 v10, -0x1

    goto :goto_1

    .line 178
    :cond_4
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->insertSMSUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;ZJ)J

    move-result-wide v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, "OUT"

    .line 179
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "IN"

    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 181
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportAtt72HoursRule()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 182
    invoke-static {v2, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->isOver72Hours(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    if-nez v2, :cond_6

    .line 184
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 185
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-wide v3, v10

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_1
    if-eqz v12, :cond_8

    .line 191
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    const-wide/16 v10, -0x1

    :goto_2
    if-eqz v12, :cond_7

    .line 133
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v1
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const-wide/16 v10, -0x1

    .line 192
    :goto_4
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_8
    :goto_5
    return-wide v10
.end method

.method public handleObjectSMSCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleObjectSMSCloudSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v1, -0x1

    .line 60
    :try_start_0
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleObjectSMSCloudSearchFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 59
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    .locals 1

    .line 450
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;ZZ)J

    return-void
.end method

.method public notifyMsgAppDeleteFail(IJLjava/lang/String;)V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

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

    .line 631
    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 630
    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x3

    if-ne p1, p4, :cond_0

    .line 633
    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 634
    new-instance p4, Lcom/google/gson/JsonObject;

    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 635
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "id"

    invoke-virtual {p4, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual {p1, p4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 637
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 639
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageApp"

    const-string p3, "SMS"

    .line 637
    invoke-interface {p0, p2, p3, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    .locals 4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 352
    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    :cond_0
    const-string v0, "_bufferdbid"

    .line 355
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 354
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 356
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 357
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsonArrayRowIdsSMS.size(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", SMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mMaxNumMsgsNotifyAppInIntent:I

    const-string v2, "SMS"

    const-string v3, "MessageApp"

    if-ne v0, v1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 364
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p2

    .line 361
    invoke-interface {v0, v3, v2, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 367
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 369
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 371
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-interface {p0, v3, v2, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 10

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;

    iget v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationTag:Ljava/lang/String;

    iget-object v8, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationId:Ljava/lang/String;

    iget-object v9, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    move-object v2, v0

    move-object v7, v8

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 531
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleDeviceLegacyUpdateParam(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    return-void
.end method

.method public onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 2

    .line 515
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;I)V

    return-void
.end method

.method public onNmsEventChangedObjBufferDbSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;ZZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "_bufferdbid"

    .line 219
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v11, v3

    const-string v3, "_id"

    .line 220
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v13, v3

    const-string/jumbo v3, "syncaction"

    .line 222
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 221
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v9

    const-string/jumbo v15, "syncdirection"

    .line 224
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 223
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v8

    const-string v4, "linenum"

    .line 225
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v4, "date"

    .line 226
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "body"

    .line 227
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCloudNotifyChangedObj find bufferDB: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " id: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " time: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " body:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    .line 232
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v10, v5

    .line 233
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 234
    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->lastModSeq:Ljava/lang/Long;

    const-string v5, "lastmodseq"

    invoke-virtual {v6, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p4, :cond_0

    .line 237
    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 238
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "res_url"

    .line 237
    invoke-virtual {v6, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->parentFolder:Ljava/net/URL;

    .line 240
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "parentfolder"

    .line 239
    invoke-virtual {v6, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v2

    .line 244
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "read"

    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    :cond_1
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    move-object v1, v6

    move-wide v6, v11

    move-wide/from16 v17, v11

    move-object v11, v10

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    .line 250
    iget-boolean v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v4, :cond_2

    .line 251
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    :cond_2
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    const-string v5, "_bufferdbid=?"

    invoke-virtual {v3, v4, v1, v5, v11}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    cmp-long v1, v13, v3

    if-lez v1, :cond_3

    .line 258
    iget v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide/from16 v2, v17

    move/from16 v6, p3

    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    return-void
.end method

.method public onNmsEventChangedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjBufferDbSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;ZZ)V

    return-void
.end method

.method public onNmsEventChangedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 199
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjBufferDbSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;ZZ)V

    return-void
.end method

.method public onNmsEventDeletedObjBufferDbSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;ZZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "_bufferdbid"

    .line 264
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v11, v3

    const-string v3, "_id"

    .line 265
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v13, v3

    const-string/jumbo v3, "syncaction"

    .line 267
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 266
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v9

    const-string/jumbo v15, "syncdirection"

    .line 269
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 268
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v8

    const-string v4, "linenum"

    .line 270
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v4, "date"

    .line 271
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "body"

    .line 272
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCloudNotifyChangedObj find bufferDB: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " id: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " time: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " body:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 277
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 278
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 279
    iget-wide v4, v2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->lastModSeq:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "lastmodseq"

    invoke-virtual {v10, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p4, :cond_0

    .line 282
    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 283
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "res_url"

    .line 282
    invoke-virtual {v10, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-wide v6, v11

    move-wide/from16 v17, v11

    move-object v11, v10

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    .line 288
    iget-boolean v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v4, :cond_1

    .line 289
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    const-string v5, "_bufferdbid=?"

    invoke-virtual {v3, v4, v11, v5, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    cmp-long v1, v13, v3

    if-lez v1, :cond_2

    .line 296
    iget v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide/from16 v2, v17

    move/from16 v6, p3

    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_2
    return-void
.end method

.method public onNmsEventDeletedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjBufferDbSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;ZZ)V

    return-void
.end method

.method public onNmsEventDeletedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 204
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjBufferDbSmsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;ZZ)V

    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V
    .locals 3

    .line 507
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mBufferRowId:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateAppFetchingFailed(IJ)V

    return-void
.end method

.method public queryAllSMSfromTelephony()Landroid/database/Cursor;
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->queryAllSMSfromTelephony()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryDeltaSMSfromTelephony()Landroid/database/Cursor;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->queryDeltaSMSfromTelephony()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryDeltaSMSfromTelephonyWoImsi()Landroid/database/Cursor;
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->queryDeltaSMSfromTelephonyWoImsi()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryMessageBySyncDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSMessagesToUpload()Landroid/database/Cursor;
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->querySMSMessagesToUpload()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSfromTelephonyWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->querySMSfromTelephonyWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSfromTelephonyWoIMSI()Landroid/database/Cursor;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->querySMSfromTelephonyWoIMSI()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToCloudUnsyncedSms()Landroid/database/Cursor;
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->queryToCloudUnsyncedSms()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnsyncedSms()Landroid/database/Cursor;
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->queryToDeviceUnsyncedSms()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public syncReadSmsFromTelephony()V
    .locals 8

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->queryReadSMSfromTelephony()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 427
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_id"

    .line 428
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 426
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 430
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 431
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 v1, 0x0

    move v2, v1

    .line 433
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 434
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 435
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "syncdirection"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "syncaction"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, 0x1

    .line 437
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "read"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    .line 441
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v1

    .line 442
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 443
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x3

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 444
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 445
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    iget v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    const-string v7, "_id=? AND read=? AND syncaction<>? AND syncaction<>?"

    invoke-virtual {v4, v6, v3, v7, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    return-void
.end method

.method public updateCorrelationTagObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V
    .locals 5

    .line 609
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCorrelationTagObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :try_start_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    const-string v1, "IN"

    .line 614
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 616
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 619
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 621
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v4

    .line 622
    invoke-interface {v4, v3, v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getSmsHashTagOrCorrelationTag(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    iput-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 625
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
