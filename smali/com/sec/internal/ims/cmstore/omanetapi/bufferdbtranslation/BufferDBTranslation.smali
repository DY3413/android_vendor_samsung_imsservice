.class public Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;
.super Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;
.source "BufferDBTranslation.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 51
    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAllPayloadUrlFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 463
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 467
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_0

    .line 469
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "payloadpartFull"

    .line 471
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 470
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "payloadurl"

    .line 473
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 472
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "payloadpartThumb"

    .line 475
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 474
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mPayloadThumbnailUrl:Ljava/lang/String;

    const-string v2, "payloadpartThumb_filename"

    .line 477
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 476
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mFTThumbnailFileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 467
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
    move-object v1, v0

    :goto_1
    if-eqz p0, :cond_1

    .line 480
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 481
    :cond_1
    iget-object p0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mPayloadThumbnailUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 482
    iput-boolean p0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsFTThumbnail:Z

    .line 485
    :cond_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Z)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v1, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 141
    iget-wide v3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querySMSBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 143
    iget-wide v3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querymmsPduBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    .line 145
    iget-wide v3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 147
    iget-wide v3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmDataBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v3, 0x12

    if-ne v0, v3, :cond_4

    .line 149
    iget-wide v3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    const-string v3, ""

    if-eqz v0, :cond_9

    .line 157
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "res_url"

    .line 159
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 158
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "syncaction"

    .line 161
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 160
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 162
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resUrl : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 164
    iget p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "\\Seen"

    if-ne p1, v1, :cond_5

    :try_start_1
    const-string p1, "flagRead"

    .line 166
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 165
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "\\Flagged"

    move-object v5, p1

    .line 175
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlagNames: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    :cond_6
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0

    if-ne v5, p0, :cond_7

    const-string v5, "\\Deleted"

    goto :goto_1

    :cond_7
    move-object v5, v3

    :goto_1
    if-nez v4, :cond_8

    move-object v4, v3

    :cond_8
    if-nez p2, :cond_a

    const/16 p0, 0x2f

    .line 185
    invoke-virtual {v4, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {v4, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 156
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_9
    move-object v4, v3

    move-object v5, v4

    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    .line 188
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz p2, :cond_c

    .line 191
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 193
    :cond_c
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getImdnObjectPair(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 12
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

    .line 747
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 751
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    const-string v2, "imdn-message"

    .line 753
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    .line 758
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSNotificationDB(J)Landroid/database/Cursor;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 760
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "imdn_id"

    .line 762
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 761
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 763
    iput-object v5, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/String;

    aput-object v5, v6, v2

    .line 765
    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionOriginalMessageID([Ljava/lang/String;)V

    const-string v6, "sender_uri"

    .line 770
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 769
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 771
    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    .line 772
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getImdnObjectPairFromCursor :: ImdnID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " parsed opUri : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 772
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 758
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
    move-object v5, v4

    move-object v6, v5

    :goto_1
    if-eqz p1, :cond_1

    .line 776
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 778
    :cond_1
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSMessageDBUsingImdn(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 780
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "notification_status"

    .line 783
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 782
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 785
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v7

    if-ne v7, v5, :cond_2

    const-string v7, "delivery"

    .line 786
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionType([Ljava/lang/String;)V

    const-string v7, "delivered"

    .line 789
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionStatus([Ljava/lang/String;)V

    goto :goto_2

    .line 792
    :cond_2
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v7

    if-ne v7, v5, :cond_3

    const-string v7, "display"

    .line 793
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionType([Ljava/lang/String;)V

    const-string v7, "displayed"

    .line 796
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionStatus([Ljava/lang/String;)V

    :goto_2
    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v3

    .line 803
    :goto_3
    new-instance v8, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v8}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v8, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string v9, "\\Flagged"

    const-string v10, "\\Seen"

    .line 805
    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    const-string v8, "direction"

    .line 810
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 809
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    .line 811
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getImdnObjectPairFromCursor :: direction : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " notificationStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p0

    int-to-long v10, p0

    cmp-long p0, v8, v10

    if-nez p0, :cond_4

    move v2, v3

    goto :goto_5

    .line 815
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p0

    int-to-long v10, p0

    cmp-long p0, v8, v10

    if-nez p0, :cond_5

    const-string p0, "IN"

    .line 816
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    new-array p0, v3, [Ljava/lang/String;

    aput-object v6, p0, v2

    .line 820
    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionOriginalTo([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_5
    move v2, v7

    goto :goto_5

    :catchall_2
    move-exception p0

    .line 778
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    .line 826
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 828
    :cond_7
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p0

    .line 829
    iput-object p0, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    if-eqz v2, :cond_8

    return-object v4

    .line 834
    :cond_8
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getInitialSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    .locals 6

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInitialSyncStatusByLine: line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    const-string v1, "multilinestatus"

    const-string v2, "/"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->CONTENT_URI_BUFFERDB:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/slot2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->CONTENT_URI_BUFFERDB:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 104
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "initsync_status"

    .line 107
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 106
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "messagetype"

    .line 108
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 109
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    .line 110
    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveInitialSyncStatus(I)V

    .line 115
    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    .line 117
    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 102
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 120
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    return-object p0
.end method

.method public getMmsObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
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

    .line 732
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getMmsObjectFromPduAndAddress(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object v0

    .line 733
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 734
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryPartsBufferDBUsingPduBufferId(J)Landroid/database/Cursor;

    move-result-object p1

    .line 733
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getMmsPartHttpPayloadFromCursor(Landroid/database/Cursor;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p0

    .line 735
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public getObjectIdFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Z)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getObjectIdPartIdFromMmsBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 500
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querymmsPduBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    const/16 v3, 0x2f

    const-string v4, ""

    if-eqz p1, :cond_2

    .line 502
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "res_url"

    .line 504
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 503
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 505
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resUrl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_0

    goto :goto_1

    .line 509
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    .line 500
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0

    :cond_2
    :goto_1
    move-object v5, v4

    :goto_2
    if-eqz p1, :cond_3

    .line 515
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 517
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryPartsBufferDBUsingPduBufferId(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 519
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    const-string v1, "payloadurl"

    .line 523
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 522
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v4

    goto :goto_3

    .line 527
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 529
    :goto_3
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "payLoadurl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "partId: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 533
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v1, :cond_4

    goto :goto_6

    :catchall_2
    move-exception p0

    .line 517
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0

    :cond_7
    :goto_6
    if-eqz p1, :cond_8

    .line 537
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 538
    :cond_8
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getObjectIdPartIdFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 416
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object p1

    const-string v1, ""

    if-eqz p1, :cond_2

    .line 418
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "res_url"

    .line 420
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 419
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 421
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x2f

    if-nez v2, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "payloadpartFull"

    .line 429
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 428
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 431
    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 432
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    .line 416
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 438
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 439
    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getPayloadPartUrlFromMmsBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 548
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryPartsBufferDBUsingPduBufferId(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 550
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "payloadurl"

    .line 553
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 552
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 554
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "payLoadurl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 558
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 548
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 562
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public getPayloadPartUrlFromMmsPartUsingPartBufferId(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 3

    .line 568
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 570
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryPartsBufferDBUsingPartBufferId(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 572
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "payloadurl"

    .line 574
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 573
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payLoadurl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 570
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
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_1

    .line 578
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public getPayloadPartandAllPayloadUrlFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 444
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 448
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_0

    .line 450
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "payloadpartFull"

    .line 452
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 451
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "payloadurl"

    .line 454
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 453
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 448
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
    move-object v0, p1

    :goto_1
    if-eqz p0, :cond_1

    .line 457
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_1
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getRCSObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 6
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

    .line 605
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 609
    iget-wide v3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryrcsMessageBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 611
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "message_isslm"

    .line 613
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 612
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v2, "is_filetransfer"

    .line 615
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 614
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 616
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRCSObjectPairFromCursor :: isSlm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isFt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_0

    .line 619
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getSlmObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object p0

    :goto_0
    move-object v2, p0

    goto :goto_2

    :cond_0
    if-ne v2, v1, :cond_1

    .line 622
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFtObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_0

    .line 625
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getChatObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 609
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 629
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2
.end method

.method public getResourceUrlFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Z)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getSearchCursorByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Ljava/lang/String;
    .locals 6

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSearchCursorByLine: line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    const-string v1, "multilinestatus"

    const-string v2, "/"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->CONTENT_URI_BUFFERDB:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/slot2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->CONTENT_URI_BUFFERDB:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 71
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "initsync_cusor"

    .line 74
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 73
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "messagetype"

    .line 76
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 75
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    .line 77
    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveObjectSearchCursor(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 84
    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 69
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 87
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method public getSmsObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 2

    .line 226
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 228
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querySMSBufferDB(J)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_1

    .line 230
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "res_url"

    .line 232
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 231
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 241
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_0
    const/16 p1, 0x2f

    .line 238
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 228
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    if-eqz p0, :cond_2

    .line 241
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method

.method public getSmsObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 12
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

    .line 642
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querySMSBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 644
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 645
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 647
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string v1, "read"

    .line 650
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 649
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string/jumbo v2, "type"

    .line 652
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 651
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "\\Flagged"

    const-wide/16 v5, 0x2

    const/4 v7, 0x1

    if-eq v1, v7, :cond_1

    cmp-long v1, v2, v5

    if-nez v1, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    goto :goto_1

    .line 655
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string v8, "\\Seen"

    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    .line 665
    :goto_1
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 667
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    const-string v9, "date"

    .line 668
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 667
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    .line 669
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    const-string v4, "address"

    .line 674
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 673
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v10, 0x1

    cmp-long v8, v2, v10

    if-nez v8, :cond_2

    const-string v2, "IN"

    .line 677
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    new-array v2, v7, [Ljava/lang/String;

    .line 681
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    .line 680
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    new-array v2, v7, [Ljava/lang/String;

    .line 684
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 686
    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v3

    .line 685
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v9

    .line 684
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    cmp-long v2, v2, v5

    if-nez v2, :cond_3

    const-string v2, "OUT"

    .line 689
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    new-array v2, v7, [Ljava/lang/String;

    .line 693
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    .line 692
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    new-array v2, v7, [Ljava/lang/String;

    .line 696
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 698
    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v3

    .line 697
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v9

    .line 696
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string p0, "no"

    .line 702
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCpmGroup([Ljava/lang/String;)V

    const-string p0, "pager-message"

    .line 706
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    .line 710
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p0

    .line 711
    iput-object p0, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 713
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v1, "form-data;name=\"attachments\";filename=\"sms.txt\""

    const-string/jumbo v2, "text/plain"

    const-string v3, "body"

    .line 716
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 715
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 642
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz p1, :cond_5

    .line 722
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v1
.end method

.method public getSummaryObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 2

    .line 202
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 204
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querySummaryDB(J)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_1

    .line 206
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "res_url"

    .line 208
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 207
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 217
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_0
    const/16 p1, 0x2f

    .line 214
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 204
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    if-eqz p0, :cond_2

    .line 217
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method

.method public getVVMGreetingObjectPairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 1
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

    .line 403
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getVvmObjectFromDB(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object v0

    .line 404
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getVvmGreetingBodyFromDB(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p0

    .line 405
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public getVVMGreetingTypeFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    .locals 3

    .line 585
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 587
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "greetingtype"

    .line 590
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 589
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 591
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVVMGreetingTypeFromBufDb : type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->valueOf(I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 585
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
    if-eqz p1, :cond_1

    .line 595
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 596
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    return-object p0
.end method

.method public getVVMGreetingpayLoadUrlFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 2

    .line 289
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 292
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 294
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "payloadurl"

    .line 296
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 295
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 292
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
    const/4 p1, 0x0

    :cond_1
    if-eqz p0, :cond_2

    .line 303
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method

.method public getVVMObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 2

    .line 248
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 250
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmDataBufferDB(J)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_1

    .line 252
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "res_url"

    .line 254
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 253
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 263
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_0
    const/16 p1, 0x2f

    .line 260
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 250
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    if-eqz p0, :cond_2

    .line 263
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method

.method public getVVMServiceProfileFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    if-nez p2, :cond_0

    goto/16 :goto_7

    .line 314
    :cond_0
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    .line 315
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/16 p1, 0x13

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, p1, :cond_e

    const/16 p1, 0x14

    if-eq v1, p1, :cond_1

    goto/16 :goto_7

    .line 340
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmProfileBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 342
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "profile_changetype"

    .line 344
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 343
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 345
    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 346
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3

    if-ne v3, v1, :cond_5

    const-string v1, "email_addr1"

    .line 348
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 347
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "email_addr2"

    .line 350
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 349
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v4

    aput-object v3, v0, v5

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    new-array v0, v5, [Ljava/lang/String;

    aput-object v1, v0, v4

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    new-array v0, v5, [Ljava/lang/String;

    aput-object v3, v0, v4

    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    .line 360
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setEmailAddress([Ljava/lang/String;)V

    goto :goto_1

    .line 362
    :cond_5
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v6, "true"

    if-ne v3, v1, :cond_7

    .line 363
    :try_start_1
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setVVMOn([Ljava/lang/String;)V

    :cond_6
    :goto_1
    move-object v0, p0

    goto :goto_2

    .line 367
    :cond_7
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "false"

    if-ne v3, v1, :cond_8

    .line 368
    :try_start_2
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setVVMOn([Ljava/lang/String;)V

    goto :goto_1

    .line 372
    :cond_8
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3

    if-ne v3, v1, :cond_9

    goto :goto_1

    .line 374
    :cond_9
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTOFF:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3

    if-ne v3, v1, :cond_a

    .line 375
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setNUT([Ljava/lang/String;)V

    goto :goto_1

    .line 379
    :cond_a
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTON:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3

    if-ne v3, v1, :cond_b

    .line 380
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setNUT([Ljava/lang/String;)V

    goto :goto_1

    .line 384
    :cond_b
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2TLANGUAGE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3

    if-ne v3, v1, :cond_c

    const-string/jumbo v0, "v2t_language"

    .line 386
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 385
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object v0, v1, v4

    .line 387
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setV2tLanguage([Ljava/lang/String;)V

    goto :goto_1

    .line 390
    :cond_c
    :goto_2
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p0

    iput-object p0, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 340
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :cond_d
    :goto_4
    if-eqz p1, :cond_10

    .line 393
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 318
    :cond_e
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmPinBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 320
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "oldpwd"

    .line 322
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 321
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "newpwd"

    .line 325
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 324
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 327
    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    new-array p0, v5, [Ljava/lang/String;

    aput-object v1, p0, v4

    .line 328
    invoke-virtual {v3, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setOldPwd([Ljava/lang/String;)V

    new-array p0, v5, [Ljava/lang/String;

    aput-object v2, p0, v4

    .line 331
    invoke-virtual {v3, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setPwd([Ljava/lang/String;)V

    .line 334
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p0

    iput-object p0, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p0

    .line 318
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0

    :cond_f
    :goto_6
    if-eqz p1, :cond_10

    .line 337
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_10
    :goto_7
    return-object v0
.end method

.method public getVVMpayLoadUrlFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 2

    .line 269
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 272
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmDataBufferDB(J)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 274
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "payloadurl"

    .line 276
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 275
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 272
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
    const/4 p1, 0x0

    :cond_1
    if-eqz p0, :cond_2

    .line 283
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method
