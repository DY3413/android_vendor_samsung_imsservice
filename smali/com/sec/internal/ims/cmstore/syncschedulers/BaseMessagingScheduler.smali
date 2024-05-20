.class public Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.super Landroid/os/Handler;
.source "BaseMessagingScheduler.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected final mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

.field protected final mContext:Landroid/content/Context;

.field protected mDbTableContractIndex:I

.field protected final mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

.field protected mMaxNumMsgsNotifyAppInIntent:I

.field protected final mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

.field protected mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field protected mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V
    .locals 1

    .line 52
    invoke-direct {p0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    const-class p5, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;

    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->TAG:Ljava/lang/String;

    const/16 p5, 0x14

    .line 44
    iput p5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mMaxNumMsgsNotifyAppInIntent:I

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 54
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->TAG:Ljava/lang/String;

    .line 55
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    .line 57
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    .line 58
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 59
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    return-void
.end method


# virtual methods
.method public deleteMessageFromCloud(IJLjava/lang/String;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V
    .locals 9

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessageFromCloud: bufferID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p5, :cond_0

    return-void

    .line 177
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 178
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 182
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "_bufferdbid=?"

    .line 184
    invoke-virtual {p5, p1, v0, v2, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    new-instance p5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {p5}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 187
    iget-object v0, p5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, p5}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    return-void
.end method

.method public getAppTypeString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/16 p0, 0xe

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/16 p0, 0xb

    if-eq p1, p0, :cond_0

    const/16 p0, 0xc

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const-string p0, "VVMDATA"

    goto :goto_0

    :cond_0
    const-string p0, "MessageApp"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMessageTypeString(IZ)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x1

    const-string v0, "FT"

    const-string v1, "CHAT"

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb

    if-eq p1, p0, :cond_0

    const/16 p0, 0xc

    if-eq p1, p0, :cond_4

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const-string v0, "PROFILE"

    goto :goto_0

    :pswitch_1
    const-string v0, "PIN"

    goto :goto_0

    :pswitch_2
    const-string v0, "GREETING"

    goto :goto_0

    :pswitch_3
    const-string v0, "VVMDATA"

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "MMS"

    goto :goto_0

    :cond_2
    const-string v0, "SMS"

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_0

    :cond_4
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    const-string/jumbo v3, "syncdirection"

    const-string/jumbo v4, "syncaction"

    .line 348
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v5

    iget v5, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v6

    iget-wide v6, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 347
    invoke-virtual {v1, v5, v6, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 349
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 351
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 350
    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v16

    .line 353
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 352
    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v15

    const-string v5, "linenum"

    .line 355
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 354
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 356
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v12, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v5

    iget-wide v13, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    sget-object v17, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;->Inserted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    .line 356
    invoke-virtual/range {v11 .. v17}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldResponse(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v5

    .line 359
    iget-boolean v6, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v6, :cond_2

    .line 360
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 361
    iget-object v7, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    iget-object v3, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "res_url"

    .line 364
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 363
    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "path"

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Reference;->path:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_bufferdbid=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v11

    iget-wide v11, v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 367
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v9

    iget v9, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual {v1, v9, v6, v3, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, 0x3

    if-ne v2, v1, :cond_0

    .line 373
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertResUrlinSummaryIfNonExist(Ljava/lang/String;I)J

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v2, v1, :cond_1

    .line 377
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertResUrlinSummaryIfNonExist(Ljava/lang/String;I)J

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    .line 381
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    .line 382
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 381
    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertResUrlinSummaryIfNonExist(Ljava/lang/String;I)J

    .line 387
    :cond_2
    :goto_0
    iget-object v1, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget v6, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object v2, v5

    move v5, v6

    move v6, v7

    move/from16 v7, p2

    .line 388
    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 347
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    :cond_3
    :goto_2
    if-eqz v10, :cond_4

    .line 393
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void
.end method

.method public handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    move/from16 v5, p6

    move-object/from16 v3, p8

    .line 128
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleOutPutParamSyncFlagSet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " , mIsGoforwardSync: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "changelist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_0

    const-string v7, "null"

    goto :goto_0

    :cond_0
    const-string v7, "not null"

    .line 129
    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 128
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    if-nez v5, :cond_3

    if-nez v3, :cond_2

    .line 133
    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v9}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 134
    iget-object v10, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v8, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v11

    move/from16 v2, p4

    move-wide v3, p2

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 138
    :cond_2
    iget-object v8, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v0, v9

    move/from16 v1, p4

    move-wide v2, p2

    move/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 140
    :cond_3
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 142
    :cond_4
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getAppTypeString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v3, p5

    .line 143
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v2

    move-wide v3, p2

    .line 142
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_5
    :goto_1
    return-void
.end method

.method public msgAppFetchBuffer(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 194
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    :cond_0
    const-string v1, "_bufferdbid"

    .line 197
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 196
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 198
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 199
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 201
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mMaxNumMsgsNotifyAppInIntent:I

    if-ne v1, v2, :cond_1

    .line 202
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p2, p3, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 205
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 207
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p3, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V

    return-void
.end method

.method public notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 148
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 149
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 150
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "id"

    invoke-virtual {v1, p4, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string/jumbo v2, "syncdirection"

    const-string/jumbo v3, "syncaction"

    .line 296
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCloudUpdateFlagSuccess: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v5

    iget-wide v7, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 297
    invoke-virtual {v1, v4, v7, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 299
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 300
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v4

    .line 303
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 302
    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v15

    const-string v5, "linenum"

    .line 305
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 304
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 307
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 308
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v12, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    .line 309
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v5

    iget-wide v13, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    sget-object v17, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;->SetDelete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    move-object/from16 v16, v4

    .line 308
    invoke-virtual/range {v11 .. v17}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldResponse(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v4

    goto :goto_0

    .line 311
    :cond_0
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 312
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v12, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    .line 313
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v5

    iget-wide v13, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    sget-object v17, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;->SetRead:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;

    move-object/from16 v16, v4

    .line 312
    invoke-virtual/range {v11 .. v17}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldResponse(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$CloudResponseFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v4

    goto :goto_0

    .line 316
    :cond_1
    new-instance v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v4, v5, v7}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 317
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->TAG:Ljava/lang/String;

    const-string v7, "onCloudUpdateFlagSuccess: something wrong not processed cloud callback"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_0
    iget-boolean v5, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v5, :cond_2

    const-string v5, "_bufferdbid=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v11

    iget-wide v11, v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 321
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    .line 323
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 324
    iget-object v11, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    iget-object v2, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual {v1, v2, v9, v5, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 329
    :cond_2
    iget-object v1, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v11, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 331
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget v5, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object v2, v4

    move-wide v3, v11

    move/from16 v7, p2

    .line 330
    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 297
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    :cond_3
    :goto_2
    if-eqz v10, :cond_4

    .line 335
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void
.end method

.method public onUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V
    .locals 9

    const-string v0, "json"

    .line 212
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 214
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdateFromDeviceFtUriFetch param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pdurid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mBufferRowId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " partid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mImsPartId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTableindex:I

    const-string/jumbo v3, "syncdirection"

    const-string/jumbo v4, "syncaction"

    const/4 v5, 0x1

    const-string v6, "content_uri"

    if-ne v2, v5, :cond_0

    .line 216
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://im/ft_original/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTelephonyRowId:J

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v6, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://im/ft_thumbnail/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTelephonyRowId:J

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "thumbnail_uri"

    invoke-virtual {v1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    :cond_0
    const/4 v7, 0x6

    if-ne v2, v7, :cond_2

    .line 221
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTelephonyRowId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mImsPartId:J

    invoke-virtual {p2, v7, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 223
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ct"

    .line 224
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS contentType: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    const-string p0, "application/smil"

    .line 226
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "text/plain"

    .line 227
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 228
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://mms/part/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTelephonyRowId:J

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v6, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 222
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
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
    if-eqz v2, :cond_5

    .line 232
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_2
    const/16 v0, 0x11

    if-eq v2, v0, :cond_4

    const/16 v0, 0x12

    if-ne v2, v0, :cond_3

    goto :goto_2

    .line 239
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->TAG:Ljava/lang/String;

    const-string p1, "Invalid messageType"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 235
    :cond_4
    :goto_2
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://com.samsung.vvm/files/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTelephonyRowId:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v6, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_5
    :goto_3
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mImsPartId:J

    const-wide/16 v6, -0x1

    cmp-long p0, v2, v6

    if-nez p0, :cond_6

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mBufferRowId:J

    :cond_6
    new-array p0, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 245
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    .line 246
    iget p1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTableindex:I

    const-string v0, "_bufferdbid=?"

    invoke-virtual {p2, p1, v1, v0, p0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 251
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpdateFromDeviceMsgAppFetch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " tableid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget v3, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    iget-wide v4, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mBufferRowId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v3

    const-string/jumbo v4, "syncaction"

    const-string/jumbo v5, "syncdirection"

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 257
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 259
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 258
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 261
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 260
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "linenum"

    .line 263
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 262
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 255
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :cond_0
    const/4 v7, 0x0

    move v8, v6

    move-object v9, v7

    move v7, v8

    :goto_1
    if-eqz v3, :cond_1

    .line 265
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_1
    iget-object v10, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v11, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    iget-wide v12, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mBufferRowId:J

    .line 268
    invoke-static {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v14

    .line 269
    invoke-static {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v15

    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mUpdateType:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 v16, v3

    .line 266
    invoke-virtual/range {v10 .. v16}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForMsgResponse(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v3

    .line 270
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 272
    iget v8, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    const/4 v10, 0x3

    const/4 v11, 0x1

    const-string v12, "_id"

    if-ne v8, v10, :cond_2

    .line 273
    iget-wide v13, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTelephonyRowId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    :cond_2
    const/4 v10, 0x4

    if-ne v8, v10, :cond_3

    .line 275
    iget-wide v13, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTelephonyRowId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    :cond_3
    const/16 v10, 0x11

    if-ne v8, v10, :cond_4

    .line 277
    iget-wide v13, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTelephonyRowId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    :cond_4
    const/16 v10, 0x12

    if-ne v8, v10, :cond_5

    .line 279
    iget-wide v13, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTelephonyRowId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    :cond_5
    if-ne v8, v11, :cond_6

    .line 280
    iget-boolean v8, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-nez v8, :cond_6

    return-void

    .line 283
    :cond_6
    :goto_2
    iget-object v8, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onUpdateFromDeviceMsgAppFetch "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v8, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    iget-object v5, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v4, v11, [Ljava/lang/String;

    .line 287
    iget-wide v10, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mBufferRowId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 288
    iget v5, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    const-string v6, "_bufferdbid=?"

    invoke-virtual {v2, v5, v7, v6, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 289
    iget-boolean v2, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v2, :cond_7

    .line 290
    iget-wide v4, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mBufferRowId:J

    iget v6, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    iget-boolean v7, v1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mIsFT:Z

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide v3, v4

    move v5, v6

    move v6, v7

    move/from16 v7, p2

    move-object v8, v9

    move-object v9, v10

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_7
    return-void
.end method

.method public updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 340
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    .line 341
    iget p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    const-string p2, "_bufferdbid=?"

    invoke-virtual {p4, p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public wipeOutData(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public wipeOutData(ILjava/lang/String;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V
    .locals 1

    .line 164
    invoke-virtual {p3, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->deleteAllUsingLineAndTableIndex(ILjava/lang/String;)V

    .line 165
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {p3, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->deleteAllUsingLineAndTableIndex(ILjava/lang/String;)V

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteAllUsingLineAndType: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , line = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
