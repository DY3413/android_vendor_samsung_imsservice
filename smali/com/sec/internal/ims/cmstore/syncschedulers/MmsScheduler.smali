.class public Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.source "MmsScheduler.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected final mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

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

    .line 55
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V

    .line 45
    const-class p2, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

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

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    .line 57
    new-instance p2, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-direct {p2, p1, p6}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    .line 58
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mMultiLineScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    const/4 p1, 0x4

    .line 59
    iput p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    return-void
.end method

.method private handleDeviceLegacyUpdateParam(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 4

    .line 534
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeviceLegacyUpdateParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 537
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Sending:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->SendFail:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mMId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 541
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    .line 554
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->searchMMSPduBufferUsingRowId(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 551
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->searchMMSPduBufferUsingRowId(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 547
    :pswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mMId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTRId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->searchMMSPduBufferUsingMidorTrId(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 543
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mMId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTRId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->searchMMSPduBufferUsingMidorTrId(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 563
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleExistingBufferForDeviceLegacyUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 567
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleNonExistingBufferForDeviceLegacyUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    .line 571
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 573
    :cond_2
    throw p0

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onCrossObjectSearchMmsAvailableUsingCorrelationId(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "_bufferdbid"

    .line 673
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 672
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v11, v3

    const-string v3, "date"

    .line 675
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 674
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "_id"

    .line 676
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v13, v5

    const-string v5, "m_id"

    .line 677
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 679
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCrossSearchObj find bufferDB: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " m_id: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "syncaction"

    .line 682
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 681
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v4

    const-string/jumbo v15, "syncdirection"

    .line 684
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 683
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v5

    .line 685
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 686
    iget-object v6, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    const-string v7, "lastmodseq"

    invoke-virtual {v10, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 687
    iget-object v6, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 688
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "res_url"

    .line 687
    invoke-virtual {v10, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v6, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    if-eqz v6, :cond_0

    .line 691
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "parentfolder"

    .line 690
    invoke-virtual {v10, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :cond_0
    iget-object v6, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 695
    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "path"

    .line 694
    invoke-virtual {v10, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v6, "read"

    .line 697
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    .line 699
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 700
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-object v9, v1

    move-object v8, v4

    goto :goto_0

    :cond_2
    move-object v9, v4

    move-object v8, v5

    .line 702
    :goto_0
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 703
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    :cond_3
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    iget-object v1, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-wide v6, v11

    move-object v2, v10

    move-object v10, v1

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v1

    .line 708
    iget-boolean v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v4, :cond_4

    .line 709
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 710
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 709
    invoke-virtual {v2, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 713
    :cond_4
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v0, v2, v11, v12, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-lez v2, :cond_5

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-wide v2, v11

    move/from16 v6, p4

    move-object/from16 v7, p3

    .line 715
    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_5
    return-void
.end method

.method private onNmsEventChangedObjMMSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "_bufferdbid"

    .line 236
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 235
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v11, v3

    const-string v3, "_id"

    .line 237
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v13, v3

    const-string v3, "linenum"

    .line 239
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 238
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v3, "syncaction"

    .line 241
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 240
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v9

    const-string/jumbo v10, "syncdirection"

    .line 243
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 242
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v8

    .line 244
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 245
    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->lastModSeq:Ljava/lang/Long;

    const-string v5, "lastmodseq"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 246
    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 247
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "res_url"

    .line 246
    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->parentFolder:Ljava/net/URL;

    .line 249
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "parentfolder"

    .line 248
    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v2

    .line 251
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 252
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "read"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    :cond_0
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    move-wide v6, v11

    move-object/from16 v16, v15

    move-object v15, v10

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    .line 256
    iget-boolean v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v4, :cond_1

    .line 257
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v0, v1, v11, v12, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    const-wide/16 v3, 0x0

    cmp-long v1, v13, v3

    if-lez v1, :cond_2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v11

    move/from16 v6, p3

    move-object/from16 v7, v16

    .line 263
    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_2
    return-void
.end method

.method private onNmsEventDeletedObjMMSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "_bufferdbid"

    .line 270
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v11, v3

    const-string v3, "_id"

    .line 271
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v13, v3

    const-string v3, "linenum"

    .line 272
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v3, "syncaction"

    .line 274
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 273
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v9

    const-string/jumbo v10, "syncdirection"

    .line 276
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 275
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v8

    .line 277
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 278
    iget-wide v4, v2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->lastModSeq:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "lastmodseq"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p4, :cond_0

    .line 280
    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 281
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "res_url"

    .line 280
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-wide v6, v11

    move-object/from16 v16, v15

    move-object v15, v10

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    .line 285
    iget-boolean v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v4, :cond_1

    .line 286
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v0, v1, v11, v12, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    const-wide/16 v3, 0x0

    cmp-long v1, v13, v3

    if-lez v1, :cond_2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v11

    move/from16 v6, p3

    move-object/from16 v7, v16

    .line 292
    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addMmsPartDownloadList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;JLjava/lang/String;Z)V
    .locals 8

    .line 184
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryOneMmsUndownloadedParts(J)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 185
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    const-string p3, "_bufferdbid"

    .line 188
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    .line 187
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 189
    iget-object p3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v1, 0x6

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v0, v7

    move v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 184
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

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 194
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method public addMmsPartDownloadListForFtUri(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;JLjava/lang/String;Z)V
    .locals 10

    .line 198
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryOneMmsUndownloadedParts(J)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 199
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMmsPartDownloadListForFtUri pduid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "_bufferdbid"

    .line 203
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 202
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    const-string v1, "ct"

    .line 205
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 204
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/smil"

    .line 206
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "text/plain"

    .line 207
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v3, 0x4

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v9

    move-wide v4, p2

    move v6, p5

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 198
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

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public cleanAllBufferDB()V
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->cleanAllBufferDB()V

    return-void
.end method

.method public deleteMMSBufferDBwithResUrl(Ljava/lang/String;)I
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->deleteMMSBufferDBwithResUrl(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public handleCrossSearchObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Z
    .locals 3

    .line 657
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

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

    .line 659
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onCrossObjectSearchMmsAvailableUsingCorrelationId(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    .line 665
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p0

    :catchall_0
    move-exception p0

    .line 659
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

    .line 665
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public handleExistingBufferForDeviceLegacyUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 353
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleExistingBufferForDeviceLegacyUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "syncaction"

    .line 356
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 355
    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v11

    const-string/jumbo v5, "syncdirection"

    .line 358
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 357
    invoke-static {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v10

    const-string v6, "linenum"

    .line 359
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v6, "_bufferdbid"

    .line 360
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 361
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    iget-object v12, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    move-wide v8, v14

    invoke-virtual/range {v6 .. v12}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForMsgOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v6

    .line 363
    iget-boolean v7, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v7, :cond_0

    .line 364
    iget-object v7, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    iget-object v5, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    :cond_0
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Read:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 368
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "read"

    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 371
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "_id"

    .line 372
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 373
    iget-wide v7, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    int-to-long v9, v1

    cmp-long v1, v7, v9

    if-eqz v1, :cond_2

    .line 374
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 376
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const-string v7, "_bufferdbid=?"

    invoke-virtual {v1, v5, v3, v7, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 377
    iget-boolean v1, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_3

    .line 378
    iget v4, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v14

    move/from16 v6, p3

    move-object v7, v13

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    return-void
.end method

.method public handleNonExistingBufferForDeviceLegacyUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;)V
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNonExistingBufferForDeviceLegacyUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 386
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mLine:Ljava/lang/String;

    const-string v2, "linenum"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 390
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    .line 391
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 390
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryMMSPduFromTelephonyDbUseID(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 392
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;ZZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 390
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

    .line 395
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method public handleNormalSyncObjectMmsDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const-string/jumbo v1, "syncdirection"

    const-string/jumbo v2, "syncaction"

    .line 123
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleNormalSyncObjectMmsDownload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :try_start_0
    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :try_start_1
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v20, 0x0

    if-eqz v11, :cond_2

    .line 127
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "_bufferdbid"

    .line 129
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 128
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    const-string v5, "_id"

    .line 130
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    .line 132
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 131
    invoke-static {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v7

    .line 134
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 133
    invoke-static {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v9

    .line 135
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "lastmodseq"

    .line 136
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v14, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "res_url"

    .line 137
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 138
    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 137
    invoke-virtual {v14, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "parentfolder"

    .line 139
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 140
    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 139
    invoke-virtual {v14, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "path"

    .line 141
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v13}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "read"

    .line 142
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 144
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 145
    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    :cond_0
    move-object/from16 v17, v7

    move-object/from16 v16, v9

    .line 147
    iget-object v12, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v13, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object v7, v14

    move-wide v14, v3

    move-object/from16 v18, v0

    invoke-virtual/range {v12 .. v18}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v0

    .line 149
    iget-boolean v9, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v9, :cond_1

    .line 150
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    :cond_1
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v10, v7, v3, v4, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    cmp-long v1, v5, v20

    if-lez v1, :cond_4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v7, p2

    .line 155
    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_0

    .line 160
    :cond_2
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    const-string v2, "handleNormalSyncObjectMmsDownload: MMS not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->insertMMSUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;ZJZ)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    const-string v1, "OUT"

    .line 162
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "IN"

    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 164
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportAtt72HoursRule()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    iget-object v3, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 165
    invoke-static {v1, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->isOver72Hours(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 166
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    if-nez v0, :cond_4

    .line 168
    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v9}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 169
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v13, 0x4

    iget-wide v14, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v12, v1

    move/from16 v16, p2

    move-object/from16 v17, v8

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v12 .. v19}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-wide v0, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    cmp-long v0, v0, v20

    if-lez v0, :cond_4

    iget-object v0, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    iget-wide v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_0
    if-eqz v11, :cond_6

    .line 177
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_5

    .line 125
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 178
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public handleObjectMMSCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "read"

    const-string/jumbo v2, "syncdirection"

    const-string/jumbo v3, "syncaction"

    .line 63
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleObjectMMSCloudSearch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_0
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-object v5, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x4

    if-eqz v10, :cond_4

    .line 66
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "_bufferdbid"

    .line 67
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    .line 69
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 68
    invoke-static {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v16

    .line 71
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 70
    invoke-static {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v15

    .line 72
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "lastmodseq"

    .line 73
    iget-object v11, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v6, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "res_url"

    .line 74
    iget-object v11, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 75
    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 74
    invoke-virtual {v6, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "parentfolder"

    .line 76
    iget-object v11, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 77
    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 76
    invoke-virtual {v6, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "path"

    .line 78
    iget-object v11, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v9, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v11, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    const/4 v11, 0x0

    .line 81
    iput-boolean v11, v9, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    .line 83
    iget-object v11, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v11, v12}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x1

    if-eqz v11, :cond_0

    .line 84
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v9, v13, v12, v1}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->setIsChangedActionAndDirection(ZLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;)V

    goto :goto_1

    .line 86
    :cond_0
    iget-object v9, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v14, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v9, v14}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 87
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-nez v9, :cond_1

    .line 89
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    :cond_1
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v12, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    move-object v1, v14

    move-wide v13, v4

    move-object/from16 v17, v1

    invoke-virtual/range {v11 .. v17}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v1

    goto :goto_0

    .line 94
    :cond_2
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v12, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    sget-object v17, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-wide v13, v4

    invoke-virtual/range {v11 .. v17}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v1

    :goto_0
    move-object v9, v1

    .line 98
    :goto_1
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v1, v7, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 100
    iget-boolean v1, v9, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_3

    .line 101
    iget-object v1, v9, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    iget-object v1, v9, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v0, v6, v4, v5, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    const/4 v6, 0x4

    const/4 v8, 0x0

    .line 104
    iget-boolean v11, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    iget-object v12, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v4

    move v5, v6

    move v6, v8

    move v7, v11

    move-object v8, v12

    move-object v9, v13

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_2

    .line 108
    :cond_3
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v0, v6, v4, v5, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    goto :goto_2

    .line 111
    :cond_4
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    const-string v2, "handleObjectMMSCloudSearch: MMS not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->insertMMSUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;ZJZ)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    .line 113
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v0, v7, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v10, :cond_6

    .line 116
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v10, :cond_5

    .line 65
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_6
    :goto_4
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    .locals 1

    .line 526
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;ZZ)J

    return-void
.end method

.method public notifyMsgAppDeleteFail(IJLjava/lang/String;)V
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

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

    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x4

    if-ne p1, p4, :cond_0

    .line 727
    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 728
    new-instance p4, Lcom/google/gson/JsonObject;

    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 729
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "id"

    invoke-virtual {p4, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-virtual {p1, p4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 731
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 733
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageApp"

    const-string p3, "MMS"

    .line 731
    invoke-interface {p0, p2, p3, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    .locals 6

    .line 400
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMsgAppFetchBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 402
    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    :cond_0
    const-string v0, "_bufferdbid"

    .line 405
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 404
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 406
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 407
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 409
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mMaxNumMsgsNotifyAppInIntent:I

    const-string v2, "MMS"

    const-string v3, "MessageApp"

    const-string v4, "notify message app: MMS: "

    if-ne v0, v1, :cond_1

    .line 410
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 414
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p2

    .line 411
    invoke-interface {v0, v3, v2, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 417
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 419
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 425
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 422
    invoke-interface {p0, v3, v2, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 11

    .line 631
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 633
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;

    iget v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    const/4 v6, 0x0

    iget-object v8, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationId:Ljava/lang/String;

    iget-object v9, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    move-object v2, v0

    move-object v7, v8

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-direct {p0, v0, v1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleDeviceLegacyUpdateParam(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    return-void

    .line 639
    :cond_0
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSPduFromTelephonyDbUseID(J)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 640
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "tr_id"

    .line 642
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 641
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 643
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationId:Ljava/lang/String;

    .line 644
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "m_id"

    .line 645
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v8, v2

    .line 647
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;

    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    const/4 v7, 0x0

    iget-object v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-direct {p0, v2, v1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleDeviceLegacyUpdateParam(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 651
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    const-string p1, "onAppOperationReceived: no mms pdu exists"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 639
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

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 653
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 2

    .line 620
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;I)V

    return-void
.end method

.method public onMmsPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 14

    move-object v0, p0

    .line 304
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS PayLoad downloaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :try_start_0
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    .line 307
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v4, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/4 v2, 0x6

    .line 305
    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_3

    .line 309
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "content_uri"

    .line 311
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 310
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ct"

    .line 313
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 312
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid"

    .line 314
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 315
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v6

    iget-object v8, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 316
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "_bufferdbid= ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 319
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v12

    iget-wide v12, v12, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 318
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    const-string v11, "application/smil"

    .line 320
    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v11, "text/plain"

    .line 321
    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v11, "xml"

    .line 322
    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copy data to app uri "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " dataSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v12

    array-length v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v3

    invoke-static {v4, v3, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFileToAppUri(Landroid/content/Context;[BLjava/lang/String;)Z

    const-string v3, "_data"

    .line 333
    invoke-virtual {v6, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 323
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    const-string v4, "part UTF8 text data"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v4, "text"

    if-eqz v1, :cond_2

    .line 325
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v3

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 326
    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 328
    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_1
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v1, v2, v6, v7, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 337
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    int-to-long v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryIfMmsPartsDownloadComplete(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 338
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->UpdatePayload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v2, v1, v5}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 339
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->updateMMSUpdateingDevice(J)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move/from16 v7, p2

    .line 340
    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 305
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    :cond_3
    :goto_3
    if-eqz v10, :cond_4

    .line 346
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    return-void
.end method

.method public onNmsEventChangedObjBufferDbMmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 0

    .line 231
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventChangedObjMMSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    return-void
.end method

.method public onNmsEventChangedObjMmsBufferDbAvailableUsingCorrId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 0

    .line 222
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventChangedObjMMSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    return-void
.end method

.method public onNmsEventDeletedObjBufferDbMmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventDeletedObjMMSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;ZZ)V

    return-void
.end method

.method public onNmsEventDeletedObjMmsBufferDbAvailableUsingCorrId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 218
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventDeletedObjMMSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;ZZ)V

    return-void
.end method

.method public onUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;)Z
    .locals 4

    const/4 v0, 0x6

    .line 579
    iput v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTableindex:I

    .line 580
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 582
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mBufferRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryAllPartIsUpdated(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    const-string v2, "onUpdateFromDeviceFtUriFetch: All parts downloaded, set state as Download"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 587
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncaction"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncdirection"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mBufferRowId:J

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    :cond_0
    return v0
.end method

.method public onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V
    .locals 3

    .line 612
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mBufferRowId:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateAppFetchingFailed(IJ)V

    return-void
.end method

.method public queryAllPartIsUpdated(J)Z
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryMMSPartRowIdWithoutAppId(J)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 447
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 451
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception p1

    .line 445
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
    if-eqz p0, :cond_1

    .line 451
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public queryDeltaMMSPduFromTelephonyDb()Landroid/database/Cursor;
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryDeltaMMSPduFromTelephonyDb()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryDeltaMMSPduFromTelephonyDbWoImsi()Landroid/database/Cursor;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryDeltaMMSPduFromTelephonyDbWoImsi()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryMessageBySyncDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSMessagesToUpload()Landroid/database/Cursor;
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryMMSMessagesToUpload()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSPDUActionStatus(J)I
    .locals 1

    .line 598
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 599
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "syncaction"

    .line 600
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 598
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

    .line 602
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p1
.end method

.method public queryMMSPduFromTelephonyDbUseID(J)Landroid/database/Cursor;
    .locals 0

    .line 530
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryMMSPduFromTelephonyDbUseID(J)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSPduFromTelephonyDbWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryAllMMSPduFromTelephonyDbWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSPduFromTelephonyDbWoIMSI()Landroid/database/Cursor;
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryMMSPduFromTelephonyDbWoIMSI()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryOneMmsUndownloadedParts(J)Landroid/database/Cursor;
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOneMmsUndownloadedParts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryUndownloadedPart(J)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryPendingUrlFetch()I
    .locals 2

    .line 435
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 436
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    const/4 v1, 0x4

    .line 435
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryMessageBySyncAction(II)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 438
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    .line 435
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

    .line 440
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public queryToCloudUnsyncedMms()Landroid/database/Cursor;
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryToCloudUnsyncedMms()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 0

    .line 431
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnsyncedMms()Landroid/database/Cursor;
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryToDeviceUnsyncedMms()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public syncReadMmsFromTelephony()V
    .locals 8

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryReadMmsfromTelephony()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 502
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_id"

    .line 503
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

    .line 501
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

    .line 505
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 506
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 v1, 0x0

    move v2, v1

    .line 508
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 509
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 510
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "syncdirection"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "syncaction"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, 0x1

    .line 512
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "read"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    .line 516
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v1

    .line 517
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 518
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x3

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 519
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 520
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    const-string v7, "_id=? AND read=? AND syncaction<>? AND syncaction<>?"

    invoke-virtual {v4, v6, v3, v7, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    return-void
.end method
