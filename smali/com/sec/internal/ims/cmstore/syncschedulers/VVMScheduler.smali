.class public Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.source "VVMScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;,
        Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;,
        Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;,
        Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;
    }
.end annotation


# static fields
.field private static final CONFIDENTIAL_SENSITIVITY:Ljava/lang/String; = "CONFIDENTIAL"

.field private static final HIGH_IMPORTANCE:Ljava/lang/String; = "HIGH"

.field private static final NORMAL_IMPORTANCE:Ljava/lang/String; = "NORMAL"

.field private static final PERSONAL_SENSITIVITY:Ljava/lang/String; = "PERSONAL"

.field private static final PRIVATE_SENSITIVITY:Ljava/lang/String; = "PRIVATE"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;


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

    .line 76
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V

    .line 58
    const-class p2, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

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

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    .line 78
    new-instance p2, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-direct {p2, p1, p5}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 p1, 0x11

    .line 79
    iput p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    return-void
.end method

.method private getTextDatafromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .line 889
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, "getTextDatafromInputStream: error:"

    if-eqz p1, :cond_0

    const/16 v2, 0x100

    :try_start_0
    new-array v2, v2, [B

    .line 893
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_0
    if-ltz v3, :cond_0

    const/4 v4, 0x0

    .line 895
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 896
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 900
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTextDatafromInputStream error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 905
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 907
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0

    .line 905
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 907
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :goto_3
    throw v0

    :cond_0
    if-eqz p1, :cond_1

    .line 905
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 907
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_1
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTextDatafromInputStream size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 911
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleCloudNotifyChangedObjGreeting(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 8

    .line 559
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string v1, "handleCloudNotifyChangedObjGreeting()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 562
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p1, "syncaction"

    .line 565
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 564
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 566
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 567
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "this is a deleted object"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 571
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v2, 0x12

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventChangedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;I)J

    move-result-wide v3

    .line 576
    iget-object p1, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v2, 0x7

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 580
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    .line 562
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0
.end method

.method private handleCloudNotifyChangedObjVVM(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string v1, "handleCloudNotifyChangedObjVVM()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo p2, "syncaction"

    .line 616
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 615
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 617
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 618
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "this is a deleted object"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 621
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V

    goto :goto_0

    .line 623
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onNmsEventChangedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 625
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    .line 613
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
.end method

.method private handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)V
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string v1, "handleCloudNotifyDeletedObj()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 668
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "syncaction"

    .line 670
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 669
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 671
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 672
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "this is a deleted object"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 675
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)V

    goto :goto_0

    .line 677
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onNmsEventDeletedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 679
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    .line 667
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
.end method

.method private handleCloudNotifyObject(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;ILjava/lang/String;)V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloudNotifyObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x13

    if-eq p2, v0, :cond_1

    const/16 v0, 0x14

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    :try_start_0
    new-instance p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-direct {p2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;-><init>()V

    .line 334
    iput-object p3, p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    .line 335
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->emailAddress:Ljava/lang/String;

    iput-object p1, p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mEmail1:Ljava/lang/String;

    .line 336
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onUpdateNewEmailProfile(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)V

    goto :goto_0

    .line 327
    :cond_1
    new-instance p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-direct {p2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;-><init>()V

    .line 328
    iput-object p3, p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    .line 329
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->vvmPin:Ljava/lang/String;

    iput-object p1, p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mNewPwd:Ljava/lang/String;

    .line 330
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onUpdateNewPin(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 342
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NullPointerException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleReadVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 10

    .line 1019
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmMessageBufferDBwithAppId(J)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1020
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "linenum"

    .line 1023
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1022
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "syncdirection"

    .line 1024
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "syncaction"

    .line 1025
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "flagRead"

    const/4 v3, 0x1

    .line 1026
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_bufferdbid"

    .line 1028
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1027
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v2, "_bufferdbid=?"

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 1030
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 1031
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    invoke-virtual {v4, v7, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1033
    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1019
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

    .line 1036
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private handleUnReadVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 10

    .line 1040
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmMessageBufferDBwithAppId(J)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1041
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1042
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "linenum"

    .line 1044
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1043
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "syncdirection"

    .line 1045
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "syncaction"

    .line 1046
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "flagRead"

    const/4 v3, 0x0

    .line 1047
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_bufferdbid"

    .line 1049
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1048
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v2, "_bufferdbid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 1051
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    .line 1052
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    invoke-virtual {v3, v7, v1, v2, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1054
    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1040
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

    .line 1057
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private handleUploadVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;)V
    .locals 10

    .line 1204
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1208
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 1209
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange:[I

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mVvmChange:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1230
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmNewProfileDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)J

    move-result-wide v5

    .line 1231
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v4, 0x14

    const/4 v7, 0x0

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    iget-object v8, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 1218
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmNewPinDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)J

    move-result-wide v5

    .line 1219
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v4, 0x13

    const/4 v7, 0x0

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    iget-object v8, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 1211
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmNewGreetingDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)J

    move-result-wide v5

    .line 1212
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v4, 0x12

    const/4 v7, 0x0

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    iget-object v8, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handledeleteVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "syncdirection"

    const-string/jumbo v3, "syncaction"

    const/4 v4, 0x0

    .line 1063
    :try_start_0
    iget v5, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_0

    .line 1064
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget v6, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmMessageBufferDBwithAppId(J)Landroid/database/Cursor;

    move-result-object v4

    :goto_0
    move-object v10, v4

    goto :goto_1

    :cond_0
    const/16 v6, 0x12

    if-ne v5, v6, :cond_3

    .line 1066
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget v6, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmGreetingBufferDBwithAppId(J)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :goto_1
    if-eqz v10, :cond_1

    .line 1071
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1072
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_bufferdbid"

    .line 1074
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1073
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1076
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1075
    invoke-static {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v16

    .line 1078
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1077
    invoke-static {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v15

    const-string v7, "linenum"

    .line 1080
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1079
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1081
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v12, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    sget-object v17, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    move-wide v13, v5

    invoke-virtual/range {v11 .. v17}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForMsgOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v7

    .line 1084
    iget-object v9, v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1085
    iget-object v2, v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_bufferdbid=?"

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 1087
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    .line 1088
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget v12, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    invoke-virtual {v11, v12, v4, v2, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1090
    iget-boolean v2, v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-ne v2, v3, :cond_1

    .line 1091
    iget v9, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object v2, v7

    move-wide v3, v5

    move v5, v9

    move v6, v11

    move v7, v12

    move-object/from16 v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v10

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v10, :cond_2

    .line 1096
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1097
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    .line 1068
    :cond_3
    :try_start_2
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handledeleteVvm, unrecognized datatype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v4, :cond_4

    .line 1096
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1097
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1099
    :cond_4
    throw v0
.end method

.method private onDownloadRequestFromApp(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;)V
    .locals 10

    if-eqz p1, :cond_0

    .line 993
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mVvmChange:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 994
    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mVvmUpdate:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertDownloadNewProfileRequest(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    .line 997
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 998
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v3, 0x14

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_0
    return-void
.end method

.method private onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;)V
    .locals 8

    const-string v0, "VVMDATA"

    const-string v1, "flagRead"

    const-string/jumbo v2, "syncaction"

    const-string v3, "messagetype"

    .line 684
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 683
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 685
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNmsEventChangedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object p1, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryVVMwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 687
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "_bufferdbid"

    .line 689
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 688
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 691
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 690
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 693
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 692
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 694
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    if-eq v6, v4, :cond_1

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 695
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    if-ne v6, v4, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object p2, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v4, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getIfSeenValueUsingFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)I

    move-result p2

    .line 700
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "local seen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", server seen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, p2, :cond_2

    .line 702
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 703
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "syncdirection"

    .line 704
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 705
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 704
    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 706
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "_bufferdbid=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 708
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 709
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v5, 0x11

    invoke-virtual {v2, v5, v4, p2, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 711
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    int-to-long v1, v3

    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    .line 696
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string p2, "onNmsEventChangedObjSummaryDbAvailableUsingUrl: delete vvm ignore"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 686
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

    .line 716
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method private onNmsEventChangedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 8

    .line 725
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventChangedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;I)J

    .line 727
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 728
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v0, p1, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmMessageUsingChangedObject(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Ljava/lang/String;)J

    move-result-wide v3

    .line 731
    iget-object p1, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)V
    .locals 7

    const-string/jumbo v0, "syncaction"

    const-string v1, "messagetype"

    .line 740
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 739
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 741
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNmsEventDeletedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x12

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    .line 745
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object p2, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    if-ne p3, p1, :cond_4

    .line 747
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object p2, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmGreetingBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_2

    .line 752
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "_bufferdbid"

    .line 754
    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 753
    invoke-interface {v2, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 756
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 755
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 757
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    if-eq v5, v3, :cond_2

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 758
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    if-eq v5, v3, :cond_2

    .line 759
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 760
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "syncdirection"

    .line 761
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 762
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 761
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "_bufferdbid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 764
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "VVMDATA"

    if-ne p3, v1, :cond_1

    .line 766
    :try_start_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {p1, v1, v3, v0, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 768
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    int-to-long p1, p2

    invoke-virtual {p0, v5, v5, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :cond_1
    if-ne p3, p1, :cond_2

    .line 772
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {p3, p1, v3, v0, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 774
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const-string p1, "GREETING"

    int-to-long p2, p2

    invoke-virtual {p0, v5, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 781
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_3

    .line 782
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    .line 749
    :cond_4
    :try_start_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNmsEventDeletedObjSummaryDbAvailableUsingUrl, unrecognized datatype: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_3
    if-eqz v2, :cond_5

    .line 781
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_5

    .line 782
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 784
    :cond_5
    throw p0
.end method

.method private onNmsEventDeletedObjSummaryDbNotAvailableUsingUrl(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)V
    .locals 0

    .line 788
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventDeletedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)J

    return-void
.end method

.method private onUpdateNewEmailProfile(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateNewEmailProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 358
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmNewEmailProfileCloudUpdate(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)J

    move-result-wide v0

    .line 359
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const-string p1, "VVMDATA"

    const-string v2, "PROFILE"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private onUpdateNewPin(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateNewPin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmNewPinCloudUpdate(Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)J

    move-result-wide v0

    .line 349
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const-string p1, "VVMDATA"

    const-string v2, "PIN"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private onVvmGreetingUpdateFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1159
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 1158
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1160
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1161
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->FAILURE:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "uploadstatus"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1162
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncaction"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1163
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncdirection"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1164
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v3, 0x12

    const-string v4, "_bufferdbid=?"

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1166
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 1168
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p1

    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const-string p1, "VVMDATA"

    const-string v2, "GREETING"

    .line 1166
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private onVvmGreetingUpdateSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1138
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 1137
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1139
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1140
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->SUCCESS:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "uploadstatus"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1141
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncaction"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1142
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncdirection"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1143
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    if-eqz v2, :cond_0

    .line 1145
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "res_url"

    .line 1144
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v3, 0x12

    const-string v4, "_bufferdbid=?"

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1151
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 1153
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p1

    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const-string p1, "VVMDATA"

    const-string v2, "GREETING"

    .line 1151
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private onVvmPINUpdateFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1121
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 1120
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1122
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1123
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->FAILURE:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "uploadstatus"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1124
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncaction"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1125
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncdirection"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1126
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error_message"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sim_imsi"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v3, 0x13

    const-string v4, "_bufferdbid=?"

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1130
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 1132
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p1

    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const-string p1, "VVMDATA"

    const-string v2, "PIN"

    .line 1130
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private onVvmPINUpdateSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1105
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 1104
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1106
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1107
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->SUCCESS:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "uploadstatus"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1108
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncaction"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1109
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncdirection"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sim_imsi"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v3, 0x13

    const-string v4, "_bufferdbid=?"

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1113
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 1115
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p1

    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const-string p1, "VVMDATA"

    const-string v2, "PIN"

    .line 1113
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private onVvmProfileUpdateFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1190
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 1189
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1191
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1192
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->FAILURE:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "uploadstatus"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1193
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncaction"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1194
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncdirection"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1195
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sim_imsi"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v3, 0x14

    const-string v4, "_bufferdbid=?"

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1198
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 1200
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p1

    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const-string p1, "VVMDATA"

    const-string v2, "PROFILE"

    .line 1198
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private onVvmProfileUpdateSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1174
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 1173
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1175
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1176
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->SUCCESS:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "uploadstatus"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1177
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncaction"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1178
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncdirection"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1179
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sim_imsi"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v3, 0x14

    const-string v4, "_bufferdbid=?"

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1182
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 1184
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p1

    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const-string p1, "VVMDATA"

    const-string v2, "PROFILE"

    .line 1182
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private parseDownloadedVvmAttributes(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;
    .locals 5

    .line 266
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 270
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 271
    :goto_0
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 272
    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v2, "cosname"

    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->COSName:Ljava/lang/String;

    goto/16 :goto_2

    .line 277
    :cond_2
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v3, "isblocked"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->IsBlocked:Ljava/lang/String;

    goto/16 :goto_2

    .line 279
    :cond_3
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v3, "language"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 280
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->Language:Ljava/lang/String;

    goto/16 :goto_2

    .line 281
    :cond_4
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v3, "nut"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 282
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->NUT:Ljava/lang/String;

    goto :goto_2

    .line 283
    :cond_5
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string/jumbo v3, "vvmon"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 284
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->VVMOn:Ljava/lang/String;

    goto :goto_2

    .line 285
    :cond_6
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v3, "EmailAddress"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    .line 286
    :goto_1
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_8

    .line 287
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 289
    :cond_7
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v3, "V2t_Language"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 290
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->V2t_Language:Ljava/lang/String;

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-object p0

    .line 267
    :cond_a
    :goto_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string p1, "parseDownloadedVvmAttributes: invalid profile"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private parseDownloadedVvmQuotaAttributes(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;)Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;
    .locals 5

    .line 297
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 301
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;-><init>(Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes-IA;)V

    const/4 v1, 0x0

    move v2, v1

    .line 302
    :goto_0
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 303
    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v3, "TotalStorage"

    .line 306
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->TotalStorage:J

    goto :goto_1

    .line 308
    :cond_2
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v4, "OccupiedStorage"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->OccupiedStorage:J

    goto :goto_1

    .line 310
    :cond_3
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v4, "VMMessagesQuota"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 311
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->VMMessagesQuota:I

    goto :goto_1

    .line 312
    :cond_4
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v4, "VMOccupiedMessages"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 313
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->VMOccupiedMessages:I

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 316
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total Storage "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->TotalStorage:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " OccupiedStorage "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->OccupiedStorage:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " VMMessagesQuota "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->VMMessagesQuota:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " VMOccupiedMessages "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->VMOccupiedMessages:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 298
    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string p1, "parseDownloadedVvmQuotaAttributes: invalid profile"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private setVVMImportanceSensitivity(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Landroid/content/ContentValues;)V
    .locals 3

    .line 399
    sget-object p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->INVALID:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    .line 400
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->INVALID:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    .line 402
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SENSITIVITY:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "PERSONAL"

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->PERSONAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    goto :goto_0

    .line 405
    :cond_0
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SENSITIVITY:Ljava/lang/String;

    const-string v2, "PRIVATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->PRIVATE:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    goto :goto_0

    .line 407
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SENSITIVITY:Ljava/lang/String;

    const-string v2, "CONFIDENTIAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 408
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->CONFIDENTIAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    .line 412
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IMPORTANCE:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "NORMAL"

    .line 413
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 414
    sget-object p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->NORMAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    goto :goto_1

    .line 415
    :cond_3
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IMPORTANCE:Ljava/lang/String;

    const-string v1, "HIGH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 416
    sget-object p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->HIGH:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    .line 419
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "importance"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sensitivity"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleDownLoadMessageResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 3

    .line 963
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownLoadMessageResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 964
    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->OBJECT_NOT_FOUND:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 965
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

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

.method public handleNormalSyncDownloadedVVMGreeting(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V
    .locals 10

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNormalSyncDownloadedVVMGreeting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 529
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 530
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 529
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmGreetingBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 531
    :try_start_0
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 532
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "_bufferdbid"

    .line 534
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 533
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 535
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "syncaction"

    .line 536
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "syncdirection"

    .line 537
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "uploadstatus"

    .line 538
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->SUCCESS:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "_bufferdbid=?"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 540
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 541
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v7, 0x12

    invoke-virtual {v6, v7, p1, v5, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 543
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const-string v2, "VVMDATA"

    const-string v5, "GREETING"

    invoke-virtual {p1, v2, v5, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 547
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v3, p1, v8, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmGreetingUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)J

    move-result-wide v5

    .line 548
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v4, 0x12

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 552
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 553
    :cond_1
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 554
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    .line 529
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
.end method

.method public handleNormalSyncDownloadedVVMMessage(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V
    .locals 13

    .line 792
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNormalSyncDownloadedVVMMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 794
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryVVMwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 795
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "_bufferdbid"

    .line 797
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 796
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 798
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "syncaction"

    .line 799
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "syncdirection"

    .line 800
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 801
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    if-eqz v4, :cond_0

    const-string v5, "payloadurl"

    .line 802
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v4, "_bufferdbid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 805
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 806
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 807
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v6, 0x11

    invoke-virtual {p1, v6, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 809
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v7, 0x11

    int-to-long v8, v2

    const/4 v10, 0x0

    iget-object v12, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 794
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
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
    if-eqz v1, :cond_2

    .line 813
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 814
    :cond_2
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 815
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    return-void
.end method

.method public handleObjectVvmGreetingCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleObjectVvmGreetingCloudSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :try_start_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v2, 0x12

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 518
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmGreetingUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 520
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method public handleObjectVvmMessageCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const-string v1, "flagRead"

    const-string/jumbo v2, "syncdirection"

    const-string/jumbo v3, "syncaction"

    .line 424
    iget-object v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleObjectVvmMessageCloudSearch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mIsGoforwardSync: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :try_start_0
    iget-object v4, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 436
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    .line 435
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 437
    :try_start_1
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x1

    if-eqz v13, :cond_9

    .line 438
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "_bufferdbid"

    .line 440
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 439
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v14, v6

    const-string v6, "_id"

    .line 441
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 443
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 442
    invoke-static {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v9

    .line 445
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 444
    invoke-static {v11}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v11

    const-string v12, "_bufferdbid=?"

    new-array v4, v5, [Ljava/lang/String;

    .line 447
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    const/4 v5, 0x0

    aput-object v16, v4, v5

    .line 448
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 449
    new-instance v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-wide/from16 v18, v14

    sget-object v14, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v15, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v7, v14, v15}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    const/4 v14, 0x0

    .line 451
    iput-boolean v14, v7, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    .line 453
    invoke-direct {v10, v0, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->setVVMImportanceSensitivity(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Landroid/content/ContentValues;)V

    .line 455
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v16, v7

    .line 457
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v21, v13

    :try_start_2
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v7, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    :goto_0
    move-object v1, v7

    goto :goto_1

    .line 459
    :cond_1
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v9, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v9, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 460
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v7, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-nez v14, :cond_0

    .line 464
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v11, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 467
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 470
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-ne v14, v0, :cond_5

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 471
    invoke-virtual {v11, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-ge v6, v0, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, v15

    .line 478
    :goto_1
    invoke-virtual {v15, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 479
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v15, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    move v13, v14

    move-wide/from16 v6, v18

    move-object v14, v0

    move-wide/from16 v16, v6

    move-object/from16 v18, v11

    move-object/from16 v19, v9

    move-object/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v0

    goto :goto_2

    :cond_7
    move v13, v14

    move-wide/from16 v6, v18

    move-object/from16 v0, v16

    .line 483
    :goto_2
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "flagSet.mIsChanged : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " flagSet.mAction: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " local db read: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", origDir: "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " origAction: "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-boolean v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_8

    .line 488
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v5, v12, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v5, 0x11

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-wide v3, v6

    move v6, v9

    move/from16 v7, p2

    move-object v9, v11

    .line 492
    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_3

    .line 496
    :cond_8
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v5, v12, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_3
    const-wide/16 v11, -0x1

    goto :goto_4

    :cond_9
    move-object/from16 v21, v13

    .line 500
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string v2, "handleObjectVvmMessageCloudSearch: vvm not found: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/16 v2, 0x11

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 503
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v8, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertVvmMessageUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v11, v0

    :goto_4
    if-eqz v21, :cond_b

    .line 505
    :try_start_3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v21, v13

    :goto_5
    move-object v1, v0

    if-eqz v21, :cond_a

    .line 435
    :try_start_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    throw v1
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    const-wide/16 v11, -0x1

    .line 506
    :goto_7
    iget-object v1, v10, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_8
    return-wide v11
.end method

.method public handleSyncSummaryComplete(Ljava/lang/String;)V
    .locals 10

    .line 1007
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->getValidVVMQuotaRowID()J

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-lez v0, :cond_0

    .line 1010
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 1011
    iget-object v8, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v2, 0x24

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v9

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendGetVVMQuotaInfo(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_0
    return-void
.end method

.method public handleUpdateVVMResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateVVMResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 368
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p2

    iget p2, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 376
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onVvmProfileUpdateSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 373
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onVvmPINUpdateSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 370
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onVvmGreetingUpdateSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p2

    iget p2, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 390
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onVvmProfileUpdateFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 387
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onVvmPINUpdateFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 384
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onVvmGreetingUpdateFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public handleVvmProfileDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 8

    .line 120
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getVvmServiceProfile()Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getVvmServiceProfile()Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->parseDownloadedVvmAttributes(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v3

    iget-wide v3, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 129
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleVvmProfileDownloaded  nut value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->NUT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 131
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->VVMOn:Ljava/lang/String;

    const-string/jumbo v6, "vvmon"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->IsBlocked:Ljava/lang/String;

    const-string v6, "isblocked"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->COSName:Ljava/lang/String;

    const-string v6, "cos"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->Language:Ljava/lang/String;

    const-string v6, "language"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->NUT:Ljava/lang/String;

    const-string v6, "nut"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v6, "email_addr1"

    if-ne v5, v1, :cond_2

    .line 137
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    .line 139
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "email_addr2"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleVvmProfileDownloaded nut value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->NUT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", COSName value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->COSName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", V2t_Language: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->V2t_Language:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", EmailAddress count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", VVMOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->VVMOn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", IsBlocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->IsBlocked:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v4, "syncaction"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v4, "syncdirection"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "sim_imsi"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->V2t_Language:Ljava/lang/String;

    const-string/jumbo v1, "v2t_language"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v1, 0x14

    const-string v4, "_bufferdbid=?"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 155
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p1

    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const-string p1, "VVMDATA"

    const-string v2, "PROFILE"

    .line 152
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    :goto_1
    return-void
.end method

.method public handleVvmQuotaInfo(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 6

    .line 160
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getVvmFolders()Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getVvmFolders()Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->parseDownloadedVvmQuotaAttributes(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;)Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "_bufferdbid=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 168
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-wide v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 169
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 170
    iget-wide v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->TotalStorage:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "TotalStorage"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    iget-wide v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->OccupiedStorage:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "OccupiedStorage"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    iget v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->VMMessagesQuota:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "VMMessagesQuota"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    iget v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->VMOccupiedMessages:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "VMOccupiedMessages"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v4, "syncaction"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "LastUpdated"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    const-string v4, "linenum"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "sim_imsi"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v4, 0x24

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const-string v1, "VVMDATA"

    const-string v2, "VVMQUOTA"

    .line 185
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p1

    iget-wide v3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 182
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 187
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyMsgAppDeleteFail(IJLjava/lang/String;)V
    .locals 3

    .line 1260
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

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

    const/16 p4, 0x11

    if-ne p1, p4, :cond_0

    .line 1262
    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 1263
    new-instance p4, Lcom/google/gson/JsonObject;

    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1264
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "id"

    invoke-virtual {p4, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p1, p4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 1266
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 1268
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VVMDATA"

    .line 1266
    invoke-interface {p0, p2, p2, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3

    .line 970
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p2, 0x5

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 985
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onDownloadRequestFromApp(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;)V

    goto :goto_0

    .line 982
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handledeleteVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 979
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleUnReadVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 976
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleReadVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 973
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleUploadVvm(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;)V

    :goto_0
    return-void
.end method

.method public onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onGreetingAllPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 12

    if-eqz p1, :cond_6

    .line 918
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto/16 :goto_4

    .line 921
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    .line 922
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v3

    iget v3, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-wide v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 921
    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 923
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;

    invoke-interface {v0}, Ljavax/mail/Part;->getInputStream()Ljava/io/InputStream;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v10, :cond_3

    .line 924
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "_bufferdbid"

    .line 926
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 925
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v4, "linenum"

    .line 928
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 927
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v4, "_bufferdbid= ?"

    new-array v2, v2, [Ljava/lang/String;

    .line 930
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 931
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v5, 0x0

    :try_start_3
    const-string v0, "content_uri"

    .line 935
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 934
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 938
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-static {v7, v11, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveInputStreamtoAppUri(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)J

    move-result-wide v5
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 941
    :try_start_4
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 943
    :cond_1
    :goto_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->UpdatePayload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v0, v7, v9}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    const-string/jumbo v7, "syncdirection"

    .line 946
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "syncaction"

    .line 947
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "size"

    .line 948
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 950
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v6, 0x12

    invoke-virtual {v5, v6, v3, v4, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 952
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v3, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/16 v5, 0x12

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, v0

    move v7, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_2

    .line 921
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1

    :cond_3
    :goto_2
    if-eqz v11, :cond_4

    .line 956
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_4
    if-eqz v10, :cond_6

    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljavax/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v10, :cond_5

    .line 921
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v1
    :try_end_9
    .catch Ljavax/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v0

    .line 957
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_4
    return-void
.end method

.method public onNotificationReceived(Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 85
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 86
    :goto_0
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 87
    aget-object v2, v2, v1

    .line 88
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    if-eqz v3, :cond_1

    .line 89
    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataContractType:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_0

    .line 91
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleCloudNotifyChangedObjVVM(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    :cond_0
    const/16 v5, 0x12

    if-ne v4, v5, :cond_1

    .line 94
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleCloudNotifyChangedObjGreeting(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 97
    :cond_1
    :goto_1
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-eqz v3, :cond_2

    .line 98
    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataContractType:I

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)V

    .line 100
    :cond_2
    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->notifyObject:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;

    if-eqz v2, :cond_3

    .line 101
    iget v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataContractType:I

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mLine:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleCloudNotifyObject(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_4
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_5
    return-void
.end method

.method public onNotifyObjectReceived(Ljava/lang/String;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->insertDefaultGreetingValues(Ljava/lang/String;)J

    move-result-wide v0

    .line 113
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const-string p1, "VVMDATA"

    const-string v2, "GREETING"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;)V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onVvmAllPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 13

    const-string/jumbo v2, "text"

    if-eqz p1, :cond_7

    .line 829
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    goto/16 :goto_4

    .line 832
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    .line 833
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v5

    iget-wide v5, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 832
    invoke-virtual {v0, v4, v5, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v10, :cond_6

    .line 834
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "_bufferdbid"

    .line 836
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 835
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v4, "linenum"

    .line 838
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 837
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v4, "_bufferdbid= ?"

    new-array v3, v3, [Ljava/lang/String;

    .line 840
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v3, v5

    .line 841
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-wide/16 v11, 0x0

    .line 844
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    .line 845
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;

    invoke-interface {v0}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x0

    .line 848
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 849
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;

    invoke-interface {v0}, Ljavax/mail/Part;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 850
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    const-string v9, "onVvmAllPayloadDownloaded VM transcription present"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-direct {p0, v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->getTextDatafromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v9, "audio"

    .line 852
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    const-string v0, "content_uri"

    .line 855
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 854
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 858
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/mail/BodyPart;

    invoke-interface {v9}, Ljavax/mail/Part;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 859
    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-static {v9, v7, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveInputStreamtoAppUri(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)J

    move-result-wide v11
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 862
    :try_start_4
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 867
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 869
    :cond_4
    throw v0

    .line 872
    :cond_5
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->UpdatePayload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v2, v0, v5}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    const-string/jumbo v0, "syncdirection"

    .line 874
    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "syncaction"

    .line 875
    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "size"

    .line 876
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 877
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v5, 0x11

    invoke-virtual {v0, v5, v6, v4, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 879
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget-wide v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v7, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 832
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    :cond_6
    :goto_3
    if-eqz v10, :cond_7

    .line 883
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljavax/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 884
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_4
    return-void
.end method

.method public queryPendingVVMUrlFetch(I)I
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 630
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    .line 629
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryMessageBySyncAction(II)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 632
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p0

    :catchall_0
    move-exception p0

    .line 629
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

    .line 635
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public queryToDeviceUnDownloadedGreeting(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 0

    .line 1256
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryToDeviceUnDownloadedGreeting(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnDownloadedVvm(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 0

    .line 1242
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryToDeviceUnDownloadedVvm(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryVVMPDUActionStatus(J)I
    .locals 1

    .line 1247
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1248
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "syncaction"

    .line 1249
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1247
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

    .line 1251
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p1
.end method

.method public queryVVMwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;->queryVvmMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public wipeOutData(ILjava/lang/String;)V
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/VVMQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->wipeOutData(ILjava/lang/String;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method
